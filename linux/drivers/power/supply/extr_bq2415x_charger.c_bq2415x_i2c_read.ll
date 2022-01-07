; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@bq2415x_i2c_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*, i32)* @bq2415x_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_i2c_read(%struct.bq2415x_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq2415x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [2 x %struct.i2c_msg], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %11 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i2c_client* @to_i2c_client(i32 %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  store i64 0, i64* %28, align 16
  %29 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  store i32* %5, i32** %30, align 16
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  store i32 4, i32* %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* @I2C_M_RD, align 8
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 16
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 0
  store i32* %8, i32** %42, align 16
  %43 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  store i32 4, i32* %44, align 8
  %45 = call i32 @mutex_lock(i32* @bq2415x_i2c_mutex)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %50 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %51 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %50)
  %52 = call i32 @i2c_transfer(i32 %48, %struct.i2c_msg* %49, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = call i32 @mutex_unlock(i32* @bq2415x_i2c_mutex)
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %21
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %21
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %56, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
