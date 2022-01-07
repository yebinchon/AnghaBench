; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_i2c.c_bq27xxx_battery_i2c_bulk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_i2c.c_bq27xxx_battery_i2c_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32 }
%struct.i2c_client = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, i32, i32*, i32)* @bq27xxx_battery_i2c_bulk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_i2c_bulk_read(%struct.bq27xxx_device_info* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bq27xxx_device_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %13 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.i2c_client* @to_i2c_client(i32 %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %41

23:                                               ; preds = %4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %24, i32 %25, i32 %26, i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %23
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37, %31, %20
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
