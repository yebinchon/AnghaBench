; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_arm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_arm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@ISL12026_REG_SR = common dso_local global i32 0, align 4
@ISL12026_REG_SR_WEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"write error SR.WEL, ret=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ISL12026_REG_SR_RWEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"write error SR.WEL|SR.RWEL, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @isl12026_arm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl12026_arm_write(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.i2c_msg, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32* %8, i32** %7, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @ISL12026_REG_SR, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @ISL12026_REG_SR_WEL, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 3, i32* %19, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @i2c_transfer(i32 %22, %struct.i2c_msg* %5, i32 1)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %1
  %41 = load i32, i32* @ISL12026_REG_SR_WEL, align 4
  %42 = load i32, i32* @ISL12026_REG_SR_RWEL, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 3, i32* %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @i2c_transfer(i32 %48, %struct.i2c_msg* %5, i32 1)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %66

52:                                               ; preds = %40
  %53 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i32 [ %60, %59 ], [ %63, %61 ]
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %64, %38
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
