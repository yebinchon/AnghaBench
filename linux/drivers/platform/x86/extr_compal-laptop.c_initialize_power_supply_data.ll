; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_initialize_power_supply_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_initialize_power_supply_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compal_data = type { i32, i64*, i64* }

@BAT_MANUFACTURER_NAME_ADDR = common dso_local global i32 0, align 4
@BAT_MANUFACTURER_NAME_LEN = common dso_local global i64 0, align 8
@BAT_MODEL_NAME_ADDR = common dso_local global i32 0, align 4
@BAT_MODEL_NAME_LEN = common dso_local global i64 0, align 8
@BAT_SERIAL_NUMBER_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@BAT_SERIAL_NUMBER_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.compal_data*)* @initialize_power_supply_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_power_supply_data(%struct.compal_data* %0) #0 {
  %2 = alloca %struct.compal_data*, align 8
  store %struct.compal_data* %0, %struct.compal_data** %2, align 8
  %3 = load i32, i32* @BAT_MANUFACTURER_NAME_ADDR, align 4
  %4 = load %struct.compal_data*, %struct.compal_data** %2, align 8
  %5 = getelementptr inbounds %struct.compal_data, %struct.compal_data* %4, i32 0, i32 2
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* @BAT_MANUFACTURER_NAME_LEN, align 8
  %8 = call i32 @ec_read_sequence(i32 %3, i64* %6, i64 %7)
  %9 = load %struct.compal_data*, %struct.compal_data** %2, align 8
  %10 = getelementptr inbounds %struct.compal_data, %struct.compal_data* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @BAT_MANUFACTURER_NAME_LEN, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @BAT_MODEL_NAME_ADDR, align 4
  %15 = load %struct.compal_data*, %struct.compal_data** %2, align 8
  %16 = getelementptr inbounds %struct.compal_data, %struct.compal_data* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @BAT_MODEL_NAME_LEN, align 8
  %19 = call i32 @ec_read_sequence(i32 %14, i64* %17, i64 %18)
  %20 = load %struct.compal_data*, %struct.compal_data** %2, align 8
  %21 = getelementptr inbounds %struct.compal_data, %struct.compal_data* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @BAT_MODEL_NAME_LEN, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load %struct.compal_data*, %struct.compal_data** %2, align 8
  %26 = getelementptr inbounds %struct.compal_data, %struct.compal_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @BAT_SERIAL_NUMBER_LEN, align 8
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* @BAT_SERIAL_NUMBER_ADDR, align 4
  %31 = call i32 @ec_read_u16(i32 %30)
  %32 = call i32 @scnprintf(i32 %27, i64 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @ec_read_sequence(i32, i64*, i64) #1

declare dso_local i32 @scnprintf(i32, i64, i8*, i32) #1

declare dso_local i32 @ec_read_u16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
