; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.chv_pinctrl = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pin %d set config %d arg %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @chv_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.chv_pinctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = call %struct.chv_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.chv_pinctrl* %16, %struct.chv_pinctrl** %10, align 8
  %17 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @chv_pad_locked(%struct.chv_pinctrl* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %87

24:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %83, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %86

29:                                               ; preds = %25
  %30 = load i64*, i64** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pinconf_to_config_param(i64 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i64*, i64** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pinconf_to_config_argument(i64 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %72 [
    i32 132, label %43
    i32 130, label %43
    i32 131, label %43
    i32 128, label %54
    i32 129, label %63
  ]

43:                                               ; preds = %29, %29, %29
  %44 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @chv_config_set_pull(%struct.chv_pinctrl* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %5, align 4
  br label %87

53:                                               ; preds = %43
  br label %75

54:                                               ; preds = %29
  %55 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @chv_config_set_oden(%struct.chv_pinctrl* %55, i32 %56, i32 0)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %87

62:                                               ; preds = %54
  br label %75

63:                                               ; preds = %29
  %64 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %10, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @chv_config_set_oden(%struct.chv_pinctrl* %64, i32 %65, i32 1)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %87

71:                                               ; preds = %63
  br label %75

72:                                               ; preds = %29
  %73 = load i32, i32* @ENOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %87

75:                                               ; preds = %71, %62, %53
  %76 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %10, align 8
  %77 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %25

86:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %72, %69, %60, %51, %21
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.chv_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @chv_pad_locked(%struct.chv_pinctrl*, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @chv_config_set_pull(%struct.chv_pinctrl*, i32, i32, i32) #1

declare dso_local i32 @chv_config_set_oden(%struct.chv_pinctrl*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
