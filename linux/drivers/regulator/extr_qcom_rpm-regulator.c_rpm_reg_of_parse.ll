; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_rpm-regulator.c_rpm_reg_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }
%struct.regulator_config = type { %struct.device*, %struct.qcom_rpm_reg* }
%struct.device = type { i32 }
%struct.qcom_rpm_reg = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"bias-pull-down\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s is invalid\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"qcom,power-mode-hysteretic\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to set power mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"qcom,force-mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"failed to read %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid force mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to set force mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @rpm_reg_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_reg_of_parse(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca %struct.regulator_config*, align 8
  %8 = alloca %struct.qcom_rpm_reg*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %6, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %7, align 8
  %15 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %16 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %15, i32 0, i32 1
  %17 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %16, align 8
  store %struct.qcom_rpm_reg* %17, %struct.qcom_rpm_reg** %8, align 8
  %18 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %19 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %9, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @of_property_read_bool(%struct.device_node* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %27 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %28 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = call i32 @rpm_reg_set(%struct.qcom_rpm_reg* %26, %struct.TYPE_6__* %30, i32 1)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %4, align 4
  br label %162

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %42 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load %struct.device*, %struct.device** %9, align 8
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %52 = call i32 @rpm_reg_of_parse_freq(%struct.device* %49, %struct.device_node* %50, %struct.qcom_rpm_reg* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %4, align 4
  br label %162

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %60 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %58
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %67 = load %struct.device_node*, %struct.device_node** %5, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i64 @of_property_read_bool(%struct.device_node* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %74 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %75 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @rpm_reg_set(%struct.qcom_rpm_reg* %73, %struct.TYPE_6__* %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load %struct.device*, %struct.device** %9, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %162

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86, %58
  %88 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %89 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %161

95:                                               ; preds = %87
  store i32 -1, i32* %11, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  %96 = load %struct.device_node*, %struct.device_node** %5, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @of_property_read_u32(%struct.device_node* %96, i8* %97, i32* %13)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 128, i32* %13, align 4
  br label %113

104:                                              ; preds = %95
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.device*, %struct.device** %9, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %4, align 4
  br label %162

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %103
  %114 = load i32, i32* %13, align 4
  switch i32 %114, label %138 [
    i32 128, label %115
    i32 129, label %116
    i32 130, label %117
    i32 132, label %124
    i32 131, label %131
  ]

115:                                              ; preds = %113
  store i32 0, i32* %11, align 4
  br label %138

116:                                              ; preds = %113
  store i32 1, i32* %11, align 4
  br label %138

117:                                              ; preds = %113
  %118 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %119 = call i32 @FORCE_MODE_IS_2_BITS(%struct.qcom_rpm_reg* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 2, i32* %11, align 4
  br label %123

122:                                              ; preds = %117
  store i32 3, i32* %11, align 4
  br label %123

123:                                              ; preds = %122, %121
  br label %138

124:                                              ; preds = %113
  %125 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %126 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 2, i32* %11, align 4
  br label %130

130:                                              ; preds = %129, %124
  br label %138

131:                                              ; preds = %113
  %132 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %133 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 4, i32* %11, align 4
  br label %137

137:                                              ; preds = %136, %131
  br label %138

138:                                              ; preds = %113, %137, %130, %123, %116, %115
  %139 = load i32, i32* %11, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.device*, %struct.device** %9, align 8
  %143 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %162

146:                                              ; preds = %138
  %147 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %148 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %149 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @rpm_reg_set(%struct.qcom_rpm_reg* %147, %struct.TYPE_6__* %151, i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = load %struct.device*, %struct.device** %9, align 8
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %4, align 4
  br label %162

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160, %87
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %156, %141, %107, %82, %55, %34
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @rpm_reg_set(%struct.qcom_rpm_reg*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @rpm_reg_of_parse_freq(%struct.device*, %struct.device_node*, %struct.qcom_rpm_reg*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @FORCE_MODE_IS_2_BITS(%struct.qcom_rpm_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
