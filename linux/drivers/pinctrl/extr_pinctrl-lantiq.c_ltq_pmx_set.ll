; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_ltq_pmx_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_ltq_pmx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ltq_pinmux_info = type { i32 (%struct.pinctrl_dev*, i32, i32)*, i32, i32*, %struct.ltq_pin_group* }
%struct.ltq_pin_group = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to set the pin group: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not find mfp for pin %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to apply mux %d for pin %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @ltq_pmx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_pmx_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ltq_pinmux_info*, align 8
  %9 = alloca %struct.ltq_pin_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.ltq_pinmux_info* %15, %struct.ltq_pinmux_info** %8, align 8
  %16 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %17 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %16, i32 0, i32 3
  %18 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %18, i64 %20
  store %struct.ltq_pin_group* %21, %struct.ltq_pin_group** %9, align 8
  %22 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %9, align 8
  %23 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %9, align 8
  %28 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %29 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %9, align 8
  %30 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @match_group_mux(%struct.ltq_pin_group* %27, %struct.ltq_pinmux_info* %28, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %26, %3
  %35 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %36 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %39 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %38, i32 0, i32 3
  %40 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %40, i64 %42
  %44 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %115

49:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %111, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %9, align 8
  %53 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %50
  %57 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %58 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %9, align 8
  %59 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @match_mfp(%struct.ltq_pinmux_info* %57, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %56
  %69 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %70 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %9, align 8
  %73 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %115

82:                                               ; preds = %56
  %83 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %84 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load %struct.ltq_pin_group*, %struct.ltq_pin_group** %9, align 8
  %90 = getelementptr inbounds %struct.ltq_pin_group, %struct.ltq_pin_group* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @match_mux(i32* %88, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %94 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %93, i32 0, i32 0
  %95 = load i32 (%struct.pinctrl_dev*, i32, i32)*, i32 (%struct.pinctrl_dev*, i32, i32)** %94, align 8
  %96 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 %95(%struct.pinctrl_dev* %96, i32 %97, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %82
  %103 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %104 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %4, align 4
  br label %115

110:                                              ; preds = %82
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %50

114:                                              ; preds = %50
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %102, %68, %34
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @match_group_mux(%struct.ltq_pin_group*, %struct.ltq_pinmux_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @match_mfp(%struct.ltq_pinmux_info*, i32) #1

declare dso_local i32 @match_mux(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
