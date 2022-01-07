; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_add_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_add_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl = type { i32 }
%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_map = type { i32, i32, i32, i32 }
%struct.pinctrl_state = type { i32 }
%struct.pinctrl_setting = type { i32, i32, i32, %struct.pinctrl_dev* }

@PIN_MAP_TYPE_DUMMY_STATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"unknown pinctrl device %s in map entry, deferring probe\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl*, %struct.pinctrl_dev*, %struct.pinctrl_map*)* @add_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_setting(%struct.pinctrl* %0, %struct.pinctrl_dev* %1, %struct.pinctrl_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl*, align 8
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinctrl_map*, align 8
  %8 = alloca %struct.pinctrl_state*, align 8
  %9 = alloca %struct.pinctrl_setting*, align 8
  %10 = alloca i32, align 4
  store %struct.pinctrl* %0, %struct.pinctrl** %5, align 8
  store %struct.pinctrl_dev* %1, %struct.pinctrl_dev** %6, align 8
  store %struct.pinctrl_map* %2, %struct.pinctrl_map** %7, align 8
  %11 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %12 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %13 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pinctrl_state* @find_state(%struct.pinctrl* %11, i32 %14)
  store %struct.pinctrl_state* %15, %struct.pinctrl_state** %8, align 8
  %16 = load %struct.pinctrl_state*, %struct.pinctrl_state** %8, align 8
  %17 = icmp ne %struct.pinctrl_state* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %20 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %21 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pinctrl_state* @create_state(%struct.pinctrl* %19, i32 %22)
  store %struct.pinctrl_state* %23, %struct.pinctrl_state** %8, align 8
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.pinctrl_state*, %struct.pinctrl_state** %8, align 8
  %26 = call i64 @IS_ERR(%struct.pinctrl_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.pinctrl_state*, %struct.pinctrl_state** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.pinctrl_state* %29)
  store i32 %30, i32* %4, align 4
  br label %127

31:                                               ; preds = %24
  %32 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %33 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PIN_MAP_TYPE_DUMMY_STATE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %127

38:                                               ; preds = %31
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.pinctrl_setting* @kzalloc(i32 24, i32 %39)
  store %struct.pinctrl_setting* %40, %struct.pinctrl_setting** %9, align 8
  %41 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %42 = icmp ne %struct.pinctrl_setting* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %127

46:                                               ; preds = %38
  %47 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %48 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %51 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %53 = icmp ne %struct.pinctrl_dev* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %56 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %57 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %56, i32 0, i32 3
  store %struct.pinctrl_dev* %55, %struct.pinctrl_dev** %57, align 8
  br label %65

58:                                               ; preds = %46
  %59 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %60 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.pinctrl_dev* @get_pinctrl_dev_from_devname(i32 %61)
  %63 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %64 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %63, i32 0, i32 3
  store %struct.pinctrl_dev* %62, %struct.pinctrl_dev** %64, align 8
  br label %65

65:                                               ; preds = %58, %54
  %66 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %67 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %66, i32 0, i32 3
  %68 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %67, align 8
  %69 = icmp ne %struct.pinctrl_dev* %68, null
  br i1 %69, label %94, label %70

70:                                               ; preds = %65
  %71 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %72 = call i32 @kfree(%struct.pinctrl_setting* %71)
  %73 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %74 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %77 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcmp(i32 %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %127

84:                                               ; preds = %70
  %85 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %86 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %89 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_info(i32 %87, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EPROBE_DEFER, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %127

94:                                               ; preds = %65
  %95 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %96 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %99 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %101 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %111 [
    i32 128, label %103
    i32 129, label %107
    i32 130, label %107
  ]

103:                                              ; preds = %94
  %104 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %105 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %106 = call i32 @pinmux_map_to_setting(%struct.pinctrl_map* %104, %struct.pinctrl_setting* %105)
  store i32 %106, i32* %10, align 4
  br label %114

107:                                              ; preds = %94, %94
  %108 = load %struct.pinctrl_map*, %struct.pinctrl_map** %7, align 8
  %109 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %110 = call i32 @pinconf_map_to_setting(%struct.pinctrl_map* %108, %struct.pinctrl_setting* %109)
  store i32 %110, i32* %10, align 4
  br label %114

111:                                              ; preds = %94
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %111, %107, %103
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %119 = call i32 @kfree(%struct.pinctrl_setting* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %127

121:                                              ; preds = %114
  %122 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %9, align 8
  %123 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %122, i32 0, i32 1
  %124 = load %struct.pinctrl_state*, %struct.pinctrl_state** %8, align 8
  %125 = getelementptr inbounds %struct.pinctrl_state, %struct.pinctrl_state* %124, i32 0, i32 0
  %126 = call i32 @list_add_tail(i32* %123, i32* %125)
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %121, %117, %84, %81, %43, %37, %28
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.pinctrl_state* @find_state(%struct.pinctrl*, i32) #1

declare dso_local %struct.pinctrl_state* @create_state(%struct.pinctrl*, i32) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_state*) #1

declare dso_local %struct.pinctrl_setting* @kzalloc(i32, i32) #1

declare dso_local %struct.pinctrl_dev* @get_pinctrl_dev_from_devname(i32) #1

declare dso_local i32 @kfree(%struct.pinctrl_setting*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @pinmux_map_to_setting(%struct.pinctrl_map*, %struct.pinctrl_setting*) #1

declare dso_local i32 @pinconf_map_to_setting(%struct.pinctrl_map*, %struct.pinctrl_setting*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
