; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbsm_data = type { i32, i32, %struct.i2c_client*, %struct.gpio_chip }
%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.gpio_chip = type { i32, i32, i32, %struct.device*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@SBSM_CMD_BATSYSSTATE = common dso_local global i32 0, align 4
@SBSM_CMD_BATSYSSTATECONT = common dso_local global i32 0, align 4
@sbsm_gpio_get_value = common dso_local global i32 0, align 4
@sbsm_gpio_direction_input = common dso_local global i32 0, align 4
@SBSM_MAX_BATS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"devm_gpiochip_add_data failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbsm_data*)* @sbsm_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbsm_gpio_setup(%struct.sbsm_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbsm_data*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.sbsm_data* %0, %struct.sbsm_data** %3, align 8
  %8 = load %struct.sbsm_data*, %struct.sbsm_data** %3, align 8
  %9 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %8, i32 0, i32 3
  store %struct.gpio_chip* %9, %struct.gpio_chip** %4, align 8
  %10 = load %struct.sbsm_data*, %struct.sbsm_data** %3, align 8
  %11 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %10, i32 0, i32 2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call i32 @device_property_present(%struct.device* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %21 = load i32, i32* @SBSM_CMD_BATSYSSTATE, align 4
  %22 = call i32 @sbsm_read_word(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %79

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.sbsm_data*, %struct.sbsm_data** %3, align 8
  %30 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @SBSM_CMD_BATSYSSTATECONT, align 4
  %33 = call i32 @sbsm_read_word(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %79

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.sbsm_data*, %struct.sbsm_data** %3, align 8
  %41 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @sbsm_gpio_get_value, align 4
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @sbsm_gpio_direction_input, align 4
  %46 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %47 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 4
  %52 = load i32, i32* @SBSM_MAX_BATS, align 4
  %53 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %54 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %59 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %62 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %61, i32 0, i32 3
  store %struct.device* %60, %struct.device** %62, align 8
  %63 = load i32, i32* @THIS_MODULE, align 4
  %64 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %65 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %68 = load %struct.sbsm_data*, %struct.sbsm_data** %3, align 8
  %69 = call i32 @devm_gpiochip_add_data(%struct.device* %66, %struct.gpio_chip* %67, %struct.sbsm_data* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %38
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %79

77:                                               ; preds = %38
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %72, %36, %25, %18
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @device_property_present(%struct.device*, i8*) #1

declare dso_local i32 @sbsm_read_word(%struct.i2c_client*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, %struct.sbsm_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
