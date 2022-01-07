; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_usb_ulp_read_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_usb_ulp_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i32 }

@RSI_GSPI_DATA_REG1 = common dso_local global i32 0, align 4
@RSI_GSPI_DATA_REG0 = common dso_local global i32 0, align 4
@RSI_GSPI_CTRL_REG0 = common dso_local global i32 0, align 4
@RSI_GSPI_CTRL_REG0_VALUE = common dso_local global i32 0, align 4
@RSI_GSPI_CTRL_REG1 = common dso_local global i32 0, align 4
@RSI_GSPI_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsi_hw*, i32, i32, i32)* @usb_ulp_read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_ulp_read_write(%struct.rsi_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsi_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rsi_hw* %0, %struct.rsi_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %12 = load i32, i32* @RSI_GSPI_DATA_REG1, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 6
  %15 = load i32, i32* %8, align 4
  %16 = ashr i32 %15, 16
  %17 = and i32 %16, 65535
  %18 = or i32 %14, %17
  %19 = call i32 @rsi_usb_master_reg_write(%struct.rsi_hw* %11, i32 %12, i32 %18, i32 2)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %52

24:                                               ; preds = %4
  %25 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %26 = load i32, i32* @RSI_GSPI_DATA_REG0, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 65535
  %29 = call i32 @rsi_usb_master_reg_write(%struct.rsi_hw* %25, i32 %26, i32 %28, i32 2)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %52

34:                                               ; preds = %24
  %35 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %36 = load i32, i32* @RSI_GSPI_CTRL_REG0, align 4
  %37 = load i32, i32* @RSI_GSPI_CTRL_REG0_VALUE, align 4
  %38 = call i32 @rsi_usb_master_reg_write(%struct.rsi_hw* %35, i32 %36, i32 %37, i32 2)
  %39 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %40 = load i32, i32* @RSI_GSPI_CTRL_REG1, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* @RSI_GSPI_TRIG, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @rsi_usb_master_reg_write(%struct.rsi_hw* %39, i32 %40, i32 %44, i32 2)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %34
  %51 = call i32 @msleep(i32 20)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %48, %32, %22
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @rsi_usb_master_reg_write(%struct.rsi_hw*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
