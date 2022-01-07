; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pinconf_apply_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pinconf_apply_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_setting = type { i32, %struct.TYPE_6__, %struct.pinctrl_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pinctrl_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pinconf_ops* }
%struct.pinconf_ops = type { i32 (%struct.pinctrl_dev*, i32, i32, i32)*, i32 (%struct.pinctrl_dev*, i32, i32, i32)* }

@.str = private unnamed_addr constant [17 x i8] c"missing confops\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"missing pin_config_set op\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"pin_config_set op failed for pin %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"missing pin_config_group_set op\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"pin_config_group_set op failed for group %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinconf_apply_setting(%struct.pinctrl_setting* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pinctrl_setting*, align 8
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinconf_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.pinctrl_setting* %0, %struct.pinctrl_setting** %3, align 8
  %7 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %8 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %7, i32 0, i32 2
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  store %struct.pinctrl_dev* %9, %struct.pinctrl_dev** %4, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.pinconf_ops*, %struct.pinconf_ops** %13, align 8
  store %struct.pinconf_ops* %14, %struct.pinconf_ops** %5, align 8
  %15 = load %struct.pinconf_ops*, %struct.pinconf_ops** %5, align 8
  %16 = icmp ne %struct.pinconf_ops* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %126

24:                                               ; preds = %1
  %25 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %26 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %122 [
    i32 128, label %28
    i32 129, label %75
  ]

28:                                               ; preds = %24
  %29 = load %struct.pinconf_ops*, %struct.pinconf_ops** %5, align 8
  %30 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.pinctrl_dev*, i32, i32, i32)*, i32 (%struct.pinctrl_dev*, i32, i32, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.pinctrl_dev*, i32, i32, i32)* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %126

40:                                               ; preds = %28
  %41 = load %struct.pinconf_ops*, %struct.pinconf_ops** %5, align 8
  %42 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %41, i32 0, i32 0
  %43 = load i32 (%struct.pinctrl_dev*, i32, i32, i32)*, i32 (%struct.pinctrl_dev*, i32, i32, i32)** %42, align 8
  %44 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %45 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %46 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %51 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %56 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 %43(%struct.pinctrl_dev* %44, i32 %49, i32 %54, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %40
  %64 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %68 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %126

74:                                               ; preds = %40
  br label %125

75:                                               ; preds = %24
  %76 = load %struct.pinconf_ops*, %struct.pinconf_ops** %5, align 8
  %77 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %76, i32 0, i32 1
  %78 = load i32 (%struct.pinctrl_dev*, i32, i32, i32)*, i32 (%struct.pinctrl_dev*, i32, i32, i32)** %77, align 8
  %79 = icmp ne i32 (%struct.pinctrl_dev*, i32, i32, i32)* %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %126

87:                                               ; preds = %75
  %88 = load %struct.pinconf_ops*, %struct.pinconf_ops** %5, align 8
  %89 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %88, i32 0, i32 1
  %90 = load i32 (%struct.pinctrl_dev*, i32, i32, i32)*, i32 (%struct.pinctrl_dev*, i32, i32, i32)** %89, align 8
  %91 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %92 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %93 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %98 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %103 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 %90(%struct.pinctrl_dev* %91, i32 %96, i32 %101, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %87
  %111 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %112 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.pinctrl_setting*, %struct.pinctrl_setting** %3, align 8
  %115 = getelementptr inbounds %struct.pinctrl_setting, %struct.pinctrl_setting* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %126

121:                                              ; preds = %87
  br label %125

122:                                              ; preds = %24
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %126

125:                                              ; preds = %121, %74
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %122, %110, %80, %63, %33, %17
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
