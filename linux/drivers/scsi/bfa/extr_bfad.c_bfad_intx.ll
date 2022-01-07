; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_intx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_intx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.list_head = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_intx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.list_head, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bfad_s*
  store %struct.bfad_s* %11, %struct.bfad_s** %6, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 1
  %18 = call i32 @bfa_intx(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 0
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %54

27:                                               ; preds = %2
  %28 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %29 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %28, i32 0, i32 1
  %30 = call i32 @bfa_comp_deq(i32* %29, %struct.list_head* %7)
  %31 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = call i32 @list_empty(%struct.list_head* %7)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %27
  %38 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %39 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %38, i32 0, i32 1
  %40 = call i32 @bfa_comp_process(i32* %39, %struct.list_head* %7)
  %41 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %42 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %46 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %45, i32 0, i32 1
  %47 = call i32 @bfa_comp_free(i32* %46, %struct.list_head* %7)
  %48 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %49 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %48, i32 0, i32 0
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %37, %27
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_intx(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_comp_deq(i32*, %struct.list_head*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @bfa_comp_process(i32*, %struct.list_head*) #1

declare dso_local i32 @bfa_comp_free(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
