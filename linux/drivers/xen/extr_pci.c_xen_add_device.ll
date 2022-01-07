; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pci.c_xen_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pci.c_xen_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32, %struct.pci_bus*, i64, i32, %struct.pci_dev* }
%struct.pci_bus = type { i32, %struct.pci_bus*, i32* }
%struct.anon = type { %struct.physdev_pci_device_add, i32 }
%struct.physdev_pci_device_add = type { i64*, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.physdev_manage_pci_ext = type { i64*, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.physdev_manage_pci = type { i64*, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }

@pci_seg_supported = common dso_local global i32 0, align 4
@XEN_PCI_DEV_EXTFN = common dso_local global i32 0, align 4
@PHYSDEVOP_pci_device_add = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@PHYSDEVOP_manage_pci_add_ext = common dso_local global i32 0, align 4
@PHYSDEVOP_manage_pci_add = common dso_local global i32 0, align 4
@XEN_PCI_DEV_PXM = common dso_local global i32 0, align 4
@XEN_PCI_DEV_VIRTFN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @xen_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.anon, align 8
  %7 = alloca %struct.physdev_pci_device_add*, align 8
  %8 = alloca %struct.physdev_manage_pci_ext, align 8
  %9 = alloca %struct.physdev_manage_pci, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.pci_dev* @to_pci_dev(%struct.device* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load i32, i32* @pci_seg_supported, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %16 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %15, i32 0, i32 0
  store i64* null, i64** %16, align 8
  %17 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %15, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %15, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %15, i32 0, i32 3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %15, i32 0, i32 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load %struct.pci_bus*, %struct.pci_bus** %25, align 8
  %27 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %23, align 4
  %29 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %15, i32 0, i32 5
  %30 = bitcast %struct.TYPE_2__* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false)
  %31 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %15, i32 0, i32 6
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %15, i32 0, i32 7
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 1
  %35 = load %struct.pci_bus*, %struct.pci_bus** %34, align 8
  %36 = call i64 @pci_domain_nr(%struct.pci_bus* %35)
  store i64 %36, i64* %32, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  store %struct.physdev_pci_device_add* %38, %struct.physdev_pci_device_add** %7, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = load %struct.pci_bus*, %struct.pci_bus** %40, align 8
  %42 = call i64 @pci_ari_enabled(%struct.pci_bus* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %14
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @PCI_SLOT(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @XEN_PCI_DEV_EXTFN, align 4
  %52 = load %struct.physdev_pci_device_add*, %struct.physdev_pci_device_add** %7, align 8
  %53 = getelementptr inbounds %struct.physdev_pci_device_add, %struct.physdev_pci_device_add* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %44, %14
  %55 = load i32, i32* @PHYSDEVOP_pci_device_add, align 4
  %56 = load %struct.physdev_pci_device_add*, %struct.physdev_pci_device_add** %7, align 8
  %57 = call i32 @HYPERVISOR_physdev_op(i32 %55, %struct.physdev_pci_device_add* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ENOSYS, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %120

64:                                               ; preds = %54
  store i32 0, i32* @pci_seg_supported, align 4
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 1
  %68 = load %struct.pci_bus*, %struct.pci_bus** %67, align 8
  %69 = call i64 @pci_domain_nr(%struct.pci_bus* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOSYS, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %118

74:                                               ; preds = %65
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 1
  %77 = load %struct.pci_bus*, %struct.pci_bus** %76, align 8
  %78 = call i64 @pci_ari_enabled(%struct.pci_bus* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %74
  %81 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @PCI_SLOT(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = bitcast %struct.physdev_manage_pci_ext* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %87, i8 0, i64 48, i1 false)
  %88 = getelementptr inbounds %struct.physdev_manage_pci_ext, %struct.physdev_manage_pci_ext* %8, i32 0, i32 2
  store i32 1, i32* %88, align 4
  %89 = getelementptr inbounds %struct.physdev_manage_pci_ext, %struct.physdev_manage_pci_ext* %8, i32 0, i32 3
  %90 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %89, align 8
  %93 = getelementptr inbounds %struct.physdev_manage_pci_ext, %struct.physdev_manage_pci_ext* %8, i32 0, i32 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 1
  %96 = load %struct.pci_bus*, %struct.pci_bus** %95, align 8
  %97 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %93, align 4
  %99 = load i32, i32* @PHYSDEVOP_manage_pci_add_ext, align 4
  %100 = bitcast %struct.physdev_manage_pci_ext* %8 to %struct.physdev_pci_device_add*
  %101 = call i32 @HYPERVISOR_physdev_op(i32 %99, %struct.physdev_pci_device_add* %100)
  store i32 %101, i32* %4, align 4
  br label %117

102:                                              ; preds = %80, %74
  %103 = bitcast %struct.physdev_manage_pci* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %103, i8 0, i64 48, i1 false)
  %104 = getelementptr inbounds %struct.physdev_manage_pci, %struct.physdev_manage_pci* %9, i32 0, i32 3
  %105 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %104, align 8
  %108 = getelementptr inbounds %struct.physdev_manage_pci, %struct.physdev_manage_pci* %9, i32 0, i32 4
  %109 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 1
  %111 = load %struct.pci_bus*, %struct.pci_bus** %110, align 8
  %112 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %108, align 4
  %114 = load i32, i32* @PHYSDEVOP_manage_pci_add, align 4
  %115 = bitcast %struct.physdev_manage_pci* %9 to %struct.physdev_pci_device_add*
  %116 = call i32 @HYPERVISOR_physdev_op(i32 %114, %struct.physdev_pci_device_add* %115)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %102, %86
  br label %118

118:                                              ; preds = %117, %71
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %62
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i64 @pci_ari_enabled(%struct.pci_bus*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i32 @HYPERVISOR_physdev_op(i32, %struct.physdev_pci_device_add*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
