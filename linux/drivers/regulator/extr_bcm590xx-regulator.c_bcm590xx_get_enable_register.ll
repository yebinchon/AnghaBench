; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_bcm590xx-regulator.c_bcm590xx_get_enable_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_bcm590xx-regulator.c_bcm590xx_get_enable_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCM590XX_RFLDOPMCTRL1 = common dso_local global i32 0, align 4
@BCM590XX_GPLDO1PMCTRL1 = common dso_local global i32 0, align 4
@BCM590XX_CSRPMCTRL1 = common dso_local global i32 0, align 4
@BCM590XX_IOSR1PMCTRL1 = common dso_local global i32 0, align 4
@BCM590XX_IOSR2PMCTRL1 = common dso_local global i32 0, align 4
@BCM590XX_MSRPMCTRL1 = common dso_local global i32 0, align 4
@BCM590XX_SDSR1PMCTRL1 = common dso_local global i32 0, align 4
@BCM590XX_SDSR2PMCTRL1 = common dso_local global i32 0, align 4
@BCM590XX_VSRPMCTRL1 = common dso_local global i32 0, align 4
@BCM590XX_OTG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm590xx_get_enable_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm590xx_get_enable_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @BCM590XX_REG_IS_LDO(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @BCM590XX_RFLDOPMCTRL1, align 4
  %9 = load i32, i32* %2, align 4
  %10 = mul nsw i32 %9, 2
  %11 = add nsw i32 %8, %10
  store i32 %11, i32* %3, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @BCM590XX_REG_IS_GPLDO(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* @BCM590XX_GPLDO1PMCTRL1, align 4
  %18 = load i32, i32* %2, align 4
  %19 = mul nsw i32 %18, 2
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %12
  %22 = load i32, i32* %2, align 4
  switch i32 %22, label %39 [
    i32 135, label %23
    i32 134, label %25
    i32 133, label %27
    i32 132, label %29
    i32 131, label %31
    i32 130, label %33
    i32 128, label %35
    i32 129, label %37
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @BCM590XX_CSRPMCTRL1, align 4
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %21
  %26 = load i32, i32* @BCM590XX_IOSR1PMCTRL1, align 4
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %21
  %28 = load i32, i32* @BCM590XX_IOSR2PMCTRL1, align 4
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %21
  %30 = load i32, i32* @BCM590XX_MSRPMCTRL1, align 4
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %21
  %32 = load i32, i32* @BCM590XX_SDSR1PMCTRL1, align 4
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %21
  %34 = load i32, i32* @BCM590XX_SDSR2PMCTRL1, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %21
  %36 = load i32, i32* @BCM590XX_VSRPMCTRL1, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %21
  %38 = load i32, i32* @BCM590XX_OTG_CTRL, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %21, %37, %35, %33, %31, %29, %27, %25, %23
  br label %40

40:                                               ; preds = %39, %16
  br label %41

41:                                               ; preds = %40, %7
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @BCM590XX_REG_IS_LDO(i32) #1

declare dso_local i64 @BCM590XX_REG_IS_GPLDO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
