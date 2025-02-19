; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@RV8803_I2C_TRY_COUNT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to read registers 0x%02x..0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32*)* @rv8803_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv8803_read_regs(%struct.i2c_client* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @RV8803_I2C_TRY_COUNT, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %33, %4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %14, i32 %15, i32 %16, i32* %17)
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  br i1 %34, label %13, label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %11, align 4
  br label %55

52:                                               ; preds = %39
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %54, %52 ]
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
