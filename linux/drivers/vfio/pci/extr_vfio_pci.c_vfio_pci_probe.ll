; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.pci_device_id = type { i32 }
%struct.vfio_pci_device = type { i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.iommu_group = type { i32 }

@PCI_HEADER_TYPE_NORMAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot bind to PF with SR-IOV enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFIO_PCI_NUM_IRQS = common dso_local global i32 0, align 4
@vfio_pci_ops = common dso_local global i32 0, align 4
@disable_idle_d3 = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vfio_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.vfio_pci_device*, align 8
  %7 = alloca %struct.iommu_group*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCI_HEADER_TYPE_NORMAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %122

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i64 @pci_num_vf(%struct.pci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_warn(%struct.pci_dev* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %122

26:                                               ; preds = %17
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = call %struct.iommu_group* @vfio_iommu_group_get(i32* %28)
  store %struct.iommu_group* %29, %struct.iommu_group** %7, align 8
  %30 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %31 = icmp ne %struct.iommu_group* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %122

35:                                               ; preds = %26
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.vfio_pci_device* @kzalloc(i32 32, i32 %36)
  store %struct.vfio_pci_device* %37, %struct.vfio_pci_device** %6, align 8
  %38 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %39 = icmp ne %struct.vfio_pci_device* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = call i32 @vfio_iommu_group_put(%struct.iommu_group* %41, i32* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %122

47:                                               ; preds = %35
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %50 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %49, i32 0, i32 5
  store %struct.pci_dev* %48, %struct.pci_dev** %50, align 8
  %51 = load i32, i32* @VFIO_PCI_NUM_IRQS, align 4
  %52 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %53 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %55 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %54, i32 0, i32 3
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %58 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %57, i32 0, i32 2
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %61 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %60, i32 0, i32 1
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %64 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %63, i32 0, i32 0
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 1
  %68 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %69 = call i32 @vfio_add_group_dev(i32* %67, i32* @vfio_pci_ops, %struct.vfio_pci_device* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %47
  %73 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 1
  %76 = call i32 @vfio_iommu_group_put(%struct.iommu_group* %73, i32* %75)
  %77 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %78 = call i32 @kfree(%struct.vfio_pci_device* %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %122

80:                                               ; preds = %47
  %81 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %82 = call i32 @vfio_pci_reflck_attach(%struct.vfio_pci_device* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 1
  %88 = call i32 @vfio_del_group_dev(i32* %87)
  %89 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 1
  %92 = call i32 @vfio_iommu_group_put(%struct.iommu_group* %89, i32* %91)
  %93 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %94 = call i32 @kfree(%struct.vfio_pci_device* %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %122

96:                                               ; preds = %80
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = call i64 @vfio_pci_is_vga(%struct.pci_dev* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %103 = call i32 @vga_client_register(%struct.pci_dev* %101, %struct.vfio_pci_device* %102, i32* null, i32 (%struct.vfio_pci_device*, i32)* @vfio_pci_set_vga_decode)
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %106 = call i32 @vfio_pci_set_vga_decode(%struct.vfio_pci_device* %105, i32 0)
  %107 = call i32 @vga_set_legacy_decoding(%struct.pci_dev* %104, i32 %106)
  br label %108

108:                                              ; preds = %100, %96
  %109 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %110 = call i32 @vfio_pci_probe_power_state(%struct.vfio_pci_device* %109)
  %111 = load i32, i32* @disable_idle_d3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %108
  %114 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %115 = load i32, i32* @PCI_D0, align 4
  %116 = call i32 @vfio_pci_set_power_state(%struct.vfio_pci_device* %114, i32 %115)
  %117 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %118 = load i32, i32* @PCI_D3hot, align 4
  %119 = call i32 @vfio_pci_set_power_state(%struct.vfio_pci_device* %117, i32 %118)
  br label %120

120:                                              ; preds = %113, %108
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %85, %72, %40, %32, %21, %14
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @pci_num_vf(%struct.pci_dev*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*) #1

declare dso_local %struct.iommu_group* @vfio_iommu_group_get(i32*) #1

declare dso_local %struct.vfio_pci_device* @kzalloc(i32, i32) #1

declare dso_local i32 @vfio_iommu_group_put(%struct.iommu_group*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vfio_add_group_dev(i32*, i32*, %struct.vfio_pci_device*) #1

declare dso_local i32 @kfree(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_pci_reflck_attach(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_del_group_dev(i32*) #1

declare dso_local i64 @vfio_pci_is_vga(%struct.pci_dev*) #1

declare dso_local i32 @vga_client_register(%struct.pci_dev*, %struct.vfio_pci_device*, i32*, i32 (%struct.vfio_pci_device*, i32)*) #1

declare dso_local i32 @vfio_pci_set_vga_decode(%struct.vfio_pci_device*, i32) #1

declare dso_local i32 @vga_set_legacy_decoding(%struct.pci_dev*, i32) #1

declare dso_local i32 @vfio_pci_probe_power_state(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_pci_set_power_state(%struct.vfio_pci_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
