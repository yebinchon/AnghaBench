; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_php_slot = type { i64, i32, i32, i32, %struct.hotplug_slot }
%struct.hotplug_slot = type { i32 }

@OPAL_PCI_SLOT_EMPTY = common dso_local global i64 0, align 8
@OPAL_PCI_SLOT_POWER_ON = common dso_local global i64 0, align 8
@PNV_PHP_STATE_REGISTERED = common dso_local global i64 0, align 8
@OPAL_PCI_SLOT_PRESENT = common dso_local global i64 0, align 8
@PNV_PHP_STATE_POPULATED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnv_php_slot*, i32)* @pnv_php_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_php_enable(%struct.pnv_php_slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnv_php_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hotplug_slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pnv_php_slot* %0, %struct.pnv_php_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %11 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %10, i32 0, i32 4
  store %struct.hotplug_slot* %11, %struct.hotplug_slot** %6, align 8
  %12 = load i64, i64* @OPAL_PCI_SLOT_EMPTY, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @OPAL_PCI_SLOT_POWER_ON, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %15 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PNV_PHP_STATE_REGISTERED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

20:                                               ; preds = %2
  %21 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %22 = call i32 @pnv_php_get_adapter_state(%struct.hotplug_slot* %21, i64* %7)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %114

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @OPAL_PCI_SLOT_EMPTY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %33 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %38 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  store i32 0, i32* %3, align 4
  br label %114

39:                                               ; preds = %31
  br label %81

40:                                               ; preds = %27
  %41 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %42 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %47 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %49 = call i32 @pnv_php_get_power_state(%struct.hotplug_slot* %48, i64* %8)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %114

54:                                               ; preds = %45
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @OPAL_PCI_SLOT_POWER_ON, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %114

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %40
  %61 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %62 = call i32 @pnv_php_get_power_state(%struct.hotplug_slot* %61, i64* %8)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %114

67:                                               ; preds = %60
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @OPAL_PCI_SLOT_POWER_ON, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %81

72:                                               ; preds = %67
  %73 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %74 = load i64, i64* @OPAL_PCI_SLOT_POWER_ON, align 8
  %75 = call i32 @pnv_php_set_slot_power_state(%struct.hotplug_slot* %73, i64 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %114

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %71, %39
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @OPAL_PCI_SLOT_PRESENT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = call i32 (...) @pci_lock_rescan_remove()
  %90 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %91 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pci_hp_add_devices(i32 %92)
  %94 = call i32 (...) @pci_unlock_rescan_remove()
  br label %95

95:                                               ; preds = %88, %85
  %96 = load i8*, i8** @PNV_PHP_STATE_POPULATED, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %99 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %104 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pnv_php_register(i32 %105)
  br label %107

107:                                              ; preds = %102, %95
  br label %113

108:                                              ; preds = %81
  %109 = load i8*, i8** @PNV_PHP_STATE_POPULATED, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %4, align 8
  %112 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %108, %107
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %78, %65, %58, %52, %36, %25, %19
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @pnv_php_get_adapter_state(%struct.hotplug_slot*, i64*) #1

declare dso_local i32 @pnv_php_get_power_state(%struct.hotplug_slot*, i64*) #1

declare dso_local i32 @pnv_php_set_slot_power_state(%struct.hotplug_slot*, i64) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_hp_add_devices(i32) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @pnv_php_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
