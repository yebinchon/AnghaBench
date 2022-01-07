; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl-regulator.c_twl4030_send_pb_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl-regulator.c_twl4030_send_pb_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_PB_CFG = common dso_local global i32 0, align 4
@PB_I2C_BWEN = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_PB_WORD_MSB = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_PB_WORD_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twl4030_send_pb_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_send_pb_msg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %7 = load i32, i32* @TWL4030_PM_MASTER_PB_CFG, align 4
  %8 = call i32 @twl_i2c_read_u8(i32 %6, i32* %4, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PB_I2C_BWEN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @TWL4030_PM_MASTER_PB_CFG, align 4
  %19 = call i32 @twl_i2c_write_u8(i32 %14, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %61

24:                                               ; preds = %13
  %25 = call i32 (...) @twl4030_wait_pb_ready()
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %61

30:                                               ; preds = %24
  %31 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %32 = load i32, i32* %3, align 4
  %33 = lshr i32 %32, 8
  %34 = load i32, i32* @TWL4030_PM_MASTER_PB_WORD_MSB, align 4
  %35 = call i32 @twl_i2c_write_u8(i32 %31, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %61

40:                                               ; preds = %30
  %41 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 255
  %44 = load i32, i32* @TWL4030_PM_MASTER_PB_WORD_LSB, align 4
  %45 = call i32 @twl_i2c_write_u8(i32 %41, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %61

50:                                               ; preds = %40
  %51 = call i32 (...) @twl4030_wait_pb_ready()
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %61

56:                                               ; preds = %50
  %57 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @TWL4030_PM_MASTER_PB_CFG, align 4
  %60 = call i32 @twl_i2c_write_u8(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %54, %48, %38, %28, %22, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @twl4030_wait_pb_ready(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
