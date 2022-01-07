; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_bcn_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_bcn_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_BCN_CTRL = common dso_local global i64 0, align 8
@EN_BCN_FUNCTION = common dso_local global i32 0, align 4
@EN_TXBCN_RPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32*)* @hw_var_set_bcn_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_var_set_bcn_func(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* @REG_BCN_CTRL, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @EN_BCN_FUNCTION, align 4
  %17 = load i32, i32* @EN_TXBCN_RPT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @rtw_write8(%struct.adapter* %14, i64 %15, i32 %18)
  br label %42

20:                                               ; preds = %3
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @rtw_read8(%struct.adapter* %21, i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @EN_BCN_FUNCTION, align 4
  %25 = load i32, i32* @EN_TXBCN_RPT, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i64, i64* @REG_BCN_CTRL, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32, i32* @EN_BCN_FUNCTION, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %20
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @rtw_write8(%struct.adapter* %38, i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %13
  ret void
}

declare dso_local i32 @rtw_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
