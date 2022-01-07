; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_read_eeprom_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_read_eeprom_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }

@EE_ADDR = common dso_local global i32 0, align 4
@EE_CTL = common dso_local global i32 0, align 4
@EE_CTL_READ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@EE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, i32, i32*)* @wl1251_read_eeprom_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_read_eeprom_byte(%struct.wl1251* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %10 = load i32, i32* @EE_ADDR, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @wl1251_reg_write32(%struct.wl1251* %9, i32 %10, i32 %11)
  %13 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %14 = load i32, i32* @EE_CTL, align 4
  %15 = load i32, i32* @EE_CTL_READ, align 4
  %16 = call i32 @wl1251_reg_write32(%struct.wl1251* %13, i32 %14, i32 %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = call i64 @msecs_to_jiffies(i32 100)
  %19 = add i64 %17, %18
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %3, %36
  %21 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %22 = load i32, i32* @EE_CTL, align 4
  %23 = call i32 @wl1251_reg_read32(%struct.wl1251* %21, i32 %22)
  %24 = load i32, i32* @EE_CTL_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %38

28:                                               ; preds = %20
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @time_after(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %28
  %37 = call i32 @msleep(i32 1)
  br label %20

38:                                               ; preds = %27
  %39 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %40 = load i32, i32* @EE_DATA, align 4
  %41 = call i32 @wl1251_reg_read32(%struct.wl1251* %39, i32 %40)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @wl1251_reg_write32(%struct.wl1251*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wl1251_reg_read32(%struct.wl1251*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
