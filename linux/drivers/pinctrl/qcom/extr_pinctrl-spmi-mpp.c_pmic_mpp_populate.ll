; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_mpp_state = type { i32 }
%struct.pmic_mpp_pad = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@PMIC_MPP_REG_TYPE = common dso_local global i32 0, align 4
@PMIC_MPP_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"incorrect block type 0x%x at 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PMIC_MPP_REG_SUBTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unknown MPP type 0x%x at 0x%x\0A\00", align 1
@PMIC_MPP_REG_MODE_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_MODE_VALUE_MASK = common dso_local global i32 0, align 4
@PMIC_MPP_REG_MODE_DIR_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_MODE_DIR_MASK = common dso_local global i32 0, align 4
@PMIC_MPP_DIGITAL = common dso_local global i8* null, align 8
@PMIC_MPP_ANALOG = common dso_local global i8* null, align 8
@PMIC_MPP_SINK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"unknown MPP direction\0A\00", align 1
@PMIC_MPP_REG_MODE_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_MODE_FUNCTION_MASK = common dso_local global i32 0, align 4
@PMIC_MPP_SELECTOR_DTEST_FIRST = common dso_local global i32 0, align 4
@PMIC_MPP_SELECTOR_PAIRED = common dso_local global i32 0, align 4
@PMIC_MPP_REG_DIG_VIN_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_VIN_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_VIN_MASK = common dso_local global i32 0, align 4
@PMIC_MPP_REG_DIG_PULL_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_PULL_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_PULL_MASK = common dso_local global i32 0, align 4
@PMIC_MPP_REG_AIN_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_AIN_ROUTE_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_AIN_ROUTE_MASK = common dso_local global i32 0, align 4
@PMIC_MPP_REG_SINK_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_AOUT_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_EN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*)* @pmic_mpp_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_mpp_populate(%struct.pmic_mpp_state* %0, %struct.pmic_mpp_pad* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmic_mpp_state*, align 8
  %5 = alloca %struct.pmic_mpp_pad*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmic_mpp_state* %0, %struct.pmic_mpp_state** %4, align 8
  store %struct.pmic_mpp_pad* %1, %struct.pmic_mpp_pad** %5, align 8
  %11 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %12 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %13 = load i32, i32* @PMIC_MPP_REG_TYPE, align 4
  %14 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %11, %struct.pmic_mpp_pad* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %277

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PMIC_MPP_TYPE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %25 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %29 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %277

34:                                               ; preds = %19
  %35 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %36 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %37 = load i32, i32* @PMIC_MPP_REG_SUBTYPE, align 4
  %38 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %35, %struct.pmic_mpp_pad* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %277

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %51 [
    i32 132, label %45
    i32 129, label %45
    i32 131, label %45
    i32 128, label %45
    i32 133, label %45
    i32 130, label %48
  ]

45:                                               ; preds = %43, %43, %43, %43, %43
  %46 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %47 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %46, i32 0, i32 0
  store i32 4, i32* %47, align 8
  br label %62

48:                                               ; preds = %43
  %49 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %50 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %49, i32 0, i32 0
  store i32 8, i32* %50, align 8
  br label %62

51:                                               ; preds = %43
  %52 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %53 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %57 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %277

62:                                               ; preds = %48, %45
  %63 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %64 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %65 = load i32, i32* @PMIC_MPP_REG_MODE_CTL, align 4
  %66 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %63, %struct.pmic_mpp_pad* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %277

71:                                               ; preds = %62
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PMIC_MPP_REG_MODE_VALUE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %76 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @PMIC_MPP_REG_MODE_DIR_SHIFT, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @PMIC_MPP_REG_MODE_DIR_MASK, align 4
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  switch i32 %83, label %140 [
    i32 135, label %84
    i32 134, label %92
    i32 136, label %100
    i32 140, label %108
    i32 139, label %116
    i32 138, label %124
    i32 137, label %132
  ]

84:                                               ; preds = %71
  %85 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %86 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %88 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %87, i32 0, i32 3
  store i32 0, i32* %88, align 4
  %89 = load i8*, i8** @PMIC_MPP_DIGITAL, align 8
  %90 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %91 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %90, i32 0, i32 13
  store i8* %89, i8** %91, align 8
  br label %147

92:                                               ; preds = %71
  %93 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %94 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  %95 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %96 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %95, i32 0, i32 3
  store i32 1, i32* %96, align 4
  %97 = load i8*, i8** @PMIC_MPP_DIGITAL, align 8
  %98 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %99 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %98, i32 0, i32 13
  store i8* %97, i8** %99, align 8
  br label %147

100:                                              ; preds = %71
  %101 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %102 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %101, i32 0, i32 2
  store i32 1, i32* %102, align 8
  %103 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %104 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %103, i32 0, i32 3
  store i32 1, i32* %104, align 4
  %105 = load i8*, i8** @PMIC_MPP_DIGITAL, align 8
  %106 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %107 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %106, i32 0, i32 13
  store i8* %105, i8** %107, align 8
  br label %147

108:                                              ; preds = %71
  %109 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %110 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  %111 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %112 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %111, i32 0, i32 3
  store i32 1, i32* %112, align 4
  %113 = load i8*, i8** @PMIC_MPP_ANALOG, align 8
  %114 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %115 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %114, i32 0, i32 13
  store i8* %113, i8** %115, align 8
  br label %147

116:                                              ; preds = %71
  %117 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %118 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %120 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %119, i32 0, i32 3
  store i32 0, i32* %120, align 4
  %121 = load i8*, i8** @PMIC_MPP_ANALOG, align 8
  %122 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %123 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %122, i32 0, i32 13
  store i8* %121, i8** %123, align 8
  br label %147

124:                                              ; preds = %71
  %125 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %126 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %125, i32 0, i32 2
  store i32 0, i32* %126, align 8
  %127 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %128 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %127, i32 0, i32 3
  store i32 1, i32* %128, align 4
  %129 = load i8*, i8** @PMIC_MPP_ANALOG, align 8
  %130 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %131 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %130, i32 0, i32 13
  store i8* %129, i8** %131, align 8
  br label %147

132:                                              ; preds = %71
  %133 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %134 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %133, i32 0, i32 2
  store i32 0, i32* %134, align 8
  %135 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %136 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %135, i32 0, i32 3
  store i32 1, i32* %136, align 4
  %137 = load i8*, i8** @PMIC_MPP_SINK, align 8
  %138 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %139 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %138, i32 0, i32 13
  store i8* %137, i8** %139, align 8
  br label %147

140:                                              ; preds = %71
  %141 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %142 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, ...) @dev_err(i32 %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %277

147:                                              ; preds = %132, %124, %116, %108, %100, %92, %84
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @PMIC_MPP_REG_MODE_FUNCTION_SHIFT, align 4
  %150 = ashr i32 %148, %149
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* @PMIC_MPP_REG_MODE_FUNCTION_MASK, align 4
  %152 = load i32, i32* %10, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @PMIC_MPP_SELECTOR_DTEST_FIRST, align 4
  %156 = icmp uge i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %147
  %158 = load i32, i32* %10, align 4
  %159 = add i32 %158, 1
  %160 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %161 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  br label %170

162:                                              ; preds = %147
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @PMIC_MPP_SELECTOR_PAIRED, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %168 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %167, i32 0, i32 5
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %162
  br label %170

170:                                              ; preds = %169, %157
  %171 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %172 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %173 = load i32, i32* @PMIC_MPP_REG_DIG_VIN_CTL, align 4
  %174 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %171, %struct.pmic_mpp_pad* %172, i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %3, align 4
  br label %277

179:                                              ; preds = %170
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @PMIC_MPP_REG_VIN_SHIFT, align 4
  %182 = ashr i32 %180, %181
  %183 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %184 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @PMIC_MPP_REG_VIN_MASK, align 4
  %186 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %187 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 129
  br i1 %191, label %192, label %217

192:                                              ; preds = %179
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 128
  br i1 %194, label %195, label %217

195:                                              ; preds = %192
  %196 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %197 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %198 = load i32, i32* @PMIC_MPP_REG_DIG_PULL_CTL, align 4
  %199 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %196, %struct.pmic_mpp_pad* %197, i32 %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %3, align 4
  br label %277

204:                                              ; preds = %195
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @PMIC_MPP_REG_PULL_SHIFT, align 4
  %207 = ashr i32 %205, %206
  %208 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %209 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %208, i32 0, i32 7
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @PMIC_MPP_REG_PULL_MASK, align 4
  %211 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %212 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %216 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %215, i32 0, i32 8
  store i32 1, i32* %216, align 8
  br label %217

217:                                              ; preds = %204, %192, %179
  %218 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %219 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %220 = load i32, i32* @PMIC_MPP_REG_AIN_CTL, align 4
  %221 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %218, %struct.pmic_mpp_pad* %219, i32 %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = load i32, i32* %8, align 4
  store i32 %225, i32* %3, align 4
  br label %277

226:                                              ; preds = %217
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @PMIC_MPP_REG_AIN_ROUTE_SHIFT, align 4
  %229 = ashr i32 %227, %228
  %230 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %231 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %230, i32 0, i32 9
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @PMIC_MPP_REG_AIN_ROUTE_MASK, align 4
  %233 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %234 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, %232
  store i32 %236, i32* %234, align 4
  %237 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %238 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %239 = load i32, i32* @PMIC_MPP_REG_SINK_CTL, align 4
  %240 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %237, %struct.pmic_mpp_pad* %238, i32 %239)
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %226
  %244 = load i32, i32* %8, align 4
  store i32 %244, i32* %3, align 4
  br label %277

