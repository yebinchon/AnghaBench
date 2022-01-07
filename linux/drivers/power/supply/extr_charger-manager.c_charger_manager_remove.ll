; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_manager_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_manager_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.charger_manager = type { i32, i32, %struct.charger_desc* }
%struct.charger_desc = type { i32, %struct.charger_regulator* }
%struct.charger_regulator = type { i32, i32, %struct.charger_cable* }
%struct.charger_cable = type { i32 }

@cm_list_mtx = common dso_local global i32 0, align 4
@setup_polling = common dso_local global i32 0, align 4
@cm_monitor_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @charger_manager_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charger_manager_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca %struct.charger_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.charger_regulator*, align 8
  %8 = alloca %struct.charger_cable*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.charger_manager* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.charger_manager* %10, %struct.charger_manager** %3, align 8
  %11 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %12 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %11, i32 0, i32 2
  %13 = load %struct.charger_desc*, %struct.charger_desc** %12, align 8
  store %struct.charger_desc* %13, %struct.charger_desc** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = call i32 @mutex_lock(i32* @cm_list_mtx)
  %15 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %16 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %15, i32 0, i32 1
  %17 = call i32 @list_del(i32* %16)
  %18 = call i32 @mutex_unlock(i32* @cm_list_mtx)
  %19 = call i32 @cancel_work_sync(i32* @setup_polling)
  %20 = call i32 @cancel_delayed_work_sync(i32* @cm_monitor_work)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %54, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %24 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %29 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %28, i32 0, i32 1
  %30 = load %struct.charger_regulator*, %struct.charger_regulator** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %30, i64 %32
  store %struct.charger_regulator* %33, %struct.charger_regulator** %7, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %50, %27
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.charger_regulator*, %struct.charger_regulator** %7, align 8
  %37 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.charger_regulator*, %struct.charger_regulator** %7, align 8
  %42 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %41, i32 0, i32 2
  %43 = load %struct.charger_cable*, %struct.charger_cable** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %43, i64 %45
  store %struct.charger_cable* %46, %struct.charger_cable** %8, align 8
  %47 = load %struct.charger_cable*, %struct.charger_cable** %8, align 8
  %48 = getelementptr inbounds %struct.charger_cable, %struct.charger_cable* %47, i32 0, i32 0
  %49 = call i32 @extcon_unregister_interest(i32* %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %34

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %21

57:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %61 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %66 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %65, i32 0, i32 1
  %67 = load %struct.charger_regulator*, %struct.charger_regulator** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %67, i64 %69
  %71 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @regulator_put(i32 %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %79 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @power_supply_unregister(i32 %80)
  %82 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %83 = call i32 @try_charger_enable(%struct.charger_manager* %82, i32 0)
  ret i32 0
}

declare dso_local %struct.charger_manager* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @extcon_unregister_interest(i32*) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @try_charger_enable(%struct.charger_manager*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
