; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_lis3lv02d_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_lis3lv02d_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32, i32, %struct.acpi_device* }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.acpi_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@lis3_dev = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@lis3lv02d_acpi_init = common dso_local global i32 0, align 4
@lis3lv02d_acpi_read = common dso_local global i32 0, align 4
@lis3lv02d_acpi_write = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@ACPI_MDPS_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Using custom axes %d,%d,%d\0A\00", align 1
@lis3lv02d_dmi_ids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"laptop model unknown, using default axes configuration\0A\00", align 1
@lis3lv02d_axis_normal = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"HPQ6000\00", align 1
@hp_accel_i8042_filter = common dso_local global i32 0, align 4
@hpled_led = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@delayed_set_status_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @lis3lv02d_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3lv02d_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = icmp ne %struct.acpi_device* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  store %struct.acpi_device* %11, %struct.acpi_device** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 4), align 8
  %12 = load i32, i32* @lis3lv02d_acpi_init, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 3), align 8
  %13 = load i32, i32* @lis3lv02d_acpi_read, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 2), align 4
  %14 = load i32, i32* @lis3lv02d_acpi_write, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 1), align 8
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = call i32 @acpi_device_name(%struct.acpi_device* %15)
  %17 = load i32, i32* @DRIVER_NAME, align 4
  %18 = call i32 @strcpy(i32 %16, i32 %17)
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = call i32 @acpi_device_class(%struct.acpi_device* %19)
  %21 = load i32, i32* @ACPI_MDPS_CLASS, align 4
  %22 = call i32 @strcpy(i32 %20, i32 %21)
  %23 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 1
  store %struct.TYPE_7__* @lis3_dev, %struct.TYPE_7__** %24, align 8
  %25 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %26 = call i32 @lis3lv02d_enum_resources(%struct.acpi_device* %25)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 0, i32 2), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %10
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 0, i32 1), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 0, i32 2), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 0, i32 1), align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lis3_dev, i32 0, i32 0, i32 0), align 8
  %39 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37, i64 %38)
  br label %47

40:                                               ; preds = %32, %29, %10
  %41 = load i32, i32* @lis3lv02d_dmi_ids, align 4
  %42 = call i64 @dmi_check_system(i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @lis3_dev to i8*), i8* align 8 bitcast (%struct.TYPE_8__* @lis3lv02d_axis_normal to i8*), i64 24, i1 false)
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %35
  %48 = call i32 @lis3lv02d_init_device(%struct.TYPE_7__* @lis3_dev)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %75

53:                                               ; preds = %47
  %54 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %55 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %54, i32 0, i32 0
  %56 = call i32 @dev_name(i32* %55)
  %57 = call i64 @strstr(i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @hp_accel_i8042_filter, align 4
  %61 = call i32 @i8042_install_filter(i32 %60)
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* @delayed_set_status_worker, align 4
  %64 = call i32 @INIT_WORK(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hpled_led, i32 0, i32 0), i32 %63)
  %65 = call i32 @led_classdev_register(i32* null, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hpled_led, i32 0, i32 1))
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = call i32 @lis3lv02d_joystick_disable(%struct.TYPE_7__* @lis3_dev)
  %70 = call i32 @lis3lv02d_poweroff(%struct.TYPE_7__* @lis3_dev)
  %71 = call i32 @flush_work(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hpled_led, i32 0, i32 0))
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %68, %51, %7
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @lis3lv02d_enum_resources(%struct.acpi_device*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @dmi_check_system(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lis3lv02d_init_device(%struct.TYPE_7__*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @i8042_install_filter(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, i32*) #1

declare dso_local i32 @lis3lv02d_joystick_disable(%struct.TYPE_7__*) #1

declare dso_local i32 @lis3lv02d_poweroff(%struct.TYPE_7__*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