245:                                              ; preds = %226
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %248 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %247, i32 0, i32 10
  store i32 %246, i32* %248, align 8
  %249 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %250 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %251 = load i32, i32* @PMIC_MPP_REG_AOUT_CTL, align 4
  %252 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %249, %struct.pmic_mpp_pad* %250, i32 %251)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %245
  %256 = load i32, i32* %8, align 4
  store i32 %256, i32* %3, align 4
  br label %277

257:                                              ; preds = %245
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %260 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %259, i32 0, i32 11
  store i32 %258, i32* %260, align 4
  %261 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %4, align 8
  %262 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %263 = load i32, i32* @PMIC_MPP_REG_EN_CTL, align 4
  %264 = call i32 @pmic_mpp_read(%struct.pmic_mpp_state* %261, %struct.pmic_mpp_pad* %262, i32 %263)
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %8, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %257
  %268 = load i32, i32* %8, align 4
  store i32 %268, i32* %3, align 4
  br label %277

269:                                              ; preds = %257
  %270 = load i32, i32* %8, align 4
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %271, true
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  %275 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %5, align 8
  %276 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %275, i32 0, i32 12
  store i32 %274, i32* %276, align 8
  store i32 0, i32* %3, align 4
  br label %277

277:                                              ; preds = %269, %267, %255, %243, %224, %202, %177, %140, %69, %51, %41, %23, %17
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local i32 @pmic_mpp_read(%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
