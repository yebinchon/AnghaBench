; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_free_all_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_free_all_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32, i32, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*)* @ipr_free_all_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_free_all_resources(%struct.ipr_ioa_cfg* %0) #0 {
  %2 = alloca %struct.ipr_ioa_cfg*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %2, align 8
  %4 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %4, i32 0, i32 3
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @ENTER, align 4
  %8 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %9 = call i32 @ipr_free_irqs(%struct.ipr_ioa_cfg* %8)
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %11 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %16 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @destroy_workqueue(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %21 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iounmap(i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_release_regions(%struct.pci_dev* %24)
  %26 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %27 = call i32 @ipr_free_mem(%struct.ipr_ioa_cfg* %26)
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @scsi_host_put(i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @pci_disable_device(%struct.pci_dev* %32)
  %34 = load i32, i32* @LEAVE, align 4
  ret void
}

declare dso_local i32 @ipr_free_irqs(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @ipr_free_mem(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
