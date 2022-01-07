; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_bcm2835_thermal.c_bcm2835_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_bcm2835_thermal.c_bcm2835_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_thermal_data = type { i32, i64 }

@BCM2835_TS_TSENSSTAT = common dso_local global i64 0, align 8
@BCM2835_TS_TSENSSTAT_VALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BCM2835_TS_TSENSSTAT_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @bcm2835_thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_thermal_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bcm2835_thermal_data*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bcm2835_thermal_data*
  store %struct.bcm2835_thermal_data* %9, %struct.bcm2835_thermal_data** %6, align 8
  %10 = load %struct.bcm2835_thermal_data*, %struct.bcm2835_thermal_data** %6, align 8
  %11 = getelementptr inbounds %struct.bcm2835_thermal_data, %struct.bcm2835_thermal_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BCM2835_TS_TSENSSTAT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BCM2835_TS_TSENSSTAT_VALID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* @BCM2835_TS_TSENSSTAT_DATA_MASK, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.bcm2835_thermal_data*, %struct.bcm2835_thermal_data** %6, align 8
  %29 = getelementptr inbounds %struct.bcm2835_thermal_data, %struct.bcm2835_thermal_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @thermal_zone_get_offset(i32 %30)
  %32 = load %struct.bcm2835_thermal_data*, %struct.bcm2835_thermal_data** %6, align 8
  %33 = getelementptr inbounds %struct.bcm2835_thermal_data, %struct.bcm2835_thermal_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @thermal_zone_get_slope(i32 %34)
  %36 = call i32 @bcm2835_thermal_adc2temp(i32 %27, i32 %31, i32 %35)
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %23, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bcm2835_thermal_adc2temp(i32, i32, i32) #1

declare dso_local i32 @thermal_zone_get_offset(i32) #1

declare dso_local i32 @thermal_zone_get_slope(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
