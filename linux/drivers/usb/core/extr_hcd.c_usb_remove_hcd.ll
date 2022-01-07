; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_remove_hcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_remove_hcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64, i64, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.usb_hcd*)* }

@.str = private unnamed_addr constant [18 x i8] c"remove, state %x\0A\00", align 1
@HCD_FLAG_RH_RUNNING = common dso_local global i32 0, align 4
@HC_STATE_QUIESCING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"roothub graceful disconnect\0A\00", align 1
@hcd_root_hub_lock = common dso_local global i32 0, align 4
@usb_bus_idr_lock = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_remove_hcd(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.usb_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  store %struct.usb_device* %7, %struct.usb_device** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = call i32 @usb_get_dev(%struct.usb_device* %16)
  %18 = load i32, i32* @HCD_FLAG_RH_RUNNING, align 4
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %20 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %19, i32 0, i32 1
  %21 = call i32 @clear_bit(i32 %18, i64* %20)
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @HC_IS_RUNNING(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @HC_STATE_QUIESCING, align 4
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %33 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @spin_lock_irq(i32* @hcd_root_hub_lock)
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %39 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  %40 = call i32 @spin_unlock_irq(i32* @hcd_root_hub_lock)
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 8
  %43 = call i32 @cancel_work_sync(i32* %42)
  %44 = call i32 @mutex_lock(i32* @usb_bus_idr_lock)
  %45 = call i32 @usb_disconnect(%struct.usb_device** %3)
  %46 = call i32 @mutex_unlock(i32* @usb_bus_idr_lock)
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 1
  %52 = call i32 @clear_bit(i32 %49, i64* %51)
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 4
  %55 = call i32 @del_timer_sync(i32* %54)
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %57 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %56, i32 0, i32 6
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %59, align 8
  %61 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %62 = call i32 %60(%struct.usb_hcd* %61)
  %63 = load i32, i32* @HC_STATE_HALT, align 4
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %65 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %67 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %68 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %67, i32 0, i32 1
  %69 = call i32 @clear_bit(i32 %66, i64* %68)
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 4
  %72 = call i32 @del_timer_sync(i32* %71)
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %74 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %31
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %78 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %83 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %86 = call i32 @free_irq(i64 %84, %struct.usb_hcd* %85)
  br label %87

87:                                               ; preds = %81, %76
  br label %88

88:                                               ; preds = %87, %31
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %90 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %89, i32 0, i32 3
  %91 = call i32 @usb_deregister_bus(%struct.TYPE_4__* %90)
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %93 = call i32 @hcd_buffer_destroy(%struct.usb_hcd* %92)
  %94 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %95 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @usb_phy_roothub_power_off(i32 %96)
  %98 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %99 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @usb_phy_roothub_exit(i32 %100)
  %102 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %103 = call i32 @usb_put_invalidate_rhdev(%struct.usb_hcd* %102)
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %105 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_disconnect(%struct.usb_device**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @free_irq(i64, %struct.usb_hcd*) #1

declare dso_local i32 @usb_deregister_bus(%struct.TYPE_4__*) #1

declare dso_local i32 @hcd_buffer_destroy(%struct.usb_hcd*) #1

declare dso_local i32 @usb_phy_roothub_power_off(i32) #1

declare dso_local i32 @usb_phy_roothub_exit(i32) #1

declare dso_local i32 @usb_put_invalidate_rhdev(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
