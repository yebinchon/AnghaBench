; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_rtc_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_rtc_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.seq_file = type { i32 }
%struct.i2c_client = type { i32 }
%struct.m41t80_data = type { i32 }

@M41T80_FEATURE_BL = common dso_local global i32 0, align 4
@M41T80_REG_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"battery\09\09: %s\0A\00", align 1
@M41T80_FLAGS_BATT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"exhausted\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.seq_file*)* @m41t80_rtc_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t80_rtc_proc(%struct.device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.m41t80_data*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = call %struct.m41t80_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.m41t80_data* %12, %struct.m41t80_data** %7, align 8
  %13 = load %struct.m41t80_data*, %struct.m41t80_data** %7, align 8
  %14 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @M41T80_FEATURE_BL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = load i32, i32* @M41T80_REG_FLAGS, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %19
  %28 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @M41T80_FLAGS_BATT_LOW, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.m41t80_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
