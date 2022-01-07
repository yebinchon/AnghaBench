; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitAdaptiveCtrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitAdaptiveCtrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_RRSR = common dso_local global i32 0, align 4
@RATE_BITMAP_ALL = common dso_local global i32 0, align 4
@RATE_RRSR_CCK_ONLY_1M = common dso_local global i32 0, align 4
@REG_SPEC_SIFS = common dso_local global i32 0, align 4
@REG_RL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitAdaptiveCtrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitAdaptiveCtrl(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = load i32, i32* @REG_RRSR, align 4
  %7 = call i32 @rtw_read32(%struct.adapter* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @RATE_BITMAP_ALL, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @RATE_RRSR_CCK_ONLY_1M, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = load i32, i32* @REG_RRSR, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @rtw_write32(%struct.adapter* %15, i32 %16, i32 %17)
  %19 = call i32 @_SPEC_SIFS_CCK(i32 16)
  %20 = call i32 @_SPEC_SIFS_OFDM(i32 16)
  %21 = or i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = load i32, i32* @REG_SPEC_SIFS, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @rtw_write16(%struct.adapter* %22, i32 %23, i32 %24)
  %26 = call i32 @_LRL(i32 48)
  %27 = call i32 @_SRL(i32 48)
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load i32, i32* @REG_RL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @rtw_write16(%struct.adapter* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @_SPEC_SIFS_CCK(i32) #1

declare dso_local i32 @_SPEC_SIFS_OFDM(i32) #1

declare dso_local i32 @rtw_write16(%struct.adapter*, i32, i32) #1

declare dso_local i32 @_LRL(i32) #1

declare dso_local i32 @_SRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
