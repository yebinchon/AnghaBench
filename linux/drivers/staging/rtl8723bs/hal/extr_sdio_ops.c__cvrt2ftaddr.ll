; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c__cvrt2ftaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c__cvrt2ftaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDIO_LOCAL_MSK = common dso_local global i32 0, align 4
@WLAN_FIFO_MSK = common dso_local global i32 0, align 4
@WLAN_RX0FF_MSK = common dso_local global i32 0, align 4
@WLAN_IOREG_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @_cvrt2ftaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cvrt2ftaddr(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @get_deviceid(i32 %10)
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %26 [
    i32 133, label %13
    i32 130, label %17
    i32 128, label %17
    i32 129, label %17
    i32 131, label %21
    i32 132, label %25
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SDIO_LOCAL_MSK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  br label %30

17:                                               ; preds = %3, %3, %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @WLAN_FIFO_MSK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  br label %30

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @WLAN_RX0FF_MSK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  br label %30

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %3, %25
  store i32 132, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @WLAN_IOREG_MSK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %21, %17, %13
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 13
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @get_deviceid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
