; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_set_pwr_opmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_set_pwr_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.typec_partner = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"power_operation_mode\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@partner_match = common dso_local global i32 0, align 4
@TYPEC_PWR_MODE_PD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"supports_usb_power_delivery\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typec_set_pwr_opmode(%struct.typec_port* %0, i32 %1) #0 {
  %3 = alloca %struct.typec_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.typec_partner*, align 8
  store %struct.typec_port* %0, %struct.typec_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %8 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %52

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %16 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %18 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @sysfs_notify(i32* %19, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %22 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @KOBJ_CHANGE, align 4
  %25 = call i32 @kobject_uevent(i32* %23, i32 %24)
  %26 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %27 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %26, i32 0, i32 1
  %28 = load i32, i32* @partner_match, align 4
  %29 = call %struct.device* @device_find_child(%struct.TYPE_2__* %27, i32* null, i32 %28)
  store %struct.device* %29, %struct.device** %5, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %13
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call %struct.typec_partner* @to_typec_partner(%struct.device* %33)
  store %struct.typec_partner* %34, %struct.typec_partner** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @TYPEC_PWR_MODE_PD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %40 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %45 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = call i32 @sysfs_notify(i32* %47, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %38, %32
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 @put_device(%struct.device* %50)
  br label %52

52:                                               ; preds = %12, %49, %13
  ret void
}

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.device* @device_find_child(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local %struct.typec_partner* @to_typec_partner(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
