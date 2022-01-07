; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_isr.c_snic_set_intr_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_isr.c_snic_set_intr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SNIC_CQ_IO_CMPL_MAX = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@SNIC_MSIX_ERR_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Using MSI-X Interrupts\0A\00", align 1
@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i32 0, align 4
@VNIC_DEV_INTR_MODE_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_set_intr_mode(%struct.snic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %3, align 8
  %7 = load %struct.snic*, %struct.snic** %3, align 8
  %8 = getelementptr inbounds %struct.snic, %struct.snic* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @SNIC_CQ_IO_CMPL_MAX, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %12, %13
  %15 = add i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snic*, %struct.snic** %3, align 8
  %17 = getelementptr inbounds %struct.snic, %struct.snic* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load i32, i32* @SNIC_CQ_IO_CMPL_MAX, align 4
  %21 = add i32 %19, %20
  %22 = load %struct.snic*, %struct.snic** %3, align 8
  %23 = getelementptr inbounds %struct.snic, %struct.snic* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = icmp ugt i32 %21, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUILD_BUG_ON(i32 %27)
  %29 = load %struct.snic*, %struct.snic** %3, align 8
  %30 = getelementptr inbounds %struct.snic, %struct.snic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %1
  %35 = load %struct.snic*, %struct.snic** %3, align 8
  %36 = getelementptr inbounds %struct.snic, %struct.snic* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %38, %39
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %1
  br label %77

43:                                               ; preds = %34
  %44 = load %struct.snic*, %struct.snic** %3, align 8
  %45 = getelementptr inbounds %struct.snic, %struct.snic* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %50 = call i64 @pci_alloc_irq_vectors(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %77

53:                                               ; preds = %43
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.snic*, %struct.snic** %3, align 8
  %56 = getelementptr inbounds %struct.snic, %struct.snic* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %57, %58
  %60 = load %struct.snic*, %struct.snic** %3, align 8
  %61 = getelementptr inbounds %struct.snic, %struct.snic* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.snic*, %struct.snic** %3, align 8
  %64 = getelementptr inbounds %struct.snic, %struct.snic* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @SNIC_MSIX_ERR_NOTIFY, align 4
  %66 = load %struct.snic*, %struct.snic** %3, align 8
  %67 = getelementptr inbounds %struct.snic, %struct.snic* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.snic*, %struct.snic** %3, align 8
  %69 = getelementptr inbounds %struct.snic, %struct.snic* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SNIC_ISR_DBG(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.snic*, %struct.snic** %3, align 8
  %73 = getelementptr inbounds %struct.snic, %struct.snic* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @VNIC_DEV_INTR_MODE_MSIX, align 4
  %76 = call i32 @svnic_dev_set_intr_mode(i32 %74, i32 %75)
  store i32 0, i32* %2, align 4
  br label %85

77:                                               ; preds = %52, %42
  %78 = load %struct.snic*, %struct.snic** %3, align 8
  %79 = getelementptr inbounds %struct.snic, %struct.snic* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @VNIC_DEV_INTR_MODE_UNKNOWN, align 4
  %82 = call i32 @svnic_dev_set_intr_mode(i32 %80, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %77, %53
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @pci_alloc_irq_vectors(i32, i32, i32, i32) #1

declare dso_local i32 @SNIC_ISR_DBG(i32, i8*) #1

declare dso_local i32 @svnic_dev_set_intr_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
