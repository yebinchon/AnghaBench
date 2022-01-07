; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_st-poweroff.c_st_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_st-poweroff.c_st_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_syscfg = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }

@st_reset_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@st_restart_syscfg = common dso_local global %struct.reset_syscfg* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No syscfg phandle specified\0A\00", align 1
@st_restart_nb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load i32, i32* @st_reset_of_match, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.of_device_id* @of_match_device(i32 %13, %struct.device* %14)
  store %struct.of_device_id* %15, %struct.of_device_id** %5, align 8
  %16 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %17 = icmp ne %struct.of_device_id* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.reset_syscfg*
  store %struct.reset_syscfg* %25, %struct.reset_syscfg** @st_restart_syscfg, align 8
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.reset_syscfg*, %struct.reset_syscfg** @st_restart_syscfg, align 8
  %29 = getelementptr inbounds %struct.reset_syscfg, %struct.reset_syscfg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.reset_syscfg*, %struct.reset_syscfg** @st_restart_syscfg, align 8
  %31 = getelementptr inbounds %struct.reset_syscfg, %struct.reset_syscfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.reset_syscfg*, %struct.reset_syscfg** @st_restart_syscfg, align 8
  %39 = getelementptr inbounds %struct.reset_syscfg, %struct.reset_syscfg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %21
  %43 = call i32 @register_restart_handler(i32* @st_restart_nb)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %35, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @register_restart_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
