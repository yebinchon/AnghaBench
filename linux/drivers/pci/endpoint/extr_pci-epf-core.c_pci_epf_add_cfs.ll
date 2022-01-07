; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_add_cfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_add_cfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf_driver = type { i32, %struct.pci_epf_device_id* }
%struct.pci_epf_device_id = type { i64* }
%struct.config_group = type { i32 }

@CONFIG_PCI_ENDPOINT_CONFIGFS = common dso_local global i32 0, align 4
@pci_epf_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epf_driver*)* @pci_epf_add_cfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_epf_add_cfs(%struct.pci_epf_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_epf_driver*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca %struct.pci_epf_device_id*, align 8
  store %struct.pci_epf_driver* %0, %struct.pci_epf_driver** %3, align 8
  %6 = load i32, i32* @CONFIG_PCI_ENDPOINT_CONFIGFS, align 4
  %7 = call i32 @IS_ENABLED(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %3, align 8
  %12 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %11, i32 0, i32 0
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %3, align 8
  %15 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %14, i32 0, i32 1
  %16 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %15, align 8
  store %struct.pci_epf_device_id* %16, %struct.pci_epf_device_id** %5, align 8
  br label %17

17:                                               ; preds = %37, %10
  %18 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.pci_epf_device_id, %struct.pci_epf_device_id* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %17
  %25 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.pci_epf_device_id, %struct.pci_epf_device_id* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = call %struct.config_group* @pci_ep_cfs_add_epf_group(i64* %27)
  store %struct.config_group* %28, %struct.config_group** %4, align 8
  %29 = load %struct.config_group*, %struct.config_group** %4, align 8
  %30 = call i64 @IS_ERR(%struct.config_group* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %3, align 8
  %34 = call i32 @pci_epf_remove_cfs(%struct.pci_epf_driver* %33)
  %35 = load %struct.config_group*, %struct.config_group** %4, align 8
  %36 = call i32 @PTR_ERR(%struct.config_group* %35)
  store i32 %36, i32* %2, align 4
  br label %48

37:                                               ; preds = %24
  %38 = call i32 @mutex_lock(i32* @pci_epf_mutex)
  %39 = load %struct.config_group*, %struct.config_group** %4, align 8
  %40 = getelementptr inbounds %struct.config_group, %struct.config_group* %39, i32 0, i32 0
  %41 = load %struct.pci_epf_driver*, %struct.pci_epf_driver** %3, align 8
  %42 = getelementptr inbounds %struct.pci_epf_driver, %struct.pci_epf_driver* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  %44 = call i32 @mutex_unlock(i32* @pci_epf_mutex)
  %45 = load %struct.pci_epf_device_id*, %struct.pci_epf_device_id** %5, align 8
  %46 = getelementptr inbounds %struct.pci_epf_device_id, %struct.pci_epf_device_id* %45, i32 1
  store %struct.pci_epf_device_id* %46, %struct.pci_epf_device_id** %5, align 8
  br label %17

47:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %32, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.config_group* @pci_ep_cfs_add_epf_group(i64*) #1

declare dso_local i64 @IS_ERR(%struct.config_group*) #1

declare dso_local i32 @pci_epf_remove_cfs(%struct.pci_epf_driver*) #1

declare dso_local i32 @PTR_ERR(%struct.config_group*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
