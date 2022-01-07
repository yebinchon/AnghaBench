; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_mlme_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_mlme_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_RXFLTMAP2 = common dso_local global i32 0, align 4
@REG_DUAL_TSF_RST = common dso_local global i32 0, align 4
@REG_BCN_CTRL = common dso_local global i32 0, align 4
@DIS_TSF_UDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32*)* @hw_var_set_mlme_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_var_set_mlme_disconnect(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = load i32, i32* @REG_RXFLTMAP2, align 4
  %10 = call i32 @rtw_write16(%struct.adapter* %8, i32 %9, i32 0)
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = load i32, i32* @REG_DUAL_TSF_RST, align 4
  %13 = call i32 @BIT(i32 0)
  %14 = call i32 @rtw_write8(%struct.adapter* %11, i32 %12, i32 %13)
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = load i32, i32* @REG_BCN_CTRL, align 4
  %17 = call i32 @rtw_read8(%struct.adapter* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @DIS_TSF_UDT, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load i32, i32* @REG_BCN_CTRL, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @rtw_write8(%struct.adapter* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @rtw_write16(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
