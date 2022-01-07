; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc146818-lib.c_mc146818_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc146818-lib.c_mc146818_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.rtc_time = type { i8, i8, i8, i8, i8, i8 }

@rtc_lock = common dso_local global i32 0, align 4
@RTC_SECONDS = common dso_local global i64 0, align 8
@RTC_MINUTES = common dso_local global i64 0, align 8
@RTC_HOURS = common dso_local global i64 0, align 8
@RTC_DAY_OF_MONTH = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_YEAR = common dso_local global i64 0, align 8
@RTC_CONTROL = common dso_local global i64 0, align 8
@RTC_DM_BINARY = common dso_local global i8 0, align 1
@RTC_ALWAYS_BCD = common dso_local global i64 0, align 8
@RTC_24H = common dso_local global i32 0, align 4
@FADT2_REVISION_ID = common dso_local global i64 0, align 8
@RTC_DEC_YEAR = common dso_local global i64 0, align 8
@acpi_gbl_FADT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc146818_get_time(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  store i8 0, i8* %5, align 1
  %6 = call i64 (...) @mc146818_is_updating()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @mdelay(i32 20)
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %11)
  %13 = load i64, i64* @RTC_SECONDS, align 8
  %14 = call i8* @CMOS_READ(i64 %13)
  %15 = ptrtoint i8* %14 to i8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  store i8 %15, i8* %17, align 1
  %18 = load i64, i64* @RTC_MINUTES, align 8
  %19 = call i8* @CMOS_READ(i64 %18)
  %20 = ptrtoint i8* %19 to i8
  %21 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 1
  store i8 %20, i8* %22, align 1
  %23 = load i64, i64* @RTC_HOURS, align 8
  %24 = call i8* @CMOS_READ(i64 %23)
  %25 = ptrtoint i8* %24 to i8
  %26 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 2
  store i8 %25, i8* %27, align 1
  %28 = load i64, i64* @RTC_DAY_OF_MONTH, align 8
  %29 = call i8* @CMOS_READ(i64 %28)
  %30 = ptrtoint i8* %29 to i8
  %31 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 3
  store i8 %30, i8* %32, align 1
  %33 = load i64, i64* @RTC_MONTH, align 8
  %34 = call i8* @CMOS_READ(i64 %33)
  %35 = ptrtoint i8* %34 to i8
  %36 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 4
  store i8 %35, i8* %37, align 1
  %38 = load i64, i64* @RTC_YEAR, align 8
  %39 = call i8* @CMOS_READ(i64 %38)
  %40 = ptrtoint i8* %39 to i8
  %41 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 5
  store i8 %40, i8* %42, align 1
  %43 = load i64, i64* @RTC_CONTROL, align 8
  %44 = call i8* @CMOS_READ(i64 %43)
  %45 = ptrtoint i8* %44 to i8
  store i8 %45, i8* %3, align 1
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %46)
  %48 = load i8, i8* %3, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @RTC_DM_BINARY, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %10
  %55 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %103

57:                                               ; preds = %54, %10
  %58 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = call i8* @bcd2bin(i8 zeroext %60)
  %62 = ptrtoint i8* %61 to i8
  %63 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 0
  store i8 %62, i8* %64, align 1
  %65 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 1
  %67 = load i8, i8* %66, align 1
  %68 = call i8* @bcd2bin(i8 zeroext %67)
  %69 = ptrtoint i8* %68 to i8
  %70 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 1
  store i8 %69, i8* %71, align 1
  %72 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 1
  %75 = call i8* @bcd2bin(i8 zeroext %74)
  %76 = ptrtoint i8* %75 to i8
  %77 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 2
  store i8 %76, i8* %78, align 1
  %79 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 3
  %81 = load i8, i8* %80, align 1
  %82 = call i8* @bcd2bin(i8 zeroext %81)
  %83 = ptrtoint i8* %82 to i8
  %84 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 3
  store i8 %83, i8* %85, align 1
  %86 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 4
  %88 = load i8, i8* %87, align 1
  %89 = call i8* @bcd2bin(i8 zeroext %88)
  %90 = ptrtoint i8* %89 to i8
  %91 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 4
  store i8 %90, i8* %92, align 1
  %93 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 5
  %95 = load i8, i8* %94, align 1
  %96 = call i8* @bcd2bin(i8 zeroext %95)
  %97 = ptrtoint i8* %96 to i8
  %98 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 5
  store i8 %97, i8* %99, align 1
  %100 = load i8, i8* %5, align 1
  %101 = call i8* @bcd2bin(i8 zeroext %100)
  %102 = ptrtoint i8* %101 to i8
  store i8 %102, i8* %5, align 1
  br label %103

103:                                              ; preds = %57, %54
  %104 = load i8, i8* %5, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp sgt i32 %105, 20
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load i8, i8* %5, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %109, 19
  %111 = mul nsw i32 %110, 100
  %112 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %113 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %112, i32 0, i32 5
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %115, %111
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %113, align 1
  br label %118

118:                                              ; preds = %107, %103
  %119 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %120 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %119, i32 0, i32 5
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp sle i32 %122, 69
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 5
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 %128, 100
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %126, align 1
  br label %131

131:                                              ; preds = %124, %118
  %132 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %133 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %132, i32 0, i32 4
  %134 = load i8, i8* %133, align 1
  %135 = add i8 %134, -1
  store i8 %135, i8* %133, align 1
  %136 = load i32, i32* @RTC_24H, align 4
  ret i32 %136
}

declare dso_local i64 @mc146818_is_updating(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @CMOS_READ(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
