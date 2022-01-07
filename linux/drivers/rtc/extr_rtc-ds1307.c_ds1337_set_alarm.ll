; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1337_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1337_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ds1307 = type { i32, i32 }

@HAS_ALARM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, enabled=%d, pending=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"alarm set\00", align 1
@DS1339_REG_ALARM1_SECS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"alarm write\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: %4ph, %3ph, %02x %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"alarm set (old status)\00", align 1
@DS1337_BIT_A1IE = common dso_local global i8 0, align 1
@DS1337_BIT_A2IE = common dso_local global i8 0, align 1
@DS1337_BIT_A1I = common dso_local global i8 0, align 1
@DS1337_BIT_A2I = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"can't set alarm time\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"alarm IRQ armed\0A\00", align 1
@DS1337_REG_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1337_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1337_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ds1307*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ds1307* @dev_get_drvdata(%struct.device* %11)
  store %struct.ds1307* %12, %struct.ds1307** %6, align 8
  %13 = load i32, i32* @HAS_ALARM, align 4
  %14 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %15 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %156

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %30, i32 %34, i32 %38, i64 %41, i32 %44)
  %46 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %47 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DS1339_REG_ALARM1_SECS, align 4
  %50 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %51 = call i32 @regmap_bulk_read(i32 %48, i32 %49, i8* %50, i32 9)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %21
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %156

59:                                               ; preds = %21
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %8, align 1
  %62 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %9, align 1
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %66 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4
  %67 = load i8, i8* %8, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %65, i8* %66, i32 %68, i32 %70)
  %72 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call zeroext i8 @bin2bcd(i32 %75)
  %77 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 %76, i8* %77, align 1
  %78 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call zeroext i8 @bin2bcd(i32 %81)
  %83 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %82, i8* %83, align 1
  %84 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %85 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call zeroext i8 @bin2bcd(i32 %87)
  %89 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2
  store i8 %88, i8* %89, align 1
  %90 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %91 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call zeroext i8 @bin2bcd(i32 %93)
  %95 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3
  store i8 %94, i8* %95, align 1
  %96 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4
  store i8 0, i8* %96, align 1
  %97 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 5
  store i8 0, i8* %97, align 1
  %98 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 6
  store i8 0, i8* %98, align 1
  %99 = load i8, i8* %8, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @DS1337_BIT_A1IE, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @DS1337_BIT_A2IE, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %102, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %100, %106
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7
  store i8 %108, i8* %109, align 1
  %110 = load i8, i8* %9, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* @DS1337_BIT_A1I, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* @DS1337_BIT_A2I, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %111, %117
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8
  store i8 %119, i8* %120, align 1
  %121 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %122 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DS1339_REG_ALARM1_SECS, align 4
  %125 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %126 = call i32 @regmap_bulk_write(i32 %123, i32 %124, i8* %125, i32 9)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %59
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %156

133:                                              ; preds = %59
  %134 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %135 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %133
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %141 = load i8, i8* @DS1337_BIT_A1IE, align 1
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = or i32 %145, %142
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1
  %148 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %149 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DS1337_REG_CONTROL, align 4
  %152 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7
  %153 = load i8, i8* %152, align 1
  %154 = call i32 @regmap_write(i32 %150, i32 %151, i8 zeroext %153)
  br label %155

155:                                              ; preds = %138, %133
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %129, %54, %18
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.ds1307* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local zeroext i8 @bin2bcd(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
