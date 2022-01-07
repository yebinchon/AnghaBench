; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_fw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_fw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq25890_device = type { i32, %struct.bq25890_init_data }
%struct.bq25890_init_data = type { i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"ti,use-ilim-pin\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ti,boost-low-freq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq25890_device*)* @bq25890_fw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq25890_fw_probe(%struct.bq25890_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq25890_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bq25890_init_data*, align 8
  store %struct.bq25890_device* %0, %struct.bq25890_device** %3, align 8
  %6 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %7 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %6, i32 0, i32 1
  store %struct.bq25890_init_data* %7, %struct.bq25890_init_data** %5, align 8
  %8 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %9 = call i32 @bq25890_fw_read_u32_props(%struct.bq25890_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %16 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @device_property_read_bool(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.bq25890_init_data*, %struct.bq25890_init_data** %5, align 8
  %20 = getelementptr inbounds %struct.bq25890_init_data, %struct.bq25890_init_data* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %22 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @device_property_read_bool(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.bq25890_init_data*, %struct.bq25890_init_data** %5, align 8
  %26 = getelementptr inbounds %struct.bq25890_init_data, %struct.bq25890_init_data* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @bq25890_fw_read_u32_props(%struct.bq25890_device*) #1

declare dso_local i8* @device_property_read_bool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
