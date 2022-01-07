; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.ap_driver = type { %struct.ap_device_id* }
%struct.ap_device_id = type { i32, i64 }
%struct.TYPE_2__ = type { i64 }

@AP_DEVICE_ID_MATCH_CARD_TYPE = common dso_local global i32 0, align 4
@AP_DEVICE_ID_MATCH_QUEUE_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @ap_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.ap_driver*, align 8
  %7 = alloca %struct.ap_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %9 = call %struct.ap_driver* @to_ap_drv(%struct.device_driver* %8)
  store %struct.ap_driver* %9, %struct.ap_driver** %6, align 8
  %10 = load %struct.ap_driver*, %struct.ap_driver** %6, align 8
  %11 = getelementptr inbounds %struct.ap_driver, %struct.ap_driver* %10, i32 0, i32 0
  %12 = load %struct.ap_device_id*, %struct.ap_device_id** %11, align 8
  store %struct.ap_device_id* %12, %struct.ap_device_id** %7, align 8
  br label %13

13:                                               ; preds = %61, %2
  %14 = load %struct.ap_device_id*, %struct.ap_device_id** %7, align 8
  %15 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %13
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i64 @is_card_dev(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.ap_device_id*, %struct.ap_device_id** %7, align 8
  %24 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AP_DEVICE_ID_MATCH_CARD_TYPE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.ap_device_id*, %struct.ap_device_id** %7, align 8
  %31 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call %struct.TYPE_2__* @to_ap_dev(%struct.device* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %65

39:                                               ; preds = %29, %22, %18
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i64 @is_queue_dev(%struct.device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load %struct.ap_device_id*, %struct.ap_device_id** %7, align 8
  %45 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AP_DEVICE_ID_MATCH_QUEUE_TYPE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.ap_device_id*, %struct.ap_device_id** %7, align 8
  %52 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call %struct.TYPE_2__* @to_ap_dev(%struct.device* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %65

60:                                               ; preds = %50, %43, %39
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.ap_device_id*, %struct.ap_device_id** %7, align 8
  %63 = getelementptr inbounds %struct.ap_device_id, %struct.ap_device_id* %62, i32 1
  store %struct.ap_device_id* %63, %struct.ap_device_id** %7, align 8
  br label %13

64:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %59, %38
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ap_driver* @to_ap_drv(%struct.device_driver*) #1

declare dso_local i64 @is_card_dev(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_ap_dev(%struct.device*) #1

declare dso_local i64 @is_queue_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
