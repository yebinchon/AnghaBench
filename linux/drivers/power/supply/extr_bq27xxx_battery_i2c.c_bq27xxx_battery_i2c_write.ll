; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_i2c.c_bq27xxx_battery_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_i2c.c_bq27xxx_battery_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i64, i32, i64* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, i64, i32, i32)* @bq27xxx_battery_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_i2c_write(%struct.bq27xxx_device_info* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bq27xxx_device_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca [4 x i64], align 16
  %13 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %15 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.i2c_client* @to_i2c_client(i32 %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %63

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %26, i64* %27, align 16
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 2, i32* %34, align 8
  br label %40

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %38 = call i32 @put_unaligned_le16(i32 %36, i64* %37)
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 3, i32* %39, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i64* %41, i64** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i2c_transfer(i32 %50, %struct.i2c_msg* %11, i32 1)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %63

56:                                               ; preds = %40
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %59, %54, %22
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i64*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
