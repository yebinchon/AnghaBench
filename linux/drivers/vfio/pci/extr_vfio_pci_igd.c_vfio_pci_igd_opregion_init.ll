; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_igd.c_vfio_pci_igd_opregion_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_igd.c_vfio_pci_igd_opregion_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i64, i32, i64 }

@OPREGION_PCI_ADDR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@OPREGION_SIZE = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OPREGION_SIGNATURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@VFIO_REGION_TYPE_PCI_VENDOR_TYPE = common dso_local global i32 0, align 4
@VFIO_REGION_SUBTYPE_INTEL_IGD_OPREGION = common dso_local global i32 0, align 4
@vfio_pci_igd_regops = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_READ = common dso_local global i32 0, align 4
@PCI_CAP_ID_INVALID_VIRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*)* @vfio_pci_igd_opregion_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_igd_opregion_init(%struct.vfio_pci_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_pci_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %3, align 8
  %9 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %10 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OPREGION_PCI_ADDR, align 8
  %13 = add nsw i64 %11, %12
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %4, align 8
  %15 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %16 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @OPREGION_PCI_ADDR, align 8
  %19 = call i32 @pci_read_config_dword(i32 %17, i64 %18, i32* %5)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %114

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, -1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %114

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @OPREGION_SIZE, align 4
  %37 = load i32, i32* @MEMREMAP_WB, align 4
  %38 = call i8* @memremap(i32 %35, i32 %36, i32 %37)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %114

44:                                               ; preds = %34
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @OPREGION_SIGNATURE, align 4
  %47 = call i64 @memcmp(i8* %45, i32 %46, i32 16)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @memunmap(i8* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %114

54:                                               ; preds = %44
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr i8, i8* %55, i64 16
  %57 = bitcast i8* %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @memunmap(i8* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %114

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %68, 1024
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @OPREGION_SIZE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @memunmap(i8* %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @MEMREMAP_WB, align 4
  %79 = call i8* @memremap(i32 %76, i32 %77, i32 %78)
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %114

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %67
  %87 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %88 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %89 = load i32, i32* @VFIO_REGION_TYPE_PCI_VENDOR_TYPE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @VFIO_REGION_SUBTYPE_INTEL_IGD_OPREGION, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @VFIO_REGION_INFO_FLAG_READ, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @vfio_pci_register_dev_region(%struct.vfio_pci_device* %87, i32 %90, i32 %91, i32* @vfio_pci_igd_regops, i32 %92, i32 %93, i8* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @memunmap(i8* %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %114

102:                                              ; preds = %86
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @cpu_to_le32(i32 %103)
  %105 = load i32*, i32** %4, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %107 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @OPREGION_PCI_ADDR, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i32, i32* @PCI_CAP_ID_INVALID_VIRT, align 4
  %112 = call i32 @memset(i64 %110, i32 %111, i32 4)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %102, %98, %82, %62, %49, %41, %31, %22
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i8* @memremap(i32, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @memunmap(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @vfio_pci_register_dev_region(%struct.vfio_pci_device*, i32, i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
