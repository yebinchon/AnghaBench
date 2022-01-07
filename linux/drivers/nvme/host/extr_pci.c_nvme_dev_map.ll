; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dev_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_dev_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"nvme\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NVME_REG_DBS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*)* @nvme_dev_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_dev_map(%struct.nvme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  %5 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pci_dev* @to_pci_dev(i32 %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i64 @pci_request_mem_regions(%struct.pci_dev* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %17 = load i64, i64* @NVME_REG_DBS, align 8
  %18 = add nsw i64 %17, 4096
  %19 = call i64 @nvme_remap_bar(%struct.nvme_dev* %16, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %23

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %28

23:                                               ; preds = %21
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_release_mem_regions(%struct.pci_dev* %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %22, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @pci_request_mem_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @nvme_remap_bar(%struct.nvme_dev*, i64) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
