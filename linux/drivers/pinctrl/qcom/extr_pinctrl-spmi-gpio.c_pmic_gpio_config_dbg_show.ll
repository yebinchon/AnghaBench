; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_config_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_config_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pmic_gpio_pad* }
%struct.pmic_gpio_pad = type { i32, i32, i8*, i64, i64, i64, i8*, i8*, i64, i64, i32, i64 }
%struct.seq_file = type { i32 }
%struct.pmic_gpio_state = type { i32 }

@pmic_gpio_config_dbg_show.biases = internal constant [6 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"pull-up 30uA\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"pull-up 1.5uA\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"pull-up 31.5uA\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"pull-up 1.5uA + 30uA boost\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"pull-down 10uA\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"no pull\00", align 1
@pmic_gpio_config_dbg_show.buffer_types = internal constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [10 x i8] c"push-pull\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"open-drain\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"open-source\00", align 1
@pmic_gpio_config_dbg_show.strengths = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" gpio%-2d:\00", align 1
@PMIC_GPIO_PHYSICAL_OFFSET = common dso_local global i8* null, align 8
@PMIC_GPIO_REG_EN_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MASTER_EN_SHIFT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c" ---\00", align 1
@PMIC_MPP_REG_RT_STS = common dso_local global i32 0, align 4
@PMIC_MPP_REG_RT_STS_VAL_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_FUNC_INDEX_FUNC3 = common dso_local global i32 0, align 4
@PMIC_GPIO_FUNC_INDEX_DTEST1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c" analog-pass\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" %-4s\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" %-7s\00", align 1
@pmic_gpio_functions = common dso_local global i8** null, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c" vin-%d\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c" %-27s\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c" %-10s\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c" atest-%d\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c" dtest-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @pmic_gpio_config_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmic_gpio_config_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmic_gpio_state*, align 8
  %8 = alloca %struct.pmic_gpio_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %13 = call %struct.pmic_gpio_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.pmic_gpio_state* %13, %struct.pmic_gpio_state** %7, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %22, align 8
  store %struct.pmic_gpio_pad* %23, %struct.pmic_gpio_pad** %8, align 8
  %24 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** @PMIC_GPIO_PHYSICAL_OFFSET, align 8
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %28)
  %30 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %7, align 8
  %31 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %32 = load i32, i32* @PMIC_GPIO_REG_EN_CTL, align 4
  %33 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %30, %struct.pmic_gpio_pad* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PMIC_GPIO_REG_MASTER_EN_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %3
  %42 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %153

44:                                               ; preds = %36
  %45 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %46 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %7, align 8
  %51 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %52 = load i32, i32* @PMIC_MPP_REG_RT_STS, align 4
  %53 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %50, %struct.pmic_gpio_pad* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %153

57:                                               ; preds = %49
  %58 = load i32, i32* @PMIC_MPP_REG_RT_STS_VAL_MASK, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %63 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %57, %44
  %65 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %66 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %69 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %64
  %73 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %74 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PMIC_GPIO_FUNC_INDEX_FUNC3, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* @PMIC_GPIO_FUNC_INDEX_DTEST1, align 4
  %80 = load i32, i32* @PMIC_GPIO_FUNC_INDEX_FUNC3, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %78, %72, %64
  %85 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %86 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %91 = call i32 @seq_puts(%struct.seq_file* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %101

92:                                               ; preds = %84
  %93 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %94 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %95 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)
  %100 = call i32 @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %92, %89
  %102 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %103 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %104 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %109 = call i32 @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %111 = load i8**, i8*** @pmic_gpio_functions, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %115)
  %117 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %118 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %119 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @seq_printf(%struct.seq_file* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* %120)
  %122 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %123 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %124 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds [6 x i8*], [6 x i8*]* @pmic_gpio_config_dbg_show.biases, i64 0, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @seq_printf(%struct.seq_file* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %127)
  %129 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %130 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %131 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds [3 x i8*], [3 x i8*]* @pmic_gpio_config_dbg_show.buffer_types, i64 0, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @seq_printf(%struct.seq_file* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %134)
  %136 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %137 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %138 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds [4 x i8*], [4 x i8*]* @pmic_gpio_config_dbg_show.strengths, i64 0, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @seq_printf(%struct.seq_file* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %141)
  %143 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %144 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %145 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %144, i32 0, i32 6
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @seq_printf(%struct.seq_file* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* %146)
  %148 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %149 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %8, align 8
  %150 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %149, i32 0, i32 7
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %56, %101, %41
  ret void
}

declare dso_local %struct.pmic_gpio_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @pmic_gpio_read(%struct.pmic_gpio_state*, %struct.pmic_gpio_pad*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
