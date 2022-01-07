; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_free_ctrl_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_free_ctrl_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, i32, i64, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@MFI_SERIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_free_ctrl_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_free_ctrl_mem(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %3 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %4 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @kfree(i32 %5)
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %8 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MFI_SERIES, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %14 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %23 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %26 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dma_free_coherent(i32* %21, i32 4, i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %17, %12
  %30 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %31 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %36 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %40 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %43 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_free_coherent(i32* %38, i32 4, i64 %41, i32 %44)
  br label %46

46:                                               ; preds = %34, %29
  br label %50

47:                                               ; preds = %1
  %48 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %49 = call i32 @megasas_free_fusion_context(%struct.megasas_instance* %48)
  br label %50

50:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @megasas_free_fusion_context(%struct.megasas_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
