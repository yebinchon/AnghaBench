; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_alloc_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_alloc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_php_slot = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, %struct.pci_bus*, i32, %struct.device_node*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.pci_bus = type { i32 }
%struct.device_node = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ibm,slot-label\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@PNV_PHP_STATE_INITIALIZED = common dso_local global i32 0, align 4
@php_slot_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnv_php_slot* (%struct.device_node*)* @pnv_php_alloc_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnv_php_slot* @pnv_php_alloc_slot(%struct.device_node* %0) #0 {
  %2 = alloca %struct.pnv_php_slot*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pnv_php_slot*, align 8
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = call i32 @of_property_read_string(%struct.device_node* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.pnv_php_slot* null, %struct.pnv_php_slot** %2, align 8
  br label %101

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i64 @pnv_pci_get_slot_id(%struct.device_node* %15, i32* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.pnv_php_slot* null, %struct.pnv_php_slot** %2, align 8
  br label %101

19:                                               ; preds = %14
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  %21 = call %struct.pci_bus* @pci_find_bus_by_node(%struct.device_node* %20)
  store %struct.pci_bus* %21, %struct.pci_bus** %5, align 8
  %22 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %23 = icmp ne %struct.pci_bus* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.pnv_php_slot* null, %struct.pnv_php_slot** %2, align 8
  br label %101

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.pnv_php_slot* @kzalloc(i32 72, i32 %26)
  store %struct.pnv_php_slot* %27, %struct.pnv_php_slot** %4, align 8
  %28 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %29 = icmp ne %struct.pnv_php_slot* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.pnv_php_slot* null, %struct.pnv_php_slot** %2, align 8
  br label %101

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @kstrdup(i8* %32, i32 %33)
  %35 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %36 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %38 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %43 = call i32 @kfree(%struct.pnv_php_slot* %42)
  store %struct.pnv_php_slot* null, %struct.pnv_php_slot** %2, align 8
  br label %101

44:                                               ; preds = %31
  %45 = load %struct.device_node*, %struct.device_node** %3, align 8
  %46 = getelementptr inbounds %struct.device_node, %struct.device_node* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.device_node*, %struct.device_node** %3, align 8
  %51 = getelementptr inbounds %struct.device_node, %struct.device_node* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.TYPE_4__* @PCI_DN(i64 %52)
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.device_node*, %struct.device_node** %3, align 8
  %57 = getelementptr inbounds %struct.device_node, %struct.device_node* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.TYPE_4__* @PCI_DN(i64 %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PCI_SLOT(i32 %61)
  %63 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %64 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %68

65:                                               ; preds = %49, %44
  %66 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %67 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %55
  %69 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %70 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %69, i32 0, i32 10
  %71 = call i32 @kref_init(i32* %70)
  %72 = load i32, i32* @PNV_PHP_STATE_INITIALIZED, align 4
  %73 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %74 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 8
  %75 = load %struct.device_node*, %struct.device_node** %3, align 8
  %76 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %77 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %76, i32 0, i32 8
  store %struct.device_node* %75, %struct.device_node** %77, align 8
  %78 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %79 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %82 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %84 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %85 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %84, i32 0, i32 6
  store %struct.pci_bus* %83, %struct.pci_bus** %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %88 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %90 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %92 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32* @php_slot_ops, i32** %93, align 8
  %94 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %95 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %94, i32 0, i32 3
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %98 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %97, i32 0, i32 2
  %99 = call i32 @INIT_LIST_HEAD(i32* %98)
  %100 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  store %struct.pnv_php_slot* %100, %struct.pnv_php_slot** %2, align 8
  br label %101

101:                                              ; preds = %68, %41, %30, %24, %18, %13
  %102 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  ret %struct.pnv_php_slot* %102
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @pnv_pci_get_slot_id(%struct.device_node*, i32*) #1

declare dso_local %struct.pci_bus* @pci_find_bus_by_node(%struct.device_node*) #1

declare dso_local %struct.pnv_php_slot* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.pnv_php_slot*) #1

declare dso_local %struct.TYPE_4__* @PCI_DN(i64) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
