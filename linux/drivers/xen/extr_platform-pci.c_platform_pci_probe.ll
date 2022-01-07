; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_platform-pci.c_platform_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_platform-pci.c_platform_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no resources found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@platform_mmio = common dso_local global i64 0, align 8
@platform_mmiolen = common dso_local global i64 0, align 8
@xen_have_vector_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"request_irq failed err=%d\0A\00", align 1
@callback_via = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to set the evtchn callback err=%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @platform_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %13 = call i32 (...) @xen_domain()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %115

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_enable_device(%struct.pci_dev* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %115

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i64 @pci_resource_start(%struct.pci_dev* %26, i32 0)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i64 @pci_resource_start(%struct.pci_dev* %28, i32 1)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i64 @pci_resource_len(%struct.pci_dev* %30, i32 1)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34, %25
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %111

43:                                               ; preds = %34
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* @DRV_NAME, align 4
  %46 = call i32 @pci_request_region(%struct.pci_dev* %44, i32 1, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %111

50:                                               ; preds = %43
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = load i32, i32* @DRV_NAME, align 4
  %53 = call i32 @pci_request_region(%struct.pci_dev* %51, i32 0, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %108

57:                                               ; preds = %50
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* @platform_mmio, align 8
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* @platform_mmiolen, align 8
  %60 = load i32, i32* @xen_have_vector_callback, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %57
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = call i32 @xen_allocate_irq(%struct.pci_dev* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %105

72:                                               ; preds = %62
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = call i32 @get_callback_via(%struct.pci_dev* %73)
  store i32 %74, i32* @callback_via, align 4
  %75 = load i32, i32* @callback_via, align 4
  %76 = call i32 @xen_set_callback_via(i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dev_warn(i32* %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %105

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %57
  %86 = call i32 (...) @gnttab_max_grant_frames()
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = load i32, i32* %11, align 4
  %89 = mul i32 %87, %88
  %90 = call i64 @alloc_xen_mmio(i32 %89)
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @gnttab_setup_auto_xlat_frames(i64 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %105

96:                                               ; preds = %85
  %97 = call i32 (...) @gnttab_init()
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %103

101:                                              ; preds = %96
  %102 = call i32 @xenbus_probe(i32* null)
  store i32 0, i32* %3, align 4
  br label %115

103:                                              ; preds = %100
  %104 = call i32 (...) @gnttab_free_auto_xlat_frames()
  br label %105

105:                                              ; preds = %103, %95, %79, %67
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = call i32 @pci_release_region(%struct.pci_dev* %106, i32 0)
  br label %108

108:                                              ; preds = %105, %56
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = call i32 @pci_release_region(%struct.pci_dev* %109, i32 1)
  br label %111

111:                                              ; preds = %108, %49, %37
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = call i32 @pci_disable_device(%struct.pci_dev* %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %101, %23, %15
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @xen_domain(...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @xen_allocate_irq(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @get_callback_via(%struct.pci_dev*) #1

declare dso_local i32 @xen_set_callback_via(i32) #1

declare dso_local i32 @gnttab_max_grant_frames(...) #1

declare dso_local i64 @alloc_xen_mmio(i32) #1

declare dso_local i32 @gnttab_setup_auto_xlat_frames(i64) #1

declare dso_local i32 @gnttab_init(...) #1

declare dso_local i32 @xenbus_probe(i32*) #1

declare dso_local i32 @gnttab_free_auto_xlat_frames(...) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
