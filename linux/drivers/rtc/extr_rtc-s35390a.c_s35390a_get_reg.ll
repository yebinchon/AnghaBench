; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s35390a = type { %struct.i2c_client** }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s35390a*, i32, i8*, i32)* @s35390a_get_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_get_reg(%struct.s35390a* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.s35390a*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.s35390a* %0, %struct.s35390a** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.s35390a*, %struct.s35390a** %6, align 8
  %13 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %12, i32 0, i32 0
  %14 = load %struct.i2c_client**, %struct.i2c_client*** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %14, i64 %16
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  %25 = load i32, i32* @I2C_M_RD, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %27 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %34 = call i32 @i2c_transfer(i32 %32, %struct.i2c_msg* %33, i32 1)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
