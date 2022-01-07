; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_config_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_config_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pmic_mpp_pad* }
%struct.pmic_mpp_pad = type { i32, i64, i8*, i8*, i64, i8*, i64, i64, i64, i64, i32 }
%struct.seq_file = type { i32 }
%struct.pmic_mpp_state = type { i32 }

@pmic_mpp_config_dbg_show.biases = internal constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"0.6kOhm\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"10kOhm\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"30kOhm\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" mpp%-2d:\00", align 1
@PMIC_MPP_PHYSICAL_OFFSET = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c" ---\00", align 1
@PMIC_MPP_REG_RT_STS = common dso_local global i32 0, align 4
@PMIC_MPP_REG_RT_STS_VAL_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" %-4s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %-7s\00", align 1
@pmic_mpp_functions = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c" vin-%d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" %-8s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" dtest%d\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c" paired\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @pmic_mpp_config_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmic_mpp_config_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmic_mpp_state*, align 8
  %8 = alloca %struct.pmic_mpp_pad*, align 8
  %9 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = call %struct.pmic_mpp_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.pmic_mpp_state* %11, %struct.pmic_mpp_state** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %20, align 8
  store %struct.pmic_mpp_pad* %21, %struct.pmic_mpp_pad** %8, align 8
  %22 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** @PMIC_MPP_PHYSICAL_OFFSET, align 8
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  %28 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %29 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %34 = call i32 @seq_puts(%struct.seq_file* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %122

35:                                               ; preds = %3
  %36 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %37 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %7, align 8
  %42 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %43 = load i32, i32* @PMIC_MPP_REG_RT_STS, align 4
  %44 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %41, %struct.pmic_mpp_pad* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %122

48:                                               ; preds = %40
  %49 = load i32, i32* @PMIC_MPP_REG_RT_STS_VAL_MASK, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %54 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %48, %35
  %56 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %57 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %58 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %63 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %65 = load i8**, i8*** @pmic_mpp_functions, align 8
  %66 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %67 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %73 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %74 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %75)
  %77 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %78 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %79 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %80)
  %82 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %83 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %55
  %87 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %88 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %89 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [4 x i8*], [4 x i8*]* @pmic_mpp_config_dbg_show.biases, i64 0, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %86, %55
  %95 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %96 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %97 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)
  %102 = call i32 @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %101)
  %103 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %104 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %94
  %108 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %109 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %110 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %107, %94
  %114 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %115 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %120 = call i32 @seq_puts(%struct.seq_file* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %113
  br label %122

122:                                              ; preds = %47, %121, %32
  ret void
}

declare dso_local %struct.pmic_mpp_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @pmic_mpp_read(%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
