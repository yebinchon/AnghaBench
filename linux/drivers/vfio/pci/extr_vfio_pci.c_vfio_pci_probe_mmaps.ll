; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_probe_mmaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_probe_mmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.resource* }
%struct.resource = type { i32, i32, i32, i64 }
%struct.vfio_pci_dummy_resource = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i64, i64 }

@PCI_STD_RESOURCES = common dso_local global i32 0, align 4
@PCI_STD_RESOURCE_END = common dso_local global i32 0, align 4
@CONFIG_VFIO_PCI_MMAP = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vfio sub-page reserved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_pci_device*)* @vfio_pci_probe_mmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_pci_probe_mmaps(%struct.vfio_pci_device* %0) #0 {
  %2 = alloca %struct.vfio_pci_device*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_pci_dummy_resource*, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %2, align 8
  %6 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %7 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %6, i32 0, i32 1
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load i32, i32* @PCI_STD_RESOURCES, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %126, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PCI_STD_RESOURCE_END, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %129

14:                                               ; preds = %10
  %15 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %16 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.resource*, %struct.resource** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %19, i64 %21
  store %struct.resource* %22, %struct.resource** %3, align 8
  %23 = load i32, i32* @CONFIG_VFIO_PCI_MMAP, align 4
  %24 = call i32 @IS_ENABLED(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  br label %119

27:                                               ; preds = %14
  %28 = load %struct.resource*, %struct.resource** %3, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %119

35:                                               ; preds = %27
  %36 = load %struct.resource*, %struct.resource** %3, align 8
  %37 = call i64 @resource_size(%struct.resource* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %119

40:                                               ; preds = %35
  %41 = load %struct.resource*, %struct.resource** %3, align 8
  %42 = call i64 @resource_size(%struct.resource* %41)
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %47 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 1, i32* %51, align 4
  br label %126

52:                                               ; preds = %40
  %53 = load %struct.resource*, %struct.resource** %3, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PAGE_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %118, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.vfio_pci_dummy_resource* @kzalloc(i32 40, i32 %61)
  store %struct.vfio_pci_dummy_resource* %62, %struct.vfio_pci_dummy_resource** %5, align 8
  %63 = load %struct.vfio_pci_dummy_resource*, %struct.vfio_pci_dummy_resource** %5, align 8
  %64 = icmp eq %struct.vfio_pci_dummy_resource* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %119

66:                                               ; preds = %60
  %67 = load %struct.vfio_pci_dummy_resource*, %struct.vfio_pci_dummy_resource** %5, align 8
  %68 = getelementptr inbounds %struct.vfio_pci_dummy_resource, %struct.vfio_pci_dummy_resource* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %69, align 8
  %70 = load %struct.resource*, %struct.resource** %3, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  %74 = load %struct.vfio_pci_dummy_resource*, %struct.vfio_pci_dummy_resource** %5, align 8
  %75 = getelementptr inbounds %struct.vfio_pci_dummy_resource, %struct.vfio_pci_dummy_resource* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i64 %73, i64* %76, align 8
  %77 = load %struct.resource*, %struct.resource** %3, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = add nsw i64 %80, %81
  %83 = sub nsw i64 %82, 1
  %84 = load %struct.vfio_pci_dummy_resource*, %struct.vfio_pci_dummy_resource** %5, align 8
  %85 = getelementptr inbounds %struct.vfio_pci_dummy_resource, %struct.vfio_pci_dummy_resource* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i64 %83, i64* %86, align 8
  %87 = load %struct.resource*, %struct.resource** %3, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.vfio_pci_dummy_resource*, %struct.vfio_pci_dummy_resource** %5, align 8
  %91 = getelementptr inbounds %struct.vfio_pci_dummy_resource, %struct.vfio_pci_dummy_resource* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 8
  %93 = load %struct.resource*, %struct.resource** %3, align 8
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vfio_pci_dummy_resource*, %struct.vfio_pci_dummy_resource** %5, align 8
  %97 = getelementptr inbounds %struct.vfio_pci_dummy_resource, %struct.vfio_pci_dummy_resource* %96, i32 0, i32 2
  %98 = call i64 @request_resource(i32 %95, %struct.TYPE_4__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %66
  %101 = load %struct.vfio_pci_dummy_resource*, %struct.vfio_pci_dummy_resource** %5, align 8
  %102 = call i32 @kfree(%struct.vfio_pci_dummy_resource* %101)
  br label %119

103:                                              ; preds = %66
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.vfio_pci_dummy_resource*, %struct.vfio_pci_dummy_resource** %5, align 8
  %106 = getelementptr inbounds %struct.vfio_pci_dummy_resource, %struct.vfio_pci_dummy_resource* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.vfio_pci_dummy_resource*, %struct.vfio_pci_dummy_resource** %5, align 8
  %108 = getelementptr inbounds %struct.vfio_pci_dummy_resource, %struct.vfio_pci_dummy_resource* %107, i32 0, i32 1
  %109 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %110 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %109, i32 0, i32 1
  %111 = call i32 @list_add(i32* %108, i32* %110)
  %112 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %113 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 1, i32* %117, align 4
  br label %126

118:                                              ; preds = %52
  br label %119

119:                                              ; preds = %118, %100, %65, %39, %34, %26
  %120 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %121 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %103, %45
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %10

129:                                              ; preds = %10
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local %struct.vfio_pci_dummy_resource* @kzalloc(i32, i32) #1

declare dso_local i64 @request_resource(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.vfio_pci_dummy_resource*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
