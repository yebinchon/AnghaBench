; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.max77686_rtc_info = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32, i64 }

@RTC_NR_TIME = common dso_local global i32 0, align 4
@MAX77686_RTC_READ = common dso_local global i32 0, align 4
@REG_ALARM1_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Fail to read alarm reg(%d)\0A\00", align 1
@REG_RTC_AE1 = common dso_local global i64 0, align 8
@REG_RTC_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"alarm enable register not set(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"fail to read alarm enable(%d)\0A\00", align 1
@ALARM_ENABLE_MASK = common dso_local global i32 0, align 4
@MAX77686_INVALID_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Fail to read alarm pending status reg(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @max77686_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.max77686_rtc_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.max77686_rtc_info* @dev_get_drvdata(%struct.device* %12)
  store %struct.max77686_rtc_info* %13, %struct.max77686_rtc_info** %5, align 8
  %14 = load i32, i32* @RTC_NR_TIME, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %19 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %24 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %27 = load i32, i32* @MAX77686_RTC_READ, align 4
  %28 = call i32 @max77686_rtc_update(%struct.max77686_rtc_info* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %160

32:                                               ; preds = %2
  %33 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %34 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* @REG_ALARM1_SEC, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ARRAY_SIZE(i32* %17)
  %41 = call i32 @regmap_bulk_read(i32 %35, i32 %39, i32* %17, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %46 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %160

50:                                               ; preds = %32
  %51 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %51, i32 0, i32 2
  %53 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %54 = call i32 @max77686_rtc_data_to_tm(i32* %17, i32* %52, %struct.max77686_rtc_info* %53)
  %55 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %58 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %102

63:                                               ; preds = %50
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* @REG_RTC_AE1, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @REG_RTC_NONE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  %73 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %74 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %160

78:                                               ; preds = %63
  %79 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %80 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* @REG_RTC_AE1, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @regmap_read(i32 %81, i32 %85, i32* %8)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %91 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %160

95:                                               ; preds = %78
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %100 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %123

102:                                              ; preds = %50
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %119, %102
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @ARRAY_SIZE(i32* %17)
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %17, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ALARM_ENABLE_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %117 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %116, i32 0, i32 0
  store i32 1, i32* %117, align 4
  br label %122

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %103

122:                                              ; preds = %115, %103
  br label %123

123:                                              ; preds = %122, %101
  %124 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %125 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %127 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @MAX77686_INVALID_REG, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %160

134:                                              ; preds = %123
  %135 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %136 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %139 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @regmap_read(i32 %137, i32 %142, i32* %8)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %134
  %147 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %148 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  br label %160

152:                                              ; preds = %134
  %153 = load i32, i32* %8, align 4
  %154 = and i32 %153, 16
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %158 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %152
  br label %160

160:                                              ; preds = %159, %146, %133, %89, %70, %44, %31
  %161 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %5, align 8
  %162 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %11, align 4
  %165 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %165)
  ret i32 %164
}

declare dso_local %struct.max77686_rtc_info* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max77686_rtc_update(%struct.max77686_rtc_info*, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max77686_rtc_data_to_tm(i32*, i32*, %struct.max77686_rtc_info*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
