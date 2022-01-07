; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_hw_i2c_wait_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_hw_i2c_wait_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HWI2C_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@I2C_STATUS = common dso_local global i32 0, align 4
@I2C_STATUS_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @hw_i2c_wait_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hw_i2c_wait_tx_done() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @HWI2C_WAIT_TIMEOUT, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* @I2C_STATUS, align 4
  %6 = call i32 @peek32(i32 %5)
  %7 = load i32, i32* @I2C_STATUS_TX, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i1 [ false, %4 ], [ %12, %10 ]
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i32, i32* %2, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %2, align 4
  br label %4

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i64 -1, i64* %1, align 8
  br label %23

22:                                               ; preds = %18
  store i64 0, i64* %1, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i64, i64* %1, align 8
  ret i64 %24
}

declare dso_local i32 @peek32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
