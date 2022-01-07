; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pctl_dt_node_to_map_pull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pctl_dt_node_to_map_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmt_pinctrl_data = type { i32*, i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid wm,pull %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to match pin %d to group\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_DISABLE = common dso_local global i64 0, align 8
@PIN_CONFIG_BIAS_PULL_DOWN = common dso_local global i64 0, align 8
@PIN_CONFIG_BIAS_PULL_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid pull state %d - disabling\0A\00", align 1
@PIN_MAP_TYPE_CONFIGS_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmt_pinctrl_data*, %struct.device_node*, i32, i32, %struct.pinctrl_map**)* @wmt_pctl_dt_node_to_map_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_pctl_dt_node_to_map_pull(%struct.wmt_pinctrl_data* %0, %struct.device_node* %1, i32 %2, i32 %3, %struct.pinctrl_map** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmt_pinctrl_data*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pinctrl_map**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.pinctrl_map*, align 8
  store %struct.wmt_pinctrl_data* %0, %struct.wmt_pinctrl_data** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.pinctrl_map** %4, %struct.pinctrl_map*** %11, align 8
  %15 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %16 = load %struct.pinctrl_map*, %struct.pinctrl_map** %15, align 8
  store %struct.pinctrl_map* %16, %struct.pinctrl_map** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %21 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %98

27:                                               ; preds = %5
  %28 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @wmt_pctl_find_group_by_pin(%struct.wmt_pinctrl_data* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %35 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %98

40:                                               ; preds = %27
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i64* @kzalloc(i32 8, i32 %41)
  store i64* %42, i64** %13, align 8
  %43 = load i64*, i64** %13, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %98

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %62 [
    i32 0, label %50
    i32 1, label %54
    i32 2, label %58
  ]

50:                                               ; preds = %48
  %51 = load i64, i64* @PIN_CONFIG_BIAS_DISABLE, align 8
  %52 = load i64*, i64** %13, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 %51, i64* %53, align 8
  br label %71

54:                                               ; preds = %48
  %55 = load i64, i64* @PIN_CONFIG_BIAS_PULL_DOWN, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %55, i64* %57, align 8
  br label %71

58:                                               ; preds = %48
  %59 = load i64, i64* @PIN_CONFIG_BIAS_PULL_UP, align 8
  %60 = load i64*, i64** %13, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 %59, i64* %61, align 8
  br label %71

62:                                               ; preds = %48
  %63 = load i64, i64* @PIN_CONFIG_BIAS_DISABLE, align 8
  %64 = load i64*, i64** %13, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %67 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %62, %58, %54, %50
  %72 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_PIN, align 4
  %73 = load %struct.pinctrl_map*, %struct.pinctrl_map** %14, align 8
  %74 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %76 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pinctrl_map*, %struct.pinctrl_map** %14, align 8
  %83 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 %81, i32* %85, align 4
  %86 = load i64*, i64** %13, align 8
  %87 = load %struct.pinctrl_map*, %struct.pinctrl_map** %14, align 8
  %88 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i64* %86, i64** %90, align 8
  %91 = load %struct.pinctrl_map*, %struct.pinctrl_map** %14, align 8
  %92 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 8
  %95 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %96 = load %struct.pinctrl_map*, %struct.pinctrl_map** %95, align 8
  %97 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %96, i32 1
  store %struct.pinctrl_map* %97, %struct.pinctrl_map** %95, align 8
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %71, %45, %33, %19
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wmt_pctl_find_group_by_pin(%struct.wmt_pinctrl_data*, i32) #1

declare dso_local i64* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
