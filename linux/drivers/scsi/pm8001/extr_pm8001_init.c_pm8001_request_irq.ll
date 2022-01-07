; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { %struct.pm8001_hba_info*, i64 }
%struct.pci_dev = type { i32, i64 }

@pm8001_interrupt_handler_intx = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_request_irq(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  %5 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %6 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %5, i32 0, i32 2
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  br label %8

8:                                                ; preds = %1
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %10 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %16 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.pm8001_hba_info* %14, %struct.pm8001_hba_info** %19, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @pm8001_interrupt_handler_intx, align 4
  %24 = load i32, i32* @IRQF_SHARED, align 4
  %25 = load i32, i32* @DRV_NAME, align 4
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %27 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SHOST_TO_SAS_HA(i32 %28)
  %30 = call i32 @request_irq(i32 %22, i32 %23, i32 %24, i32 %25, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SHOST_TO_SAS_HA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
