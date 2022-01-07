; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_decode_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_decode_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i32, i32 }
%struct.gb_i2c_transfer_response = type { i32* }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_msg*, i64, %struct.gb_i2c_transfer_response*)* @gb_i2c_decode_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_i2c_decode_response(%struct.i2c_msg* %0, i64 %1, %struct.gb_i2c_transfer_response* %2) #0 {
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gb_i2c_transfer_response*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.i2c_msg* %0, %struct.i2c_msg** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.gb_i2c_transfer_response* %2, %struct.gb_i2c_transfer_response** %6, align 8
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  store %struct.i2c_msg* %10, %struct.i2c_msg** %7, align 8
  %11 = load %struct.gb_i2c_transfer_response*, %struct.gb_i2c_transfer_response** %6, align 8
  %12 = icmp ne %struct.gb_i2c_transfer_response* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.gb_i2c_transfer_response*, %struct.gb_i2c_transfer_response** %6, align 8
  %16 = getelementptr inbounds %struct.gb_i2c_transfer_response, %struct.gb_i2c_transfer_response* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %47, %14
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I2C_M_RD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %32, i32* %33, i32 %36)
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %8, align 8
  br label %44

44:                                               ; preds = %29, %22
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 1
  store %struct.i2c_msg* %46, %struct.i2c_msg** %7, align 8
  br label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %18

50:                                               ; preds = %13, %18
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
