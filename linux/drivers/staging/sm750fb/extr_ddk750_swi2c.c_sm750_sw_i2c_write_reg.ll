; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sm750_sw_i2c_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sm750_sw_i2c_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sm750_sw_i2c_write_reg(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i64 0, i64* %7, align 8
  %8 = call i32 (...) @sw_i2c_start()
  %9 = load i8, i8* %4, align 1
  %10 = call i64 @sw_i2c_write_byte(i8 zeroext %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load i8, i8* %5, align 1
  %14 = call i64 @sw_i2c_write_byte(i8 zeroext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8, i8* %6, align 1
  %18 = call i64 @sw_i2c_write_byte(i8 zeroext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12, %3
  store i64 -1, i64* %7, align 8
  br label %21

21:                                               ; preds = %20, %16
  %22 = call i32 (...) @sw_i2c_stop()
  %23 = load i64, i64* %7, align 8
  ret i64 %23
}

declare dso_local i32 @sw_i2c_start(...) #1

declare dso_local i64 @sw_i2c_write_byte(i8 zeroext) #1

declare dso_local i32 @sw_i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
