; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gbphy_device_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_pwm_chip = type { i64, %struct.pwm_chip, %struct.gb_connection* }
%struct.pwm_chip = type { i32, i64, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_pwm_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to register PWM: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)* @gb_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_pwm_probe(%struct.gbphy_device* %0, %struct.gbphy_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbphy_device*, align 8
  %5 = alloca %struct.gbphy_device_id*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.gb_pwm_chip*, align 8
  %8 = alloca %struct.pwm_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %4, align 8
  store %struct.gbphy_device_id* %1, %struct.gbphy_device_id** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gb_pwm_chip* @kzalloc(i32 48, i32 %10)
  store %struct.gb_pwm_chip* %11, %struct.gb_pwm_chip** %7, align 8
  %12 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %7, align 8
  %13 = icmp ne %struct.gb_pwm_chip* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %94

17:                                               ; preds = %2
  %18 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %19 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %22 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = call %struct.gb_connection* @gb_connection_create(i32 %20, i32 %26, i32* null)
  store %struct.gb_connection* %27, %struct.gb_connection** %6, align 8
  %28 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %29 = call i64 @IS_ERR(%struct.gb_connection* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.gb_connection* %32)
  store i32 %33, i32* %9, align 4
  br label %90

34:                                               ; preds = %17
  %35 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %36 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %7, align 8
  %37 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %36, i32 0, i32 2
  store %struct.gb_connection* %35, %struct.gb_connection** %37, align 8
  %38 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %39 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %7, align 8
  %40 = call i32 @gb_connection_set_data(%struct.gb_connection* %38, %struct.gb_pwm_chip* %39)
  %41 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %42 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %7, align 8
  %43 = call i32 @gb_gbphy_set_data(%struct.gbphy_device* %41, %struct.gb_pwm_chip* %42)
  %44 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %45 = call i32 @gb_connection_enable(%struct.gb_connection* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %87

49:                                               ; preds = %34
  %50 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %7, align 8
  %51 = call i32 @gb_pwm_count_operation(%struct.gb_pwm_chip* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %84

55:                                               ; preds = %49
  %56 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %7, align 8
  %57 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %56, i32 0, i32 1
  store %struct.pwm_chip* %57, %struct.pwm_chip** %8, align 8
  %58 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %59 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %58, i32 0, i32 0
  %60 = load %struct.pwm_chip*, %struct.pwm_chip** %8, align 8
  %61 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load %struct.pwm_chip*, %struct.pwm_chip** %8, align 8
  %63 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %62, i32 0, i32 2
  store i32* @gb_pwm_ops, i32** %63, align 8
  %64 = load %struct.pwm_chip*, %struct.pwm_chip** %8, align 8
  %65 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  %66 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %7, align 8
  %67 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  %70 = load %struct.pwm_chip*, %struct.pwm_chip** %8, align 8
  %71 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.pwm_chip*, %struct.pwm_chip** %8, align 8
  %73 = call i32 @pwmchip_add(%struct.pwm_chip* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %55
  %77 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %78 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %77, i32 0, i32 0
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %84

81:                                               ; preds = %55
  %82 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %83 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %82)
  store i32 0, i32* %3, align 4
  br label %94

84:                                               ; preds = %76, %54
  %85 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %86 = call i32 @gb_connection_disable(%struct.gb_connection* %85)
  br label %87

87:                                               ; preds = %84, %48
  %88 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %89 = call i32 @gb_connection_destroy(%struct.gb_connection* %88)
  br label %90

90:                                               ; preds = %87, %31
  %91 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %7, align 8
  %92 = call i32 @kfree(%struct.gb_pwm_chip* %91)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %81, %14
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.gb_pwm_chip* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create(i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_pwm_chip*) #1

declare dso_local i32 @gb_gbphy_set_data(%struct.gbphy_device*, %struct.gb_pwm_chip*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gb_pwm_count_operation(%struct.gb_pwm_chip*) #1

declare dso_local i32 @pwmchip_add(%struct.pwm_chip*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
