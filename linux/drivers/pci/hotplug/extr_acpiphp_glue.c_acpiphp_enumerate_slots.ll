; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_enumerate_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_enumerate_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32, i32 }
%struct.acpiphp_bridge = type { i32, i32, %struct.acpiphp_context*, %struct.pci_bus*, i32, i32 }
%struct.acpiphp_context = type { %struct.TYPE_2__, %struct.acpiphp_bridge* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpiphp_root_context = type { i32, %struct.acpiphp_bridge* }

@acpiphp_disabled = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@bridge_mutex = common dso_local global i32 0, align 4
@bridge_list = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@acpiphp_add_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to register slots\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpiphp_enumerate_slots(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.acpiphp_bridge*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpiphp_root_context*, align 8
  %8 = alloca %struct.acpiphp_context*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %9 = load i64, i64* @acpiphp_disabled, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %122

12:                                               ; preds = %1
  %13 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.acpi_device* @ACPI_COMPANION(i32 %15)
  store %struct.acpi_device* %16, %struct.acpi_device** %4, align 8
  %17 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %18 = icmp ne %struct.acpi_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %122

20:                                               ; preds = %12
  %21 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 32, i32 %24)
  %26 = bitcast i8* %25 to %struct.acpiphp_bridge*
  store %struct.acpiphp_bridge* %26, %struct.acpiphp_bridge** %3, align 8
  %27 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %28 = icmp ne %struct.acpiphp_bridge* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %122

30:                                               ; preds = %20
  %31 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %32 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %31, i32 0, i32 5
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %35 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %34, i32 0, i32 4
  %36 = call i32 @kref_init(i32* %35)
  %37 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %38 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_dev_get(i32 %39)
  %41 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %42 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %44 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %45 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %44, i32 0, i32 3
  store %struct.pci_bus* %43, %struct.pci_bus** %45, align 8
  %46 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %47 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %46, i32 0, i32 0
  %48 = call i32 @get_device(i32* %47)
  %49 = call i32 (...) @acpi_lock_hp_context()
  %50 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %51 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %50, i32 0, i32 3
  %52 = load %struct.pci_bus*, %struct.pci_bus** %51, align 8
  %53 = call i64 @pci_is_root_bus(%struct.pci_bus* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %30
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kzalloc(i32 16, i32 %56)
  %58 = bitcast i8* %57 to %struct.acpiphp_root_context*
  store %struct.acpiphp_root_context* %58, %struct.acpiphp_root_context** %7, align 8
  %59 = load %struct.acpiphp_root_context*, %struct.acpiphp_root_context** %7, align 8
  %60 = icmp ne %struct.acpiphp_root_context* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %111

62:                                               ; preds = %55
  %63 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %64 = load %struct.acpiphp_root_context*, %struct.acpiphp_root_context** %7, align 8
  %65 = getelementptr inbounds %struct.acpiphp_root_context, %struct.acpiphp_root_context* %64, i32 0, i32 1
  store %struct.acpiphp_bridge* %63, %struct.acpiphp_bridge** %65, align 8
  %66 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %67 = load %struct.acpiphp_root_context*, %struct.acpiphp_root_context** %7, align 8
  %68 = getelementptr inbounds %struct.acpiphp_root_context, %struct.acpiphp_root_context* %67, i32 0, i32 0
  %69 = call i32 @acpi_set_hp_context(%struct.acpi_device* %66, i32* %68)
  br label %88

70:                                               ; preds = %30
  %71 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %72 = call %struct.acpiphp_context* @acpiphp_get_context(%struct.acpi_device* %71)
  store %struct.acpiphp_context* %72, %struct.acpiphp_context** %8, align 8
  %73 = load %struct.acpiphp_context*, %struct.acpiphp_context** %8, align 8
  %74 = icmp ne %struct.acpiphp_context* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %111

76:                                               ; preds = %70
  %77 = load %struct.acpiphp_context*, %struct.acpiphp_context** %8, align 8
  %78 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %79 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %78, i32 0, i32 2
  store %struct.acpiphp_context* %77, %struct.acpiphp_context** %79, align 8
  %80 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %81 = load %struct.acpiphp_context*, %struct.acpiphp_context** %8, align 8
  %82 = getelementptr inbounds %struct.acpiphp_context, %struct.acpiphp_context* %81, i32 0, i32 1
  store %struct.acpiphp_bridge* %80, %struct.acpiphp_bridge** %82, align 8
  %83 = load %struct.acpiphp_context*, %struct.acpiphp_context** %8, align 8
  %84 = getelementptr inbounds %struct.acpiphp_context, %struct.acpiphp_context* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @get_bridge(i32 %86)
  br label %88

88:                                               ; preds = %76, %62
  %89 = call i32 (...) @acpi_unlock_hp_context()
  %90 = call i32 @mutex_lock(i32* @bridge_mutex)
  %91 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %92 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %91, i32 0, i32 1
  %93 = call i32 @list_add(i32* %92, i32* @bridge_list)
  %94 = call i32 @mutex_unlock(i32* @bridge_mutex)
  %95 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @acpiphp_add_context, align 4
  %98 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %99 = call i32 @acpi_walk_namespace(i32 %95, i32 %96, i32 1, i32 %97, i32* null, %struct.acpiphp_bridge* %98, i32* null)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @ACPI_FAILURE(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %88
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @acpi_handle_err(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %107 = call i32 @cleanup_bridge(%struct.acpiphp_bridge* %106)
  %108 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %109 = call i32 @put_bridge(%struct.acpiphp_bridge* %108)
  br label %110

110:                                              ; preds = %103, %88
  br label %122

111:                                              ; preds = %75, %61
  %112 = call i32 (...) @acpi_unlock_hp_context()
  %113 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %114 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %113, i32 0, i32 0
  %115 = call i32 @put_device(i32* %114)
  %116 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %117 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @pci_dev_put(i32 %118)
  %120 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %121 = call i32 @kfree(%struct.acpiphp_bridge* %120)
  br label %122

122:                                              ; preds = %111, %110, %29, %19, %11
  ret void
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @pci_dev_get(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @acpi_lock_hp_context(...) #1

declare dso_local i64 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local i32 @acpi_set_hp_context(%struct.acpi_device*, i32*) #1

declare dso_local %struct.acpiphp_context* @acpiphp_get_context(%struct.acpi_device*) #1

declare dso_local i32 @get_bridge(i32) #1

declare dso_local i32 @acpi_unlock_hp_context(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, %struct.acpiphp_bridge*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_handle_err(i32, i8*) #1

declare dso_local i32 @cleanup_bridge(%struct.acpiphp_bridge*) #1

declare dso_local i32 @put_bridge(%struct.acpiphp_bridge*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @kfree(%struct.acpiphp_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
