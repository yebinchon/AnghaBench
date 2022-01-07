; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6902.c_max6902_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6902.c_max6902_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@MAX6902_REG_CONTROL = common dso_local global i32 0, align 4
@MAX6902_REG_SECONDS = common dso_local global i32 0, align 4
@MAX6902_REG_MINUTES = common dso_local global i32 0, align 4
@MAX6902_REG_HOURS = common dso_local global i32 0, align 4
@MAX6902_REG_DATE = common dso_local global i32 0, align 4
@MAX6902_REG_MONTH = common dso_local global i32 0, align 4
@MAX6902_REG_DAY = common dso_local global i32 0, align 4
@MAX6902_REG_YEAR = common dso_local global i32 0, align 4
@MAX6902_REG_CENTURY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max6902_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6902_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %6 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1900
  %9 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = load i32, i32* @MAX6902_REG_CONTROL, align 4
  %13 = call i32 @max6902_set_reg(%struct.device* %11, i32 %12, i32 0)
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load i32, i32* @MAX6902_REG_SECONDS, align 4
  %16 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bin2bcd(i32 %18)
  %20 = call i32 @max6902_set_reg(%struct.device* %14, i32 %15, i32 %19)
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = load i32, i32* @MAX6902_REG_MINUTES, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bin2bcd(i32 %25)
  %27 = call i32 @max6902_set_reg(%struct.device* %21, i32 %22, i32 %26)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load i32, i32* @MAX6902_REG_HOURS, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bin2bcd(i32 %32)
  %34 = call i32 @max6902_set_reg(%struct.device* %28, i32 %29, i32 %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load i32, i32* @MAX6902_REG_DATE, align 4
  %37 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bin2bcd(i32 %39)
  %41 = call i32 @max6902_set_reg(%struct.device* %35, i32 %36, i32 %40)
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load i32, i32* @MAX6902_REG_MONTH, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @bin2bcd(i32 %47)
  %49 = call i32 @max6902_set_reg(%struct.device* %42, i32 %43, i32 %48)
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load i32, i32* @MAX6902_REG_DAY, align 4
  %52 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bin2bcd(i32 %54)
  %56 = call i32 @max6902_set_reg(%struct.device* %50, i32 %51, i32 %55)
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = load i32, i32* @MAX6902_REG_YEAR, align 4
  %59 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = srem i32 %61, 100
  %63 = call i32 @bin2bcd(i32 %62)
  %64 = call i32 @max6902_set_reg(%struct.device* %57, i32 %58, i32 %63)
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = load i32, i32* @MAX6902_REG_CENTURY, align 4
  %67 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 100
  %71 = call i32 @bin2bcd(i32 %70)
  %72 = call i32 @max6902_set_reg(%struct.device* %65, i32 %66, i32 %71)
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = load i32, i32* @MAX6902_REG_CONTROL, align 4
  %75 = call i32 @max6902_set_reg(%struct.device* %73, i32 %74, i32 128)
  ret i32 0
}

declare dso_local i32 @max6902_set_reg(%struct.device*, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
