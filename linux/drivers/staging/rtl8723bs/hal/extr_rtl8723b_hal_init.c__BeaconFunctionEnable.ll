; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c__BeaconFunctionEnable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c__BeaconFunctionEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_BCN_CTRL = common dso_local global i64 0, align 8
@DIS_TSF_UDT = common dso_local global i32 0, align 4
@EN_BCN_FUNCTION = common dso_local global i32 0, align 4
@DIS_BCNQ_SUB = common dso_local global i32 0, align 4
@REG_RD_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32)* @_BeaconFunctionEnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_BeaconFunctionEnable(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = load i64, i64* @REG_BCN_CTRL, align 8
  %9 = load i32, i32* @DIS_TSF_UDT, align 4
  %10 = load i32, i32* @EN_BCN_FUNCTION, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DIS_BCNQ_SUB, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @rtw_write8(%struct.adapter* %7, i64 %8, i32 %13)
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = load i64, i64* @REG_RD_CTRL, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i32 @rtw_write8(%struct.adapter* %15, i64 %17, i32 111)
  ret void
}

declare dso_local i32 @rtw_write8(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
