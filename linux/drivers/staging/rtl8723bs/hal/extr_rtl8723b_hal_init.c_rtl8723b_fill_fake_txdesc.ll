; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_fill_fake_txdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_fill_fake_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tx_desc = type { i32 }

@TXDESC_SIZE = common dso_local global i32 0, align 4
@QSLT_MGNT = common dso_local global i32 0, align 4
@DESC8723B_RATE1M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723b_fill_fake_txdesc(%struct.adapter* %0, i64* %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = load i32, i32* @TXDESC_SIZE, align 4
  %16 = call i32 @memset(i64* %14, i32 0, i32 %15)
  %17 = load i64*, i64** %8, align 8
  %18 = call i32 @SET_TX_DESC_FIRST_SEG_8723B(i64* %17, i32 1)
  %19 = load i64*, i64** %8, align 8
  %20 = call i32 @SET_TX_DESC_LAST_SEG_8723B(i64* %19, i32 1)
  %21 = load i64*, i64** %8, align 8
  %22 = call i32 @SET_TX_DESC_OFFSET_8723B(i64* %21, i32 40)
  %23 = load i64*, i64** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @SET_TX_DESC_PKT_SIZE_8723B(i64* %23, i32 %24)
  %26 = load i64*, i64** %8, align 8
  %27 = load i32, i32* @QSLT_MGNT, align 4
  %28 = call i32 @SET_TX_DESC_QUEUE_SEL_8723B(i64* %26, i32 %27)
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i64*, i64** %8, align 8
  %33 = call i32 @SET_TX_DESC_NAV_USE_HDR_8723B(i64* %32, i32 1)
  br label %39

34:                                               ; preds = %6
  %35 = load i64*, i64** %8, align 8
  %36 = call i32 @SET_TX_DESC_HWSEQ_EN_8723B(i64* %35, i32 1)
  %37 = load i64*, i64** %8, align 8
  %38 = call i32 @SET_TX_DESC_HWSEQ_SEL_8723B(i64* %37, i32 0)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64*, i64** %8, align 8
  %44 = call i32 @SET_TX_DESC_BT_INT_8723B(i64* %43, i32 1)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64*, i64** %8, align 8
  %47 = call i32 @SET_TX_DESC_USE_RATE_8723B(i64* %46, i32 1)
  %48 = load i64*, i64** %8, align 8
  %49 = call i32 @SET_TX_DESC_OWN_8723B(i64* %48, i32 1)
  %50 = load i64*, i64** %8, align 8
  %51 = load i32, i32* @DESC8723B_RATE1M, align 4
  %52 = call i32 @SET_TX_DESC_TX_RATE_8723B(i64* %50, i32 %51)
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %45
  %56 = load %struct.adapter*, %struct.adapter** %7, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  switch i32 %60, label %73 [
    i32 132, label %61
    i32 128, label %64
    i32 129, label %64
    i32 130, label %64
    i32 131, label %67
    i32 133, label %70
  ]

61:                                               ; preds = %55
  %62 = load i64*, i64** %8, align 8
  %63 = call i32 @SET_TX_DESC_SEC_TYPE_8723B(i64* %62, i32 0)
  br label %76

64:                                               ; preds = %55, %55, %55
  %65 = load i64*, i64** %8, align 8
  %66 = call i32 @SET_TX_DESC_SEC_TYPE_8723B(i64* %65, i32 1)
  br label %76

67:                                               ; preds = %55
  %68 = load i64*, i64** %8, align 8
  %69 = call i32 @SET_TX_DESC_SEC_TYPE_8723B(i64* %68, i32 2)
  br label %76

70:                                               ; preds = %55
  %71 = load i64*, i64** %8, align 8
  %72 = call i32 @SET_TX_DESC_SEC_TYPE_8723B(i64* %71, i32 3)
  br label %76

73:                                               ; preds = %55
  %74 = load i64*, i64** %8, align 8
  %75 = call i32 @SET_TX_DESC_SEC_TYPE_8723B(i64* %74, i32 0)
  br label %76

76:                                               ; preds = %73, %70, %67, %64, %61
  br label %77

77:                                               ; preds = %76, %45
  %78 = load i64*, i64** %8, align 8
  %79 = bitcast i64* %78 to %struct.tx_desc*
  %80 = call i32 @rtl8723b_cal_txdesc_chksum(%struct.tx_desc* %79)
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @SET_TX_DESC_FIRST_SEG_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_LAST_SEG_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_OFFSET_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_PKT_SIZE_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_QUEUE_SEL_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_NAV_USE_HDR_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_HWSEQ_EN_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_HWSEQ_SEL_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_BT_INT_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_USE_RATE_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_OWN_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_RATE_8723B(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_SEC_TYPE_8723B(i64*, i32) #1

declare dso_local i32 @rtl8723b_cal_txdesc_chksum(%struct.tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
