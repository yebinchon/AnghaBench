; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Reading register %x from %x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_read(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 8
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds i32, i32* %9, i64 1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  store i32 2, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 1
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  store i32 2, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %27, i32** %26, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 2
  %29 = load i32, i32* @I2C_M_RD, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 3
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %39 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %38)
  %40 = call i32 @i2c_transfer(i32 %36, %struct.i2c_msg* %37, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 1
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %2
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 255
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %43
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
