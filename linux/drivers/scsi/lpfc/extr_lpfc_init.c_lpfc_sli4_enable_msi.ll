; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_enable_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_enable_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.lpfc_hba* }
%struct.TYPE_7__ = type { i32 }

@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@PCI_IRQ_AFFINITY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"0487 PCI enable MSI mode success.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"0488 PCI enable MSI mode failed (%d)\0A\00", align 1
@lpfc_sli4_intr_handler = common dso_local global i32 0, align 4
@LPFC_DRIVER_NAME = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"0490 MSI request_irq failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_enable_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_enable_msi(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = load i32, i32* @PCI_IRQ_MSI, align 4
  %10 = load i32, i32* @PCI_IRQ_AFFINITY, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_7__* %8, i32 1, i32 1, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load i32, i32* @LOG_INIT, align 4
  %19 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load i32, i32* @LOG_INIT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ -1, %30 ]
  store i32 %32, i32* %2, align 4
  br label %86

33:                                               ; preds = %15
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @lpfc_sli4_intr_handler, align 4
  %40 = load i32, i32* @LPFC_DRIVER_NAME, align 4
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = call i32 @request_irq(i32 %38, i32 %39, i32 0, i32 %40, %struct.lpfc_hba* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = call i32 @pci_free_irq_vectors(%struct.TYPE_7__* %48)
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = load i32, i32* @KERN_WARNING, align 4
  %52 = load i32, i32* @LOG_INIT, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %86

56:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %82, %56
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %64, i32* %72, align 8
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store %struct.lpfc_hba* %73, %struct.lpfc_hba** %81, align 8
  br label %82

82:                                               ; preds = %63
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %57

85:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %45, %31
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.lpfc_hba*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
