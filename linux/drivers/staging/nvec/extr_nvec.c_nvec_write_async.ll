; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_write_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_write_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_chip = type { i32, i32, i32 }
%struct.nvec_msg = type { i16*, i16, i32 }

@NVEC_MSG_TX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvec_write_async(%struct.nvec_chip* %0, i8* %1, i16 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvec_chip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.nvec_msg*, align 8
  %9 = alloca i64, align 8
  store %struct.nvec_chip* %0, %struct.nvec_chip** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  %10 = load %struct.nvec_chip*, %struct.nvec_chip** %5, align 8
  %11 = load i32, i32* @NVEC_MSG_TX, align 4
  %12 = call %struct.nvec_msg* @nvec_msg_alloc(%struct.nvec_chip* %10, i32 %11)
  store %struct.nvec_msg* %12, %struct.nvec_msg** %8, align 8
  %13 = load %struct.nvec_msg*, %struct.nvec_msg** %8, align 8
  %14 = icmp ne %struct.nvec_msg* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load i16, i16* %7, align 2
  %20 = load %struct.nvec_msg*, %struct.nvec_msg** %8, align 8
  %21 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %20, i32 0, i32 0
  %22 = load i16*, i16** %21, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 0
  store i16 %19, i16* %23, align 2
  %24 = load %struct.nvec_msg*, %struct.nvec_msg** %8, align 8
  %25 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %24, i32 0, i32 0
  %26 = load i16*, i16** %25, align 8
  %27 = getelementptr inbounds i16, i16* %26, i64 1
  %28 = load i8*, i8** %6, align 8
  %29 = load i16, i16* %7, align 2
  %30 = call i32 @memcpy(i16* %27, i8* %28, i16 signext %29)
  %31 = load i16, i16* %7, align 2
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %32, 1
  %34 = trunc i32 %33 to i16
  %35 = load %struct.nvec_msg*, %struct.nvec_msg** %8, align 8
  %36 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %35, i32 0, i32 1
  store i16 %34, i16* %36, align 8
  %37 = load %struct.nvec_chip*, %struct.nvec_chip** %5, align 8
  %38 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %37, i32 0, i32 1
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.nvec_msg*, %struct.nvec_msg** %8, align 8
  %42 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %41, i32 0, i32 2
  %43 = load %struct.nvec_chip*, %struct.nvec_chip** %5, align 8
  %44 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %43, i32 0, i32 2
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load %struct.nvec_chip*, %struct.nvec_chip** %5, align 8
  %47 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %46, i32 0, i32 1
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.nvec_chip*, %struct.nvec_chip** %5, align 8
  %51 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %50, i32 0, i32 0
  %52 = call i32 @schedule_work(i32* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %18, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.nvec_msg* @nvec_msg_alloc(%struct.nvec_chip*, i32) #1

declare dso_local i32 @memcpy(i16*, i8*, i16 signext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
