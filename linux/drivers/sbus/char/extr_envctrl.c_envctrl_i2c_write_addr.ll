; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_i2c_write_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_i2c_write_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c = common dso_local global i64 0, align 8
@PCF8584_DATA = common dso_local global i64 0, align 8
@OBD_SEND_START = common dso_local global i8 0, align 1
@PCF8584_CSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @envctrl_i2c_write_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envctrl_i2c_write_addr(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = call i32 (...) @envctrl_i2c_test_bb()
  %4 = load i8, i8* %2, align 1
  %5 = load i64, i64* @i2c, align 8
  %6 = load i64, i64* @PCF8584_DATA, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writeb(i8 zeroext %4, i64 %7)
  %9 = load i8, i8* @OBD_SEND_START, align 1
  %10 = load i64, i64* @i2c, align 8
  %11 = load i64, i64* @PCF8584_CSR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writeb(i8 zeroext %9, i64 %12)
  ret void
}

declare dso_local i32 @envctrl_i2c_test_bb(...) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
