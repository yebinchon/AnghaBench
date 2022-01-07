; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_destroy_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_destroy_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i64, %struct.megasas_irq_context*, i32 }
%struct.megasas_irq_context = type { i32 }

@MFI_SERIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_destroy_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_destroy_irqs(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.megasas_irq_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %6 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %7 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 1, %14 ]
  store i32 %16, i32* %4, align 4
  %17 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %18 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MFI_SERIES, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %29 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %28, i32 0, i32 2
  %30 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %30, i64 %32
  store %struct.megasas_irq_context* %33, %struct.megasas_irq_context** %5, align 8
  %34 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %5, align 8
  %35 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %34, i32 0, i32 0
  %36 = call i32 @irq_poll_disable(i32* %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %23

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %15
  %42 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %43 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %66, %46
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %50 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %55 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pci_irq_vector(i32 %56, i32 %57)
  %59 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %60 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %59, i32 0, i32 2
  %61 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %61, i64 %63
  %65 = call i32 @free_irq(i32 %58, %struct.megasas_irq_context* %64)
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %47

69:                                               ; preds = %47
  br label %80

70:                                               ; preds = %41
  %71 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %72 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pci_irq_vector(i32 %73, i32 0)
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %76 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %75, i32 0, i32 2
  %77 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %76, align 8
  %78 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %77, i64 0
  %79 = call i32 @free_irq(i32 %74, %struct.megasas_irq_context* %78)
  br label %80

80:                                               ; preds = %70, %69
  ret void
}

declare dso_local i32 @irq_poll_disable(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.megasas_irq_context*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
