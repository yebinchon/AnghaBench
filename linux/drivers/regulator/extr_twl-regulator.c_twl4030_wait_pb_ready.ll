; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl-regulator.c_twl4030_wait_pb_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl-regulator.c_twl4030_wait_pb_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_PB_CFG = common dso_local global i32 0, align 4
@PB_I2C_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @twl4030_wait_pb_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_wait_pb_ready() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 10, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %0
  %6 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %7 = load i32, i32* @TWL4030_PM_MASTER_PB_CFG, align 4
  %8 = call i32 @twl_i2c_read_u8(i32 %6, i32* %4, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %1, align 4
  br label %29

13:                                               ; preds = %5
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PB_I2C_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %29

19:                                               ; preds = %13
  %20 = call i32 @mdelay(i32 1)
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %5, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %26, %18, %11
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
