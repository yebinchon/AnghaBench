; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc146818-lib.c_mc146818_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc146818-lib.c_mc146818_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.rtc_time = type { i32, i32, i8, i8, i8, i8 }

@EINVAL = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i64 0, align 8
@RTC_DM_BINARY = common dso_local global i8 0, align 1
@RTC_ALWAYS_BCD = common dso_local global i64 0, align 8
@RTC_SET = common dso_local global i8 0, align 1
@RTC_FREQ_SELECT = common dso_local global i64 0, align 8
@RTC_DIV_RESET2 = common dso_local global i8 0, align 1
@RTC_YEAR = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_DAY_OF_MONTH = common dso_local global i64 0, align 8
@RTC_HOURS = common dso_local global i64 0, align 8
@RTC_MINUTES = common dso_local global i64 0, align 8
@RTC_SECONDS = common dso_local global i64 0, align 8
@FADT2_REVISION_ID = common dso_local global i64 0, align 8
@RTC_DEC_YEAR = common dso_local global i64 0, align 8
@acpi_gbl_FADT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc146818_set_time(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  store i8 0, i8* %13, align 1
  %14 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %5, align 1
  %22 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 4
  store i8 %24, i8* %6, align 1
  %25 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 3
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %7, align 1
  %28 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 4
  %30 = load i8, i8* %29, align 2
  store i8 %30, i8* %8, align 1
  %31 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 5
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %9, align 1
  %34 = load i32, i32* %12, align 4
  %35 = icmp ugt i32 %34, 255
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %137

39:                                               ; preds = %1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ugt i32 %42, 169
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %137

49:                                               ; preds = %39
  %50 = load i32, i32* %12, align 4
  %51 = icmp uge i32 %50, 100
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = sub i32 %53, 100
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, i64* @RTC_CONTROL, align 8
  %57 = call zeroext i8 @CMOS_READ(i64 %56)
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @RTC_DM_BINARY, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %63, %55
  %67 = load i8, i8* %9, align 1
  %68 = call i8* @bin2bcd(i8 zeroext %67)
  %69 = ptrtoint i8* %68 to i8
  store i8 %69, i8* %9, align 1
  %70 = load i8, i8* %8, align 1
  %71 = call i8* @bin2bcd(i8 zeroext %70)
  %72 = ptrtoint i8* %71 to i8
  store i8 %72, i8* %8, align 1
  %73 = load i8, i8* %7, align 1
  %74 = call i8* @bin2bcd(i8 zeroext %73)
  %75 = ptrtoint i8* %74 to i8
  store i8 %75, i8* %7, align 1
  %76 = load i8, i8* %6, align 1
  %77 = call i8* @bin2bcd(i8 zeroext %76)
  %78 = ptrtoint i8* %77 to i8
  store i8 %78, i8* %6, align 1
  %79 = load i8, i8* %5, align 1
  %80 = call i8* @bin2bcd(i8 zeroext %79)
  %81 = ptrtoint i8* %80 to i8
  store i8 %81, i8* %5, align 1
  %82 = load i32, i32* %12, align 4
  %83 = trunc i32 %82 to i8
  %84 = call i8* @bin2bcd(i8 zeroext %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = load i8, i8* %13, align 1
  %87 = call i8* @bin2bcd(i8 zeroext %86)
  %88 = ptrtoint i8* %87 to i8
  store i8 %88, i8* %13, align 1
  br label %89

89:                                               ; preds = %66, %63
  %90 = load i64, i64* @RTC_CONTROL, align 8
  %91 = call zeroext i8 @CMOS_READ(i64 %90)
  store i8 %91, i8* %10, align 1
  %92 = load i8, i8* %10, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @RTC_SET, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %93, %95
  %97 = trunc i32 %96 to i8
  %98 = load i64, i64* @RTC_CONTROL, align 8
  %99 = call i32 @CMOS_WRITE(i8 zeroext %97, i64 %98)
  %100 = load i64, i64* @RTC_FREQ_SELECT, align 8
  %101 = call zeroext i8 @CMOS_READ(i64 %100)
  store i8 %101, i8* %11, align 1
  %102 = load i8, i8* %11, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @RTC_DIV_RESET2, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %103, %105
  %107 = trunc i32 %106 to i8
  %108 = load i64, i64* @RTC_FREQ_SELECT, align 8
  %109 = call i32 @CMOS_WRITE(i8 zeroext %107, i64 %108)
  %110 = load i32, i32* %12, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i64, i64* @RTC_YEAR, align 8
  %113 = call i32 @CMOS_WRITE(i8 zeroext %111, i64 %112)
  %114 = load i8, i8* %5, align 1
  %115 = load i64, i64* @RTC_MONTH, align 8
  %116 = call i32 @CMOS_WRITE(i8 zeroext %114, i64 %115)
  %117 = load i8, i8* %6, align 1
  %118 = load i64, i64* @RTC_DAY_OF_MONTH, align 8
  %119 = call i32 @CMOS_WRITE(i8 zeroext %117, i64 %118)
  %120 = load i8, i8* %7, align 1
  %121 = load i64, i64* @RTC_HOURS, align 8
  %122 = call i32 @CMOS_WRITE(i8 zeroext %120, i64 %121)
  %123 = load i8, i8* %8, align 1
  %124 = load i64, i64* @RTC_MINUTES, align 8
  %125 = call i32 @CMOS_WRITE(i8 zeroext %123, i64 %124)
  %126 = load i8, i8* %9, align 1
  %127 = load i64, i64* @RTC_SECONDS, align 8
  %128 = call i32 @CMOS_WRITE(i8 zeroext %126, i64 %127)
  %129 = load i8, i8* %10, align 1
  %130 = load i64, i64* @RTC_CONTROL, align 8
  %131 = call i32 @CMOS_WRITE(i8 zeroext %129, i64 %130)
  %132 = load i8, i8* %11, align 1
  %133 = load i64, i64* @RTC_FREQ_SELECT, align 8
  %134 = call i32 @CMOS_WRITE(i8 zeroext %132, i64 %133)
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %89, %44, %36
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local zeroext i8 @CMOS_READ(i64) #1

declare dso_local i8* @bin2bcd(i8 zeroext) #1

declare dso_local i32 @CMOS_WRITE(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
