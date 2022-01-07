; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_supply = type { i32 }
%struct.bq2415x_device = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@BQ2415X_MODE_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@BQ2415X_MODE_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@BQ2415X_MODE_HOST_CHARGER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@BQ2415X_MODE_DEDICATED_CHARGER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"boost\00", align 1
@BQ2415X_MODE_BOOST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bq2415x_sysfs_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bq2415x_sysfs_set_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.power_supply*, align 8
  %11 = alloca %struct.bq2415x_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %14)
  store %struct.power_supply* %15, %struct.power_supply** %10, align 8
  %16 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %17 = call %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply* %16)
  store %struct.bq2415x_device* %17, %struct.bq2415x_device** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %4
  %22 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %23 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %146

29:                                               ; preds = %21
  %30 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %31 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %33 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  br label %135

35:                                               ; preds = %4
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %41 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %46 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* @BQ2415X_MODE_OFF, align 4
  store i32 %48, i32* %12, align 4
  br label %134

49:                                               ; preds = %35
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %55 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %60 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* @BQ2415X_MODE_NONE, align 4
  store i32 %62, i32* %12, align 4
  br label %133

63:                                               ; preds = %49
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %69 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %74 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* @BQ2415X_MODE_HOST_CHARGER, align 4
  store i32 %76, i32* %12, align 4
  br label %132

77:                                               ; preds = %63
  %78 = load i8*, i8** %8, align 8
  %79 = call i64 @strncmp(i8* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %83 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %88 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* @BQ2415X_MODE_DEDICATED_CHARGER, align 4
  store i32 %90, i32* %12, align 4
  br label %131

91:                                               ; preds = %77
  %92 = load i8*, i8** %8, align 8
  %93 = call i64 @strncmp(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %97 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %102 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* @BQ2415X_MODE_BOOST, align 4
  store i32 %104, i32* %12, align 4
  br label %130

105:                                              ; preds = %91
  %106 = load i8*, i8** %8, align 8
  %107 = call i64 @strncmp(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %111 = call i32 @bq2415x_reset_chip(%struct.bq2415x_device* %110)
  %112 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %113 = call i32 @bq2415x_set_defaults(%struct.bq2415x_device* %112)
  %114 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %115 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i64, i64* %9, align 8
  store i64 %119, i64* %5, align 8
  br label %146

120:                                              ; preds = %109
  %121 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %122 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  %123 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %124 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %12, align 4
  br label %129

126:                                              ; preds = %105
  %127 = load i64, i64* @EINVAL, align 8
  %128 = sub i64 0, %127
  store i64 %128, i64* %5, align 8
  br label %146

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %103
  br label %131

131:                                              ; preds = %130, %89
  br label %132

132:                                              ; preds = %131, %75
  br label %133

133:                                              ; preds = %132, %61
  br label %134

134:                                              ; preds = %133, %47
  br label %135

135:                                              ; preds = %134, %29
  %136 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @bq2415x_set_mode(%struct.bq2415x_device* %136, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %5, align 8
  br label %146

144:                                              ; preds = %135
  %145 = load i64, i64* %9, align 8
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %144, %141, %126, %118, %26
  %147 = load i64, i64* %5, align 8
  ret i64 %147
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @bq2415x_reset_chip(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_set_defaults(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_set_mode(%struct.bq2415x_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
