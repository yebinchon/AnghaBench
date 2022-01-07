; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_add_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_add_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@HOST_CMDS_BUF_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_add_cmd(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %14 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 3
  %19 = shl i32 %18, 30
  %20 = load i32, i32* %12, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 16383
  %24 = shl i32 %23, 16
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 %27, 8
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %35 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %40 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HOST_CMDS_BUF_LEN, align 4
  %43 = sdiv i32 %42, 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %5
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %50 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  store i32 %47, i32* %54, align 4
  br label %55

55:                                               ; preds = %45, %5
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %57 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
