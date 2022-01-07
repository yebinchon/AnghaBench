; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.m48t59_plat_data = type { i64 }
%struct.m48t59_private = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"RTC set time %04d-%02d-%02d %02d/%02d/%02d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M48T59_CNTL_WRITE = common dso_local global i32 0, align 4
@M48T59_CNTL = common dso_local global i32 0, align 4
@M48T59_SEC = common dso_local global i32 0, align 4
@M48T59_MIN = common dso_local global i32 0, align 4
@M48T59_HOUR = common dso_local global i32 0, align 4
@M48T59_MDAY = common dso_local global i32 0, align 4
@M48T59_MONTH = common dso_local global i32 0, align 4
@M48T59_YEAR = common dso_local global i32 0, align 4
@M48T59RTC_TYPE_M48T59 = common dso_local global i64 0, align 8
@M48T59_WDAY_CEB = common dso_local global i32 0, align 4
@M48T59_WDAY_CB = common dso_local global i32 0, align 4
@M48T59_WDAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m48t59_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.m48t59_plat_data*, align 8
  %7 = alloca %struct.m48t59_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.m48t59_plat_data* @dev_get_platdata(%struct.device* %11)
  store %struct.m48t59_plat_data* %12, %struct.m48t59_plat_data** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.m48t59_private* @dev_get_drvdata(%struct.device* %13)
  store %struct.m48t59_private* %14, %struct.m48t59_private** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1900
  %21 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %122

42:                                               ; preds = %2
  %43 = load %struct.m48t59_private*, %struct.m48t59_private** %7, align 8
  %44 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load i32, i32* @M48T59_CNTL_WRITE, align 4
  %48 = load i32, i32* @M48T59_CNTL, align 4
  %49 = call i32 @M48T59_SET_BITS(i32 %47, i32 %48)
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bin2bcd(i32 %52)
  %54 = and i32 %53, 127
  %55 = load i32, i32* @M48T59_SEC, align 4
  %56 = call i32 @M48T59_WRITE(i32 %54, i32 %55)
  %57 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bin2bcd(i32 %59)
  %61 = and i32 %60, 127
  %62 = load i32, i32* @M48T59_MIN, align 4
  %63 = call i32 @M48T59_WRITE(i32 %61, i32 %62)
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bin2bcd(i32 %66)
  %68 = and i32 %67, 63
  %69 = load i32, i32* @M48T59_HOUR, align 4
  %70 = call i32 @M48T59_WRITE(i32 %68, i32 %69)
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @bin2bcd(i32 %73)
  %75 = and i32 %74, 63
  %76 = load i32, i32* @M48T59_MDAY, align 4
  %77 = call i32 @M48T59_WRITE(i32 %75, i32 %76)
  %78 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @bin2bcd(i32 %81)
  %83 = and i32 %82, 31
  %84 = load i32, i32* @M48T59_MONTH, align 4
  %85 = call i32 @M48T59_WRITE(i32 %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = srem i32 %86, 100
  %88 = call i32 @bin2bcd(i32 %87)
  %89 = load i32, i32* @M48T59_YEAR, align 4
  %90 = call i32 @M48T59_WRITE(i32 %88, i32 %89)
  %91 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %6, align 8
  %92 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @M48T59RTC_TYPE_M48T59, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %42
  %97 = load i32, i32* %10, align 4
  %98 = sdiv i32 %97, 100
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* @M48T59_WDAY_CEB, align 4
  %102 = load i32, i32* @M48T59_WDAY_CB, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %96, %42
  %105 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bin2bcd(i32 %107)
  %109 = and i32 %108, 7
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @M48T59_WDAY, align 4
  %114 = call i32 @M48T59_WRITE(i32 %112, i32 %113)
  %115 = load i32, i32* @M48T59_CNTL_WRITE, align 4
  %116 = load i32, i32* @M48T59_CNTL, align 4
  %117 = call i32 @M48T59_CLEAR_BITS(i32 %115, i32 %116)
  %118 = load %struct.m48t59_private*, %struct.m48t59_private** %7, align 8
  %119 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %118, i32 0, i32 0
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %104, %39
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.m48t59_plat_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.m48t59_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @M48T59_SET_BITS(i32, i32) #1

declare dso_local i32 @M48T59_WRITE(i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @M48T59_CLEAR_BITS(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
