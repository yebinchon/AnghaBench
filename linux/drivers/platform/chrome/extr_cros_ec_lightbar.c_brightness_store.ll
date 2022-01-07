; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_brightness_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_brightness_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ec_params_lightbar = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cros_ec_command = type { i64, i64 }
%struct.cros_ec_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LIGHTBAR_CMD_SET_BRIGHTNESS = common dso_local global i32 0, align 4
@EC_RES_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @brightness_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brightness_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ec_params_lightbar*, align 8
  %11 = alloca %struct.cros_ec_command*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cros_ec_dev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device* %15)
  store %struct.cros_ec_dev* %16, %struct.cros_ec_dev** %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @kstrtouint(i8* %17, i32 0, i32* %13)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %72

23:                                               ; preds = %4
  %24 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %14, align 8
  %25 = call %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev* %24)
  store %struct.cros_ec_command* %25, %struct.cros_ec_command** %11, align 8
  %26 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %27 = icmp ne %struct.cros_ec_command* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %72

31:                                               ; preds = %23
  %32 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %33 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ec_params_lightbar*
  store %struct.ec_params_lightbar* %35, %struct.ec_params_lightbar** %10, align 8
  %36 = load i32, i32* @LIGHTBAR_CMD_SET_BRIGHTNESS, align 4
  %37 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %10, align 8
  %38 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %10, align 8
  %41 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = call i32 (...) @lb_throttle()
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %68

47:                                               ; preds = %31
  %48 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %14, align 8
  %49 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %52 = call i32 @cros_ec_cmd_xfer(i32 %50, %struct.cros_ec_command* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %68

56:                                               ; preds = %47
  %57 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %58 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EC_RES_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %68

65:                                               ; preds = %56
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %65, %62, %55, %46
  %69 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %70 = call i32 @kfree(%struct.cros_ec_command* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %28, %20
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev*) #1

declare dso_local i32 @lb_throttle(...) #1

declare dso_local i32 @cros_ec_cmd_xfer(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
