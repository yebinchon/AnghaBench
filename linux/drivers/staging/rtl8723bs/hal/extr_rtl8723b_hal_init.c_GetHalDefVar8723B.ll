; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_GetHalDefVar8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_GetHalDefVar8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@MAX_RECVBUF_SZ = common dso_local global i32 0, align 4
@RXDESC_SIZE = common dso_local global i32 0, align 4
@DRVINFO_SZ = common dso_local global i32 0, align 4
@MAX_AMPDU_FACTOR_16K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"============ RA status check  Mac_id:%d ===================\0A\00", align 1
@REG_HMEBOX_DBG_2_8723B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"[ ra_info1:0x%08x ] =>cur_tx_rate = %s, cur_sgi:%d, PWRSTS = 0x%02x \0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"[ ra_info1:0x%08x ] =>RSSI =%d, BW_setting = 0x%02x, DISRA = 0x%02x, VHT_EN = 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"[ ra_info2:0x%08x ] =>hight_rate =%s, lowest_rate =%s, SGI = 0x%02x, RateID =%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"rate_mask2 = 0x%08x, rate_mask1 = 0x%08x\0A\00", align 1
@TX_PAGE_BOUNDARY_8723B = common dso_local global i32 0, align 4
@WMM_NORMAL_TX_PAGE_BOUNDARY_8723B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetHalDefVar8723B(%struct.adapter* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %18 = load i32, i32* @_SUCCESS, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %141 [
    i32 136, label %20
    i32 134, label %24
    i32 128, label %31
    i32 132, label %35
    i32 135, label %35
    i32 130, label %38
    i32 133, label %41
    i32 138, label %44
    i32 139, label %44
    i32 129, label %47
    i32 131, label %123
    i32 137, label %138
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @MAX_RECVBUF_SZ, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 4
  br label %146

24:                                               ; preds = %3
  %25 = load i32, i32* @RXDESC_SIZE, align 4
  %26 = load i32, i32* @DRVINFO_SZ, align 4
  %27 = mul nsw i32 %26, 8
  %28 = add nsw i32 %25, %27
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %146

31:                                               ; preds = %3
  %32 = load i32, i32* @MAX_AMPDU_FACTOR_16K, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %146

35:                                               ; preds = %3, %3
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to i32*
  store i32 0, i32* %37, align 4
  br label %146

38:                                               ; preds = %3
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 0, i32* %40, align 4
  br label %146

41:                                               ; preds = %3
  %42 = load i8*, i8** %6, align 8
  %43 = bitcast i8* %42 to i32*
  store i32 1, i32* %43, align 4
  br label %146

44:                                               ; preds = %3, %3
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to i32*
  store i32 0, i32* %46, align 4
  br label %146

47:                                               ; preds = %3
  %48 = load i8*, i8** %6, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i8*, i32, ...) @DBG_8192C(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = or i32 1073742080, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = load i32, i32* @REG_HMEBOX_DBG_2_8723B, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @rtw_write32(%struct.adapter* %55, i32 %56, i32 %57)
  %59 = call i32 @msleep(i32 10)
  %60 = load %struct.adapter*, %struct.adapter** %4, align 8
  %61 = call i32 @rtw_read32(%struct.adapter* %60, i32 752)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 127
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %10, align 4
  %65 = ashr i32 %64, 7
  %66 = and i32 %65, 1
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @HDATA_RATE(i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %10, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 7
  %74 = call i32 (i8*, i32, ...) @DBG_8192C(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %69, i32 %70, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 1073742848, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.adapter*, %struct.adapter** %4, align 8
  %78 = load i32, i32* @REG_HMEBOX_DBG_2_8723B, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @rtw_write32(%struct.adapter* %77, i32 %78, i32 %79)
  %81 = call i32 @msleep(i32 10)
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = call i32 @rtw_read32(%struct.adapter* %82, i32 752)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.adapter*, %struct.adapter** %4, align 8
  %85 = call i32 @rtw_read32(%struct.adapter* %84, i32 756)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.adapter*, %struct.adapter** %4, align 8
  %87 = call i32 @rtw_read32(%struct.adapter* %86, i32 760)
  store i32 %87, i32* %12, align 4
  %88 = load %struct.adapter*, %struct.adapter** %4, align 8
  %89 = call i32 @rtw_read32(%struct.adapter* %88, i32 764)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, 255
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %11, align 4
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 255
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 255
  %98 = load i32, i32* %10, align 4
  %99 = ashr i32 %98, 8
  %100 = and i32 %99, 255
  %101 = load i32, i32* %10, align 4
  %102 = ashr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = load i32, i32* %10, align 4
  %105 = ashr i32 %104, 24
  %106 = and i32 %105, 255
  %107 = call i32 (i8*, i32, ...) @DBG_8192C(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %97, i32 %100, i32 %103, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @HDATA_RATE(i32 %109)
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @HDATA_RATE(i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = ashr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = load i32, i32* %11, align 4
  %117 = ashr i32 %116, 24
  %118 = and i32 %117, 255
  %119 = call i32 (i8*, i32, ...) @DBG_8192C(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %110, i32 %112, i32 %115, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (i8*, i32, ...) @DBG_8192C(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121)
  br label %146

123:                                              ; preds = %3
  %124 = load %struct.adapter*, %struct.adapter** %4, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @TX_PAGE_BOUNDARY_8723B, align 4
  %131 = load i8*, i8** %6, align 8
  %132 = bitcast i8* %131 to i32*
  store i32 %130, i32* %132, align 4
  br label %137

133:                                              ; preds = %123
  %134 = load i32, i32* @WMM_NORMAL_TX_PAGE_BOUNDARY_8723B, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = bitcast i8* %135 to i32*
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %129
  br label %146

138:                                              ; preds = %3
  %139 = load i8*, i8** %6, align 8
  %140 = bitcast i8* %139 to i32*
  store i32 1, i32* %140, align 4
  br label %146

141:                                              ; preds = %3
  %142 = load %struct.adapter*, %struct.adapter** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @GetHalDefVar(%struct.adapter* %142, i32 %143, i8* %144)
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %141, %138, %137, %47, %44, %41, %38, %35, %31, %24, %20
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @DBG_8192C(i8*, i32, ...) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

declare dso_local i32 @HDATA_RATE(i32) #1

declare dso_local i32 @GetHalDefVar(%struct.adapter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
