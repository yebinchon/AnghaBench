; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_arm-device.c_xen_map_device_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_arm-device.c_xen_map_device_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.xen_add_to_physmap_range = type { i32, i32, i32, i32, i32, i32 }

@XENMAPSPACE_dev_mmio = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XENMEM_add_to_physmap_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, i32)* @xen_map_device_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_map_device_mmio(%struct.resource* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xen_add_to_physmap_range, align 4
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %127, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %130

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 4
  %25 = load i32, i32* @XENMAPSPACE_dev_mmio, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 5
  %27 = load i32, i32* @DOMID_SELF, align 4
  store i32 %27, i32* %26, align 4
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %28, i64 %30
  store %struct.resource* %31, %struct.resource** %10, align 8
  %32 = load %struct.resource*, %struct.resource** %10, align 8
  %33 = call i32 @resource_size(%struct.resource* %32)
  %34 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %35 = call i32 @DIV_ROUND_UP(i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.resource*, %struct.resource** %10, align 8
  %37 = call i64 @resource_type(%struct.resource* %36)
  %38 = load i64, i64* @IORESOURCE_MEM, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %19
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %19
  br label %127

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32* @kcalloc(i32 %45, i32 4, i32 %46)
  store i32* %47, i32** %11, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32* @kcalloc(i32 %48, i32 4, i32 %49)
  store i32* %50, i32** %12, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @kcalloc(i32 %51, i32 4, i32 %52)
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %59, %56, %44
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @kfree(i32* %65)
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %132

71:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %97, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load %struct.resource*, %struct.resource** %10, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @XEN_PFN_DOWN(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %80, %81
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load %struct.resource*, %struct.resource** %10, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @XEN_PFN_DOWN(i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %90, %91
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %76
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %72

100:                                              ; preds = %72
  %101 = load i32, i32* %8, align 4
  %102 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @set_xen_guest_handle(i32 %104, i32* %105)
  %107 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @set_xen_guest_handle(i32 %108, i32* %109)
  %111 = getelementptr inbounds %struct.xen_add_to_physmap_range, %struct.xen_add_to_physmap_range* %14, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @set_xen_guest_handle(i32 %112, i32* %113)
  %115 = load i32, i32* @XENMEM_add_to_physmap_range, align 4
  %116 = call i32 @HYPERVISOR_memory_op(i32 %115, %struct.xen_add_to_physmap_range* %14)
  store i32 %116, i32* %9, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @kfree(i32* %117)
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @kfree(i32* %119)
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @kfree(i32* %121)
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %100
  br label %132

126:                                              ; preds = %100
  br label %127

127:                                              ; preds = %126, %43
  %128 = load i32, i32* %6, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %15

130:                                              ; preds = %15
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %137

132:                                              ; preds = %125, %62
  %133 = load %struct.resource*, %struct.resource** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @xen_unmap_device_mmio(%struct.resource* %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %132, %130
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @resource_type(%struct.resource*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @XEN_PFN_DOWN(i32) #1

declare dso_local i32 @set_xen_guest_handle(i32, i32*) #1

declare dso_local i32 @HYPERVISOR_memory_op(i32, %struct.xen_add_to_physmap_range*) #1

declare dso_local i32 @xen_unmap_device_mmio(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
