; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.typec_altmode_driver = type { %struct.typec_device_id* }
%struct.typec_device_id = type { i64, i64 }
%struct.typec_altmode = type { i64, i64 }

@TYPEC_ANY_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @typec_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typec_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.typec_altmode_driver*, align 8
  %7 = alloca %struct.typec_altmode*, align 8
  %8 = alloca %struct.typec_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %10 = call %struct.typec_altmode_driver* @to_altmode_driver(%struct.device_driver* %9)
  store %struct.typec_altmode_driver* %10, %struct.typec_altmode_driver** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.typec_altmode* @to_typec_altmode(%struct.device* %11)
  store %struct.typec_altmode* %12, %struct.typec_altmode** %7, align 8
  %13 = load %struct.typec_altmode_driver*, %struct.typec_altmode_driver** %6, align 8
  %14 = getelementptr inbounds %struct.typec_altmode_driver, %struct.typec_altmode_driver* %13, i32 0, i32 0
  %15 = load %struct.typec_device_id*, %struct.typec_device_id** %14, align 8
  store %struct.typec_device_id* %15, %struct.typec_device_id** %8, align 8
  br label %16

16:                                               ; preds = %45, %2
  %17 = load %struct.typec_device_id*, %struct.typec_device_id** %8, align 8
  %18 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = load %struct.typec_device_id*, %struct.typec_device_id** %8, align 8
  %23 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.typec_altmode*, %struct.typec_altmode** %7, align 8
  %26 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load %struct.typec_device_id*, %struct.typec_device_id** %8, align 8
  %31 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TYPEC_ANY_MODE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load %struct.typec_device_id*, %struct.typec_device_id** %8, align 8
  %37 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.typec_altmode*, %struct.typec_altmode** %7, align 8
  %40 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35, %29
  store i32 1, i32* %3, align 4
  br label %49

44:                                               ; preds = %35, %21
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.typec_device_id*, %struct.typec_device_id** %8, align 8
  %47 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %46, i32 1
  store %struct.typec_device_id* %47, %struct.typec_device_id** %8, align 8
  br label %16

48:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.typec_altmode_driver* @to_altmode_driver(%struct.device_driver*) #1

declare dso_local %struct.typec_altmode* @to_typec_altmode(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
