; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitOperationMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitOperationMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32 }

@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@BW_OPMODE_5G = common dso_local global i32 0, align 4
@REG_BWOPMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitOperationMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitOperationMode(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_ext_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  store %struct.mlme_ext_priv* %6, %struct.mlme_ext_priv** %3, align 8
  %7 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %21 [
    i32 131, label %10
    i32 133, label %12
    i32 130, label %13
    i32 132, label %15
    i32 129, label %17
    i32 128, label %19
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %11, i32* %4, align 4
  br label %22

12:                                               ; preds = %1
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %14, i32* %4, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %16, i32* %4, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %18, i32* %4, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @BW_OPMODE_5G, align 4
  store i32 %20, i32* %4, align 4
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %19, %17, %15, %13, %12, %10
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = load i32, i32* @REG_BWOPMODE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @rtw_write8(%struct.adapter* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
