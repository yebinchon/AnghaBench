; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_arm-device.c_xen_unmap_device_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_arm-device.c_xen_unmap_device_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.xen_remove_from_physmap = type { i64, i32 }

@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@DOMID_SELF = common dso_local global i32 0, align 4
@XENMEM_remove_from_physmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, i32)* @xen_unmap_device_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_unmap_device_mmio(%struct.resource* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.xen_remove_from_physmap, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %60, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %12
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %17, i64 %19
  store %struct.resource* %20, %struct.resource** %10, align 8
  %21 = load %struct.resource*, %struct.resource** %10, align 8
  %22 = call i32 @resource_size(%struct.resource* %21)
  %23 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.resource*, %struct.resource** %10, align 8
  %26 = call i64 @resource_type(%struct.resource* %25)
  %27 = load i64, i64* @IORESOURCE_MEM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %16
  br label %60

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i32, i32* @DOMID_SELF, align 4
  %40 = getelementptr inbounds %struct.xen_remove_from_physmap, %struct.xen_remove_from_physmap* %11, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load %struct.resource*, %struct.resource** %10, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @XEN_PFN_DOWN(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = getelementptr inbounds %struct.xen_remove_from_physmap, %struct.xen_remove_from_physmap* %11, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @XENMEM_remove_from_physmap, align 4
  %50 = call i32 @HYPERVISOR_memory_op(i32 %49, %struct.xen_remove_from_physmap* %11)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %65

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %34

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59, %32
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %12

63:                                               ; preds = %12
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %53
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @resource_type(%struct.resource*) #1

declare dso_local i64 @XEN_PFN_DOWN(i32) #1

declare dso_local i32 @HYPERVISOR_memory_op(i32, %struct.xen_remove_from_physmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
