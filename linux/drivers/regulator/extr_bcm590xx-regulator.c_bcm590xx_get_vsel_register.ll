; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_bcm590xx-regulator.c_bcm590xx_get_vsel_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_bcm590xx-regulator.c_bcm590xx_get_vsel_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCM590XX_RFLDOCTRL = common dso_local global i32 0, align 4
@BCM590XX_GPLDO1CTRL = common dso_local global i32 0, align 4
@BCM590XX_CSRVOUT1 = common dso_local global i32 0, align 4
@BCM590XX_REG_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm590xx_get_vsel_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm590xx_get_vsel_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @BCM590XX_REG_IS_LDO(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @BCM590XX_RFLDOCTRL, align 4
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @BCM590XX_REG_IS_GPLDO(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @BCM590XX_GPLDO1CTRL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %11
  %20 = load i32, i32* @BCM590XX_CSRVOUT1, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @BCM590XX_REG_CSR, align 4
  %23 = sub nsw i32 %21, %22
  %24 = mul nsw i32 %23, 3
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %15, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @BCM590XX_REG_IS_LDO(i32) #1

declare dso_local i64 @BCM590XX_REG_IS_GPLDO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
