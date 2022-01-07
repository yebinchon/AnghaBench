; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_i2c_write_u8_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_i2c_write_u8_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_usb = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Write%d[%d,0x%x] wrote %02x but read %02x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_usb*, i64, i64, i64)* @twl4030_i2c_write_u8_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_i2c_write_u8_verify(%struct.twl4030_usb* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.twl4030_usb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.twl4030_usb* %0, %struct.twl4030_usb** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 255, i64* %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @twl_i2c_write_u8(i64 %11, i64 %12, i64 %13)
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @twl_i2c_read_u8(i64 %17, i64* %10, i64 %18)
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %61

26:                                               ; preds = %21, %16, %4
  %27 = load %struct.twl4030_usb*, %struct.twl4030_usb** %6, align 8
  %28 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 1, i64 %30, i64 %31, i64 %32, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @twl_i2c_write_u8(i64 %35, i64 %36, i64 %37)
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @twl_i2c_read_u8(i64 %41, i64* %10, i64 %42)
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %61

50:                                               ; preds = %45, %40, %26
  %51 = load %struct.twl4030_usb*, %struct.twl4030_usb** %6, align 8
  %52 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 2, i64 %54, i64 %55, i64 %56, i64 %57)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %50, %49, %25
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @twl_i2c_write_u8(i64, i64, i64) #1

declare dso_local i64 @twl_i2c_read_u8(i64, i64*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
