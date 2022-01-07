; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1286.c_ds1286_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1286.c_ds1286_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.ds1286_priv = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@RTC_CMD = common dso_local global i32 0, align 4
@RTC_TE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RTC_SECONDS = common dso_local global i32 0, align 4
@RTC_MINUTES = common dso_local global i32 0, align 4
@RTC_HOURS = common dso_local global i32 0, align 4
@RTC_DATE = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1286_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1286_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.ds1286_priv*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.ds1286_priv* @dev_get_drvdata(%struct.device* %9)
  store %struct.ds1286_priv* %10, %struct.ds1286_priv** %5, align 8
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %13 = load i32, i32* @RTC_CMD, align 4
  %14 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %12, i32 %13)
  %15 = load i32, i32* @RTC_TE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 2, %22
  %24 = sdiv i32 %23, 100
  %25 = sext i32 %24 to i64
  %26 = add i64 %21, %25
  %27 = call i64 @time_before(i64 %20, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 (...) @barrier()
  br label %19

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %38 = load i32, i32* @RTC_CMD, align 4
  %39 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %37, i32 %38)
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %6, align 1
  %41 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* @RTC_TE, align 4
  %45 = or i32 %43, %44
  %46 = trunc i32 %45 to i8
  %47 = load i32, i32* @RTC_CMD, align 4
  %48 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %41, i8 zeroext %46, i32 %47)
  %49 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %50 = load i32, i32* @RTC_SECONDS, align 4
  %51 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %49, i32 %50)
  %52 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %55 = load i32, i32* @RTC_MINUTES, align 4
  %56 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %54, i32 %55)
  %57 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %60 = load i32, i32* @RTC_HOURS, align 4
  %61 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %59, i32 %60)
  %62 = and i32 %61, 63
  %63 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %66 = load i32, i32* @RTC_DATE, align 4
  %67 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %65, i32 %66)
  %68 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %71 = load i32, i32* @RTC_MONTH, align 4
  %72 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %70, i32 %71)
  %73 = and i32 %72, 31
  %74 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %77 = load i32, i32* @RTC_YEAR, align 4
  %78 = call i32 @ds1286_rtc_read(%struct.ds1286_priv* %76, i32 %77)
  %79 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %82 = load i8, i8* %6, align 1
  %83 = load i32, i32* @RTC_CMD, align 4
  %84 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %81, i8 zeroext %82, i32 %83)
  %85 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %86 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @bcd2bin(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @bcd2bin(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @bcd2bin(i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @bcd2bin(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %118 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @bcd2bin(i32 %119)
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %123 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @bcd2bin(i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %132 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %133, 45
  br i1 %134, label %135, label %140

135:                                              ; preds = %32
  %136 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %137 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 30
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %135, %32
  %141 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %142 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 40
  store i32 %144, i32* %142, align 4
  %145 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %146 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %147, 70
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %151 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 100
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %149, %140
  %155 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %156 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %156, align 4
  ret i32 0
}

declare dso_local %struct.ds1286_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ds1286_rtc_read(%struct.ds1286_priv*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ds1286_rtc_write(%struct.ds1286_priv*, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
