; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitQueueReservedPage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitQueueReservedPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.registry_priv }
%struct.registry_priv = type { i32 }
%struct.hal_com_data = type { i32 }

@TX_SELE_HQ = common dso_local global i32 0, align 4
@WMM_NORMAL_PAGE_NUM_HPQ_8723B = common dso_local global i32 0, align 4
@NORMAL_PAGE_NUM_HPQ_8723B = common dso_local global i32 0, align 4
@TX_SELE_LQ = common dso_local global i32 0, align 4
@WMM_NORMAL_PAGE_NUM_LPQ_8723B = common dso_local global i32 0, align 4
@NORMAL_PAGE_NUM_LPQ_8723B = common dso_local global i32 0, align 4
@TX_SELE_NQ = common dso_local global i32 0, align 4
@WMM_NORMAL_PAGE_NUM_NPQ_8723B = common dso_local global i32 0, align 4
@NORMAL_PAGE_NUM_NPQ_8723B = common dso_local global i32 0, align 4
@TX_TOTAL_PAGE_NUMBER_8723B = common dso_local global i32 0, align 4
@REG_RQPN_NPQ = common dso_local global i32 0, align 4
@LD_RQPN = common dso_local global i32 0, align 4
@REG_RQPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitQueueReservedPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitQueueReservedPage(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca %struct.registry_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %12)
  store %struct.hal_com_data* %13, %struct.hal_com_data** %3, align 8
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  store %struct.registry_priv* %15, %struct.registry_priv** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %17 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %20 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TX_SELE_HQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @WMM_NORMAL_PAGE_NUM_HPQ_8723B, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @NORMAL_PAGE_NUM_HPQ_8723B, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %1
  %35 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %36 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TX_SELE_LQ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @WMM_NORMAL_PAGE_NUM_LPQ_8723B, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @NORMAL_PAGE_NUM_LPQ_8723B, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %34
  %51 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %52 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TX_SELE_NQ, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @WMM_NORMAL_PAGE_NUM_NPQ_8723B, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @NORMAL_PAGE_NUM_NPQ_8723B, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %50
  %67 = load i32, i32* @TX_TOTAL_PAGE_NUMBER_8723B, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @_NPQ(i32 %74)
  store i64 %75, i64* %10, align 8
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = load i32, i32* @REG_RQPN_NPQ, align 4
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @rtw_write8(%struct.adapter* %76, i32 %77, i64 %78)
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @_HPQ(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @_LPQ(i32 %82)
  %84 = or i32 %81, %83
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @_PUBQ(i32 %85)
  %87 = or i32 %84, %86
  %88 = load i32, i32* @LD_RQPN, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %9, align 4
  %90 = load %struct.adapter*, %struct.adapter** %2, align 8
  %91 = load i32, i32* @REG_RQPN, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @rtw_write32(%struct.adapter* %90, i32 %91, i32 %92)
  %94 = load %struct.adapter*, %struct.adapter** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @rtw_hal_set_sdio_tx_max_length(%struct.adapter* %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.adapter*, %struct.adapter** %2, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @_init_available_page_threshold(%struct.adapter* %100, i32 %101, i32 %102, i32 %103, i32 %104)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i64 @_NPQ(i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i64) #1

declare dso_local i32 @_HPQ(i32) #1

declare dso_local i32 @_LPQ(i32) #1

declare dso_local i32 @_PUBQ(i32) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_hal_set_sdio_tx_max_length(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @_init_available_page_threshold(%struct.adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
