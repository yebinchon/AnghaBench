; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_do_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_do_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.i2c_driver = type { i32 (%struct.i2c_client.0*, i32, i32)* }
%struct.i2c_client.0 = type opaque

@I2C_PROTOCOL_SMBUS_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no driver alert()!\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"alert with no driver\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @sbsm_do_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbsm_do_alert(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.i2c_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.i2c_client* @i2c_verify_client(%struct.device* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = icmp ne %struct.i2c_client* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 11
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %58

18:                                               ; preds = %12
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @device_lock(%struct.device* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %18
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.i2c_driver* @to_i2c_driver(i64 %30)
  store %struct.i2c_driver* %31, %struct.i2c_driver** %7, align 8
  %32 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %33 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %32, i32 0, i32 0
  %34 = load i32 (%struct.i2c_client.0*, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.i2c_client.0*, i32, i32)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %38 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %37, i32 0, i32 0
  %39 = load i32 (%struct.i2c_client.0*, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32)** %38, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = bitcast %struct.i2c_client* %40 to %struct.i2c_client.0*
  %42 = load i32, i32* @I2C_PROTOCOL_SMBUS_ALERT, align 4
  %43 = call i32 %39(%struct.i2c_client.0* %41, i32 %42, i32 0)
  br label %48

44:                                               ; preds = %26
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = call i32 @dev_warn(%struct.TYPE_3__* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %36
  br label %53

49:                                               ; preds = %18
  %50 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 1
  %52 = call i32 @dev_dbg(%struct.TYPE_3__* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %48
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @device_unlock(%struct.device* %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.i2c_client* @i2c_verify_client(%struct.device*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local %struct.i2c_driver* @to_i2c_driver(i64) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
