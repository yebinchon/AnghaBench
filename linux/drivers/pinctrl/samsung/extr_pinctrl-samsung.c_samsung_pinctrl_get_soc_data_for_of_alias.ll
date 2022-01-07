; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_get_soc_data_for_of_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_get_soc_data_for_of_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pin_ctrl = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.samsung_pinctrl_of_match_data = type { i32, %struct.samsung_pin_ctrl* }

@.str = private unnamed_addr constant [8 x i8] c"pinctrl\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to get alias id\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid alias id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.samsung_pin_ctrl* (%struct.platform_device*)* @samsung_pinctrl_get_soc_data_for_of_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.samsung_pin_ctrl* @samsung_pinctrl_get_soc_data_for_of_alias(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.samsung_pin_ctrl*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.samsung_pinctrl_of_match_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i32 @of_alias_get_id(%struct.device_node* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store %struct.samsung_pin_ctrl* null, %struct.samsung_pin_ctrl** %2, align 8
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.samsung_pinctrl_of_match_data* @of_device_get_match_data(%struct.TYPE_3__* %21)
  store %struct.samsung_pinctrl_of_match_data* %22, %struct.samsung_pinctrl_of_match_data** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.samsung_pinctrl_of_match_data*, %struct.samsung_pinctrl_of_match_data** %5, align 8
  %25 = getelementptr inbounds %struct.samsung_pinctrl_of_match_data, %struct.samsung_pinctrl_of_match_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  store %struct.samsung_pin_ctrl* null, %struct.samsung_pin_ctrl** %2, align 8
  br label %40

33:                                               ; preds = %19
  %34 = load %struct.samsung_pinctrl_of_match_data*, %struct.samsung_pinctrl_of_match_data** %5, align 8
  %35 = getelementptr inbounds %struct.samsung_pinctrl_of_match_data, %struct.samsung_pinctrl_of_match_data* %34, i32 0, i32 1
  %36 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.samsung_pin_ctrl, %struct.samsung_pin_ctrl* %36, i64 %38
  store %struct.samsung_pin_ctrl* %39, %struct.samsung_pin_ctrl** %2, align 8
  br label %40

40:                                               ; preds = %33, %28, %15
  %41 = load %struct.samsung_pin_ctrl*, %struct.samsung_pin_ctrl** %2, align 8
  ret %struct.samsung_pin_ctrl* %41
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local %struct.samsung_pinctrl_of_match_data* @of_device_get_match_data(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
