; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_hotk_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_hotk_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.eeepc_laptop = type { i64, i64, i64, i64 }

@EEEPC_RFKILL_NODE_1 = common dso_local global i32 0, align 4
@EEEPC_RFKILL_NODE_2 = common dso_local global i32 0, align 4
@EEEPC_RFKILL_NODE_3 = common dso_local global i32 0, align 4
@CM_ASL_BLUETOOTH = common dso_local global i32 0, align 4
@CM_ASL_3G = common dso_local global i32 0, align 4
@CM_ASL_WIMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @eeepc_hotk_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_hotk_restore(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.eeepc_laptop*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.eeepc_laptop* @dev_get_drvdata(%struct.device* %4)
  store %struct.eeepc_laptop* %5, %struct.eeepc_laptop** %3, align 8
  %6 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %7 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %12 = load i32, i32* @EEEPC_RFKILL_NODE_1, align 4
  %13 = call i32 @eeepc_rfkill_hotplug_update(%struct.eeepc_laptop* %11, i32 %12)
  %14 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %15 = load i32, i32* @EEEPC_RFKILL_NODE_2, align 4
  %16 = call i32 @eeepc_rfkill_hotplug_update(%struct.eeepc_laptop* %14, i32 %15)
  %17 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %18 = load i32, i32* @EEEPC_RFKILL_NODE_3, align 4
  %19 = call i32 @eeepc_rfkill_hotplug_update(%struct.eeepc_laptop* %17, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %22 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %27 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %30 = load i32, i32* @CM_ASL_BLUETOOTH, align 4
  %31 = call i32 @get_acpi(%struct.eeepc_laptop* %29, i32 %30)
  %32 = icmp ne i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @rfkill_set_sw_state(i64 %28, i32 %33)
  br label %35

35:                                               ; preds = %25, %20
  %36 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %37 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %42 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %45 = load i32, i32* @CM_ASL_3G, align 4
  %46 = call i32 @get_acpi(%struct.eeepc_laptop* %44, i32 %45)
  %47 = icmp ne i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = call i32 @rfkill_set_sw_state(i64 %43, i32 %48)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %52 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %57 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %60 = load i32, i32* @CM_ASL_WIMAX, align 4
  %61 = call i32 @get_acpi(%struct.eeepc_laptop* %59, i32 %60)
  %62 = icmp ne i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = call i32 @rfkill_set_sw_state(i64 %58, i32 %63)
  br label %65

65:                                               ; preds = %55, %50
  ret i32 0
}

declare dso_local %struct.eeepc_laptop* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @eeepc_rfkill_hotplug_update(%struct.eeepc_laptop*, i32) #1

declare dso_local i32 @rfkill_set_sw_state(i64, i32) #1

declare dso_local i32 @get_acpi(%struct.eeepc_laptop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
