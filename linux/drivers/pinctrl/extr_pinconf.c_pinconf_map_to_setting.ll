; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pinconf_map_to_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pinconf_map_to_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_map = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.pinctrl_setting = type { i32, %struct.TYPE_6__, %struct.pinctrl_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pinctrl_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"could not map pin config for \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"could not map group config for \22%s\22\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinconf_map_to_setting(%struct.pinctrl_map* %0, %struct.pinctrl_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_map*, align 8
  %5 = alloca %struct.pinctrl_setting*, align 8
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pinctrl_map* %0, %struct.pinctrl_map** %4, align 8
  store %struct.pinctrl_setting* %1, %struct.pinctrl_setting** %5, align 8
  %8 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %9 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %8, i32 0, i32 2
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  store %struct.pinctrl_dev* %10, %struct.pinctrl_dev** %6, align 8
  %11 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %12 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %68 [
    i32 128, label %14
    i32 129, label %41
  ]

14:                                               ; preds = %2
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %17 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pin_get_from_name(%struct.pinctrl_dev* %15, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %14
  %25 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %26 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %29 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %90

35:                                               ; preds = %14
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %38 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  br label %71

41:                                               ; preds = %2
  %42 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %43 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %44 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pinctrl_get_group_selector(%struct.pinctrl_dev* %42, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %53 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %56 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %90

62:                                               ; preds = %41
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %65 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  br label %71

68:                                               ; preds = %2
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %90

71:                                               ; preds = %62, %35
  %72 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %73 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %78 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 4
  %81 = load %struct.pinctrl_map*, %struct.pinctrl_map** %4, align 8
  %82 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %5, align 8
  %87 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %71, %68, %51, %24
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @pin_get_from_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pinctrl_get_group_selector(%struct.pinctrl_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
