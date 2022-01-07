; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_validate_recv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_validate_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.adapter = type { %struct.TYPE_9__, %struct.recv_priv }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.recv_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"validate_recv_data_frame fail! (ver!= 0)\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@HAL_DEF_DBG_DUMP_RXPKT = common dso_local global i32 0, align 4
@padapter = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"validate_recv_mgnt_frame fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"validate_recv_ctrl_frame fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"validate_recv_data_frame fail! type = 0x%x\0A\00", align 1
@LLC_HEADER_SIZE = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_recv_frame(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.rx_pkt_attrib*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.recv_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %13 = load i32, i32* @_SUCCESS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %15 = bitcast %union.recv_frame* %14 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store %struct.rx_pkt_attrib* %17, %struct.rx_pkt_attrib** %9, align 8
  %18 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %19 = bitcast %union.recv_frame* %18 to %struct.TYPE_7__*
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %10, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i8
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 3
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %33 = load i32, i32* @_drv_err_, align 4
  %34 = call i32 @RT_TRACE(i32 %32, i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @_FAIL, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DBG_COUNTER(i32 %39)
  br label %225

41:                                               ; preds = %2
  %42 = load i64*, i64** %10, align 8
  %43 = call i64 @GetFrameType(i64* %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = call i64 @GetFrameSubType(i64* %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = call i32 @get_tofr_ds(i64* %46)
  %48 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %49 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = call i32 @GetFragNum(i64* %50)
  %52 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %53 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = load i64*, i64** %10, align 8
  %55 = call i32 @GetSequence(i64* %54)
  %56 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %57 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = call i32 @GetPwrMgt(i64* %58)
  %60 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %61 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load i64*, i64** %10, align 8
  %63 = call i32 @GetMFrag(i64* %62)
  %64 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %65 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = call i32 @GetMData(i64* %66)
  %68 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %69 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load i64*, i64** %10, align 8
  %71 = call i32 @GetPrivacy(i64* %70)
  %72 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %73 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = call i32 @GetOrder(i64* %74)
  %76 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %77 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.adapter*, %struct.adapter** %3, align 8
  %79 = load i32, i32* @HAL_DEF_DBG_DUMP_RXPKT, align 4
  %80 = call i32 @rtw_hal_get_def_var(%struct.adapter* %78, i32 %79, i64* %8)
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %41
  %84 = load i64*, i64** %10, align 8
  %85 = call i32 @dump_rx_packet(i64* %84)
  br label %106

86:                                               ; preds = %41
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %87, 2
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i64, i64* %5, align 8
  %91 = icmp eq i64 %90, 128
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64*, i64** %10, align 8
  %94 = call i32 @dump_rx_packet(i64* %93)
  br label %105

95:                                               ; preds = %89, %86
  %96 = load i64, i64* %8, align 8
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i64, i64* %5, align 8
  %100 = icmp eq i64 %99, 129
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i64*, i64** %10, align 8
  %103 = call i32 @dump_rx_packet(i64* %102)
  br label %104

104:                                              ; preds = %101, %98, %95
  br label %105

105:                                              ; preds = %104, %92
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i64, i64* %5, align 8
  switch i64 %107, label %212 [
    i64 128, label %108
    i64 130, label %144
    i64 129, label %167
  ]

108:                                              ; preds = %106
  %109 = load %struct.adapter*, %struct.adapter** %3, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @DBG_COUNTER(i32 %112)
  %114 = load %struct.adapter*, %struct.adapter** %3, align 8
  %115 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %116 = call i32 @validate_80211w_mgmt(%struct.adapter* %114, %union.recv_frame* %115)
  %117 = load i32, i32* @_FAIL, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %108
  %120 = load i32, i32* @_FAIL, align 4
  store i32 %120, i32* %7, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @padapter, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @DBG_COUNTER(i32 %124)
  br label %224

126:                                              ; preds = %108
  %127 = load %struct.adapter*, %struct.adapter** %3, align 8
  %128 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %129 = call i32 @validate_recv_mgnt_frame(%struct.adapter* %127, %union.recv_frame* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @_FAIL, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %126
  %134 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %135 = load i32, i32* @_drv_err_, align 4
  %136 = call i32 @RT_TRACE(i32 %134, i32 %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %137 = load %struct.adapter*, %struct.adapter** %3, align 8
  %138 = getelementptr inbounds %struct.adapter, %struct.adapter* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @DBG_COUNTER(i32 %140)
  br label %142

142:                                              ; preds = %133, %126
  %143 = load i32, i32* @_FAIL, align 4
  store i32 %143, i32* %7, align 4
  br label %224

144:                                              ; preds = %106
  %145 = load %struct.adapter*, %struct.adapter** %3, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @DBG_COUNTER(i32 %148)
  %150 = load %struct.adapter*, %struct.adapter** %3, align 8
  %151 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %152 = call i32 @validate_recv_ctrl_frame(%struct.adapter* %150, %union.recv_frame* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @_FAIL, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %144
  %157 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %158 = load i32, i32* @_drv_err_, align 4
  %159 = call i32 @RT_TRACE(i32 %157, i32 %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %160 = load %struct.adapter*, %struct.adapter** %3, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @DBG_COUNTER(i32 %163)
  br label %165

165:                                              ; preds = %156, %144
  %166 = load i32, i32* @_FAIL, align 4
  store i32 %166, i32* %7, align 4
  br label %224

167:                                              ; preds = %106
  %168 = load %struct.adapter*, %struct.adapter** %3, align 8
  %169 = getelementptr inbounds %struct.adapter, %struct.adapter* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @DBG_COUNTER(i32 %171)
  %173 = load i64, i64* %6, align 8
  %174 = call i64 @BIT(i32 7)
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 1, i32 0
  %179 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %180 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.adapter*, %struct.adapter** %3, align 8
  %182 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %183 = call i32 @validate_recv_data_frame(%struct.adapter* %181, %union.recv_frame* %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @_FAIL, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %167
  %188 = load %struct.adapter*, %struct.adapter** %3, align 8
  %189 = getelementptr inbounds %struct.adapter, %struct.adapter* %188, i32 0, i32 1
  store %struct.recv_priv* %189, %struct.recv_priv** %12, align 8
  %190 = load %struct.recv_priv*, %struct.recv_priv** %12, align 8
  %191 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.adapter*, %struct.adapter** %3, align 8
  %195 = getelementptr inbounds %struct.adapter, %struct.adapter* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @DBG_COUNTER(i32 %197)
  br label %211

199:                                              ; preds = %167
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @_SUCCESS, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %210

204:                                              ; preds = %199
  %205 = load %struct.adapter*, %struct.adapter** %3, align 8
  %206 = getelementptr inbounds %struct.adapter, %struct.adapter* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @DBG_COUNTER(i32 %208)
  br label %210

210:                                              ; preds = %204, %203
  br label %211

211:                                              ; preds = %210, %187
  br label %224

212:                                              ; preds = %106
  %213 = load %struct.adapter*, %struct.adapter** %3, align 8
  %214 = getelementptr inbounds %struct.adapter, %struct.adapter* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @DBG_COUNTER(i32 %216)
  %218 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %219 = load i32, i32* @_drv_err_, align 4
  %220 = load i64, i64* %5, align 8
  %221 = inttoptr i64 %220 to i8*
  %222 = call i32 @RT_TRACE(i32 %218, i32 %219, i8* %221)
  %223 = load i32, i32* @_FAIL, align 4
  store i32 %223, i32* %7, align 4
  br label %224

224:                                              ; preds = %212, %211, %165, %142, %119
  br label %225

225:                                              ; preds = %224, %31
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @DBG_COUNTER(i32) #1

declare dso_local i64 @GetFrameType(i64*) #1

declare dso_local i64 @GetFrameSubType(i64*) #1

declare dso_local i32 @get_tofr_ds(i64*) #1

declare dso_local i32 @GetFragNum(i64*) #1

declare dso_local i32 @GetSequence(i64*) #1

declare dso_local i32 @GetPwrMgt(i64*) #1

declare dso_local i32 @GetMFrag(i64*) #1

declare dso_local i32 @GetMData(i64*) #1

declare dso_local i32 @GetPrivacy(i64*) #1

declare dso_local i32 @GetOrder(i64*) #1

declare dso_local i32 @rtw_hal_get_def_var(%struct.adapter*, i32, i64*) #1

declare dso_local i32 @dump_rx_packet(i64*) #1

declare dso_local i32 @validate_80211w_mgmt(%struct.adapter*, %union.recv_frame*) #1

declare dso_local i32 @validate_recv_mgnt_frame(%struct.adapter*, %union.recv_frame*) #1

declare dso_local i32 @validate_recv_ctrl_frame(%struct.adapter*, %union.recv_frame*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @validate_recv_data_frame(%struct.adapter*, %union.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
