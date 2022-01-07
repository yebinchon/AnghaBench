; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_init_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_init_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32 }

@FUSB_REG_MASK = common dso_local global i32 0, align 4
@FUSB_REG_MASK_VBUSOK = common dso_local global i32 0, align 4
@FUSB_REG_MASKA = common dso_local global i32 0, align 4
@FUSB_REG_MASKB = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL0 = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL0_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*)* @fusb302_init_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_init_interrupt(%struct.fusb302_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fusb302_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %6 = load i32, i32* @FUSB_REG_MASK, align 4
  %7 = load i32, i32* @FUSB_REG_MASK_VBUSOK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 255, %8
  %10 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %5, i32 %6, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %17 = load i32, i32* @FUSB_REG_MASKA, align 4
  %18 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %16, i32 %17, i32 255)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %15
  %24 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %25 = load i32, i32* @FUSB_REG_MASKB, align 4
  %26 = call i32 @fusb302_i2c_write(%struct.fusb302_chip* %24, i32 %25, i32 255)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %23
  %32 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %33 = load i32, i32* @FUSB_REG_CONTROL0, align 4
  %34 = load i32, i32* @FUSB_REG_CONTROL0_INT_MASK, align 4
  %35 = call i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip* %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38, %29, %21, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @fusb302_i2c_write(%struct.fusb302_chip*, i32, i32) #1

declare dso_local i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
