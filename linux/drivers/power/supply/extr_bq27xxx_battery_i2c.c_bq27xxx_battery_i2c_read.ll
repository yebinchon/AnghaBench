; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_i2c.c_bq27xxx_battery_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_i2c.c_bq27xxx_battery_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, i32, i32)* @bq27xxx_battery_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_i2c_read(%struct.bq27xxx_device_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bq27xxx_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca [2 x %struct.i2c_msg], align 16
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %5, align 8
  %13 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.i2c_client* @to_i2c_client(i32 %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %8, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  %24 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 2
  store i64 0, i64* %30, align 16
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 0
  store i32* %6, i32** %32, align 16
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 1
  store i32 4, i32* %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* @I2C_M_RD, align 8
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 16
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 16
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %23
  %49 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  br label %54

51:                                               ; preds = %23
  %52 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  store i32 2, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %59 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %60 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %59)
  %61 = call i32 @i2c_transfer(i32 %57, %struct.i2c_msg* %58, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %77

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %71 = call i32 @get_unaligned_le16(i32* %70)
  store i32 %71, i32* %11, align 4
  br label %75

72:                                               ; preds = %66
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %64, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
