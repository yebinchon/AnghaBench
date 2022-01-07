; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ap_device = type { %struct.ap_driver* }
%struct.ap_driver = type { i32 (%struct.ap_device.0*)* }
%struct.ap_device.0 = type opaque
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ap_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ap_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.ap_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.ap_device* @to_ap_dev(%struct.device* %5)
  store %struct.ap_device* %6, %struct.ap_device** %3, align 8
  %7 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %8 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %7, i32 0, i32 0
  %9 = load %struct.ap_driver*, %struct.ap_driver** %8, align 8
  store %struct.ap_driver* %9, %struct.ap_driver** %4, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i64 @is_queue_dev(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call %struct.TYPE_5__* @to_ap_queue(%struct.device* %14)
  %16 = call i32 @ap_queue_prepare_remove(%struct.TYPE_5__* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.ap_driver*, %struct.ap_driver** %4, align 8
  %19 = getelementptr inbounds %struct.ap_driver, %struct.ap_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.ap_device.0*)*, i32 (%struct.ap_device.0*)** %19, align 8
  %21 = icmp ne i32 (%struct.ap_device.0*)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.ap_driver*, %struct.ap_driver** %4, align 8
  %24 = getelementptr inbounds %struct.ap_driver, %struct.ap_driver* %23, i32 0, i32 0
  %25 = load i32 (%struct.ap_device.0*)*, i32 (%struct.ap_device.0*)** %24, align 8
  %26 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %27 = bitcast %struct.ap_device* %26 to %struct.ap_device.0*
  %28 = call i32 %25(%struct.ap_device.0* %27)
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = call i64 @is_queue_dev(%struct.device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %2, align 8
  %35 = call %struct.TYPE_5__* @to_ap_queue(%struct.device* %34)
  %36 = call i32 @ap_queue_remove(%struct.TYPE_5__* %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = call i32 @spin_lock_bh(i32* @ap_list_lock)
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = call i64 @is_card_dev(%struct.device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %2, align 8
  %44 = call %struct.TYPE_6__* @to_ap_card(%struct.device* %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @list_del_init(i32* %45)
  br label %52

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %2, align 8
  %49 = call %struct.TYPE_5__* @to_ap_queue(%struct.device* %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @list_del_init(i32* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = call i32 @spin_unlock_bh(i32* @ap_list_lock)
  ret i32 0
}

declare dso_local %struct.ap_device* @to_ap_dev(%struct.device*) #1

declare dso_local i64 @is_queue_dev(%struct.device*) #1

declare dso_local i32 @ap_queue_prepare_remove(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @to_ap_queue(%struct.device*) #1

declare dso_local i32 @ap_queue_remove(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @is_card_dev(%struct.device*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local %struct.TYPE_6__* @to_ap_card(%struct.device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
