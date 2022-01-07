; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_rtw_dump_xframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_rtw_dump_xframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv }
%struct.xmit_priv = type { i32 }
%struct.xmit_frame = type { i64, i32*, %struct.pkt_attrib, %struct.xmit_buf* }
%struct.pkt_attrib = type { i32, i32, i32, i32, i32 }
%struct.xmit_buf = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@DATA_FRAMETAG = common dso_local global i64 0, align 8
@_module_rtl871x_xmit_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"rtw_dump_xframe()\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"pattrib->nr_frags=%d\0A\00", align 1
@PACKET_OFFSET_SZ = common dso_local global i32 0, align 4
@TXDESC_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"rtw_write_port, w_sz=%d\0A\00", align 1
@RTW_SCTX_DONE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adapter*, %struct.xmit_frame*)* @rtw_dump_xframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtw_dump_xframe(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xmit_buf*, align 8
  %14 = alloca %struct.pkt_attrib*, align 8
  %15 = alloca %struct.xmit_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %16 = load i64, i64* @_SUCCESS, align 8
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* @_SUCCESS, align 8
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %19 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %18, i32 0, i32 3
  %20 = load %struct.xmit_buf*, %struct.xmit_buf** %19, align 8
  store %struct.xmit_buf* %20, %struct.xmit_buf** %13, align 8
  %21 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %22 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %21, i32 0, i32 2
  store %struct.pkt_attrib* %22, %struct.pkt_attrib** %14, align 8
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  store %struct.xmit_priv* %24, %struct.xmit_priv** %15, align 8
  %25 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %26 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DATA_FRAMETAG, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %2
  %31 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %32 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 2054
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %38 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 34958
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %44 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 34996
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %50 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %57 = call i32 @rtw_issue_addbareq_cmd(%struct.adapter* %55, %struct.xmit_frame* %56)
  br label %58

58:                                               ; preds = %54, %48, %42, %36, %30, %2
  %59 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %60 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %11, align 8
  %62 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %63 = load i32, i32* @_drv_info_, align 4
  %64 = call i32 @RT_TRACE(i32 %62, i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %160, %58
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %68 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %163

71:                                               ; preds = %65
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* @_FAIL, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %79, %75, %71
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %84 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp ne i32 %82, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %81
  %89 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %90 = load i32, i32* @_drv_err_, align 4
  %91 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %92 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @RT_TRACE(i32 %89, i32 %90, i8* %95)
  %97 = load %struct.xmit_priv*, %struct.xmit_priv** %15, align 8
  %98 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %100, 4
  %102 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %103 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %101, %104
  store i32 %105, i32* %8, align 4
  br label %110

106:                                              ; preds = %81
  %107 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %108 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %106, %88
  %111 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @update_txdesc(%struct.xmit_frame* %111, i32* %112, i32 %113, i32 0)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load i32, i32* @PACKET_OFFSET_SZ, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %11, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %124 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @TXDESC_SIZE, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %9, align 4
  br label %134

128:                                              ; preds = %110
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @TXDESC_SIZE, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* @PACKET_OFFSET_SZ, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %128, %117
  %135 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %136 = call i32 @rtw_get_ff_hwaddr(%struct.xmit_frame* %135)
  store i32 %136, i32* %12, align 4
  %137 = load %struct.adapter*, %struct.adapter** %3, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.xmit_buf*, %struct.xmit_buf** %13, align 8
  %141 = call i64 @usb_write_port(%struct.adapter* %137, i32 %138, i32 %139, %struct.xmit_buf* %140)
  store i64 %141, i64* %6, align 8
  %142 = load %struct.adapter*, %struct.adapter** %3, align 8
  %143 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @rtw_count_tx_stats(%struct.adapter* %142, %struct.xmit_frame* %143, i32 %144)
  %146 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %147 = load i32, i32* @_drv_info_, align 4
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 @RT_TRACE(i32 %146, i32 %147, i8* %150)
  %152 = load i32, i32* %9, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %11, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = ptrtoint i32* %156 to i64
  %158 = call i64 @round_up(i64 %157, i32 4)
  %159 = inttoptr i64 %158 to i32*
  store i32* %159, i32** %11, align 8
  br label %160

160:                                              ; preds = %134
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %65

163:                                              ; preds = %65
  %164 = load %struct.xmit_priv*, %struct.xmit_priv** %15, align 8
  %165 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %166 = call i32 @rtw_free_xmitframe(%struct.xmit_priv* %164, %struct.xmit_frame* %165)
  %167 = load i64, i64* %5, align 8
  %168 = load i64, i64* @_SUCCESS, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load %struct.xmit_buf*, %struct.xmit_buf** %13, align 8
  %172 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %171, i32 0, i32 0
  %173 = load i32, i32* @RTW_SCTX_DONE_UNKNOWN, align 4
  %174 = call i32 @rtw_sctx_done_err(i32* %172, i32 %173)
  br label %175

175:                                              ; preds = %170, %163
  %176 = load i64, i64* %5, align 8
  ret i64 %176
}

declare dso_local i32 @rtw_issue_addbareq_cmd(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @update_txdesc(%struct.xmit_frame*, i32*, i32, i32) #1

declare dso_local i32 @rtw_get_ff_hwaddr(%struct.xmit_frame*) #1

declare dso_local i64 @usb_write_port(%struct.adapter*, i32, i32, %struct.xmit_buf*) #1

declare dso_local i32 @rtw_count_tx_stats(%struct.adapter*, %struct.xmit_frame*, i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @rtw_free_xmitframe(%struct.xmit_priv*, %struct.xmit_frame*) #1

declare dso_local i32 @rtw_sctx_done_err(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
