; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_i2c.c_cros_ec_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_i2c.c_cros_ec_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__*, i32, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.cros_ec_device = type { i32, i32, i32, i32, i32, i32, %struct.i2c_client*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cros_ec_cmd_xfer_i2c = common dso_local global i32 0, align 4
@cros_ec_pkt_xfer_i2c = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot register EC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cros_ec_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.cros_ec_device*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %6, align 8
  store %struct.cros_ec_device* null, %struct.cros_ec_device** %7, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cros_ec_device* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  store %struct.cros_ec_device* %13, %struct.cros_ec_device** %7, align 8
  %14 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %15 = icmp ne %struct.cros_ec_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.cros_ec_device* %21)
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %25 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %24, i32 0, i32 7
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %28 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %27, i32 0, i32 6
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %33 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @cros_ec_cmd_xfer_i2c, align 4
  %35 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %36 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @cros_ec_pkt_xfer_i2c, align 4
  %38 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %39 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %46 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %48 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %47, i32 0, i32 0
  store i32 8, i32* %48, align 8
  %49 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %50 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %49, i32 0, i32 1
  store i32 4, i32* %50, align 4
  %51 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %52 = call i32 @cros_ec_register(%struct.cros_ec_device* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %19
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %55, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.cros_ec_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cros_ec_device*) #1

declare dso_local i32 @cros_ec_register(%struct.cros_ec_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
