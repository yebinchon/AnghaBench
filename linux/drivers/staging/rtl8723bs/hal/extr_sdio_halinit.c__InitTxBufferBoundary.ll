; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitTxBufferBoundary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitTxBufferBoundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.registry_priv }
%struct.registry_priv = type { i32 }

@TX_PAGE_BOUNDARY_8723B = common dso_local global i32 0, align 4
@WMM_NORMAL_TX_PAGE_BOUNDARY_8723B = common dso_local global i32 0, align 4
@REG_TXPKTBUF_BCNQ_BDNY_8723B = common dso_local global i64 0, align 8
@REG_TXPKTBUF_MGQ_BDNY_8723B = common dso_local global i64 0, align 8
@REG_TXPKTBUF_WMAC_LBK_BF_HD_8723B = common dso_local global i64 0, align 8
@REG_TRXFF_BNDY = common dso_local global i64 0, align 8
@REG_TDECTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitTxBufferBoundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitTxBufferBoundary(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.registry_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  store %struct.registry_priv* %6, %struct.registry_priv** %3, align 8
  %7 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %8 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @TX_PAGE_BOUNDARY_8723B, align 4
  store i32 %12, i32* %4, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @WMM_NORMAL_TX_PAGE_BOUNDARY_8723B, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i64, i64* @REG_TXPKTBUF_BCNQ_BDNY_8723B, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @rtw_write8(%struct.adapter* %16, i64 %17, i32 %18)
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = load i64, i64* @REG_TXPKTBUF_MGQ_BDNY_8723B, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @rtw_write8(%struct.adapter* %20, i64 %21, i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = load i64, i64* @REG_TXPKTBUF_WMAC_LBK_BF_HD_8723B, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rtw_write8(%struct.adapter* %24, i64 %25, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = load i64, i64* @REG_TRXFF_BNDY, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @rtw_write8(%struct.adapter* %28, i64 %29, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = load i64, i64* @REG_TDECTRL, align 8
  %34 = add nsw i64 %33, 1
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @rtw_write8(%struct.adapter* %32, i64 %34, i32 %35)
  ret void
}

declare dso_local i32 @rtw_write8(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
