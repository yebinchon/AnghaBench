; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_recvframe_chk_defrag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_recvframe_chk_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.sta_priv }
%struct.TYPE_5__ = type { %struct.__queue }
%struct.__queue = type { i32 }
%struct.sta_priv = type { i32 }
%struct.recv_frame = type { %struct.TYPE_8__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i64, i64, i64* }
%struct.TYPE_6__ = type { i32 }
%struct.sta_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.__queue }
%struct.list_head = type { i32 }

@WIFI_DATA_TYPE = common dso_local global i64 0, align 8
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Enqueuq: ismfrag=%d, fragnum=%d\0A\00", align 1
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Free because pdefrag_q==NULL: ismfrag=%d, fragnum=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"defrag: ismfrag=%d, fragnum=%d\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"recvframe_chkmic(padapter,  prtnframe)==_FAIL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.recv_frame* @recvframe_chk_defrag(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.recv_frame*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.sta_priv*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.recv_frame*, align 8
  %13 = alloca %struct.__queue*, align 8
  %14 = alloca %struct.__queue*, align 8
  %15 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  store %struct.recv_frame* null, %struct.recv_frame** %12, align 8
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  store %struct.sta_priv* %17, %struct.sta_priv** %10, align 8
  %18 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  store %struct.recv_frame* %18, %struct.recv_frame** %8, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.__queue* %21, %struct.__queue** %13, align 8
  %22 = load %struct.recv_frame*, %struct.recv_frame** %8, align 8
  %23 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.recv_frame*, %struct.recv_frame** %8, align 8
  %27 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load %struct.recv_frame*, %struct.recv_frame** %8, align 8
  %31 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** %7, align 8
  %34 = load %struct.sta_priv*, %struct.sta_priv** %10, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %34, i64* %35)
  store %struct.sta_info* %36, %struct.sta_info** %9, align 8
  %37 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %38 = icmp ne %struct.sta_info* %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %2
  %40 = load %struct.recv_frame*, %struct.recv_frame** %8, align 8
  %41 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @GetFrameType(i32 %44)
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* @WIFI_DATA_TYPE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = call %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter* %50)
  store %struct.sta_info* %51, %struct.sta_info** %9, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store %struct.__queue* %54, %struct.__queue** %14, align 8
  br label %56

55:                                               ; preds = %39
  store %struct.__queue* null, %struct.__queue** %14, align 8
  br label %56

56:                                               ; preds = %55, %49
  br label %61

57:                                               ; preds = %2
  %58 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %59 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store %struct.__queue* %60, %struct.__queue** %14, align 8
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i64, i64* %6, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  store %struct.recv_frame* %68, %struct.recv_frame** %12, align 8
  br label %69

69:                                               ; preds = %67, %64, %61
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %72, label %112

72:                                               ; preds = %69
  %73 = load %struct.__queue*, %struct.__queue** %14, align 8
  %74 = icmp ne %struct.__queue* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %72
  %76 = load i64, i64* %6, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.__queue*, %struct.__queue** %14, align 8
  %80 = getelementptr inbounds %struct.__queue, %struct.__queue* %79, i32 0, i32 0
  %81 = call i32 @list_empty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load %struct.__queue*, %struct.__queue** %14, align 8
  %85 = load %struct.__queue*, %struct.__queue** %13, align 8
  %86 = call i32 @rtw_free_recvframe_queue(%struct.__queue* %84, %struct.__queue* %85)
  br label %87

87:                                               ; preds = %83, %78
  br label %88

88:                                               ; preds = %87, %75
  %89 = load %struct.__queue*, %struct.__queue** %14, align 8
  %90 = call %struct.list_head* @get_list_head(%struct.__queue* %89)
  store %struct.list_head* %90, %struct.list_head** %11, align 8
  %91 = load %struct.recv_frame*, %struct.recv_frame** %8, align 8
  %92 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %91, i32 0, i32 1
  %93 = load %struct.list_head*, %struct.list_head** %11, align 8
  %94 = call i32 @list_add_tail(i32* %92, %struct.list_head* %93)
  %95 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %96 = load i32, i32* @_drv_info_, align 4
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @RT_TRACE(i32 %95, i32 %96, i8* %99)
  store %struct.recv_frame* null, %struct.recv_frame** %12, align 8
  br label %111

101:                                              ; preds = %72
  %102 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %103 = load %struct.__queue*, %struct.__queue** %13, align 8
  %104 = call i32 @rtw_free_recvframe(%struct.recv_frame* %102, %struct.__queue* %103)
  store %struct.recv_frame* null, %struct.recv_frame** %12, align 8
  %105 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %106 = load i32, i32* @_drv_err_, align 4
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @RT_TRACE(i32 %105, i32 %106, i8* %109)
  br label %111

111:                                              ; preds = %101, %88
  br label %112

112:                                              ; preds = %111, %69
  %113 = load i64, i64* %5, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %149

115:                                              ; preds = %112
  %116 = load i64, i64* %6, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %115
  %119 = load %struct.__queue*, %struct.__queue** %14, align 8
  %120 = icmp ne %struct.__queue* %119, null
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load %struct.__queue*, %struct.__queue** %14, align 8
  %123 = call %struct.list_head* @get_list_head(%struct.__queue* %122)
  store %struct.list_head* %123, %struct.list_head** %11, align 8
  %124 = load %struct.recv_frame*, %struct.recv_frame** %8, align 8
  %125 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %124, i32 0, i32 1
  %126 = load %struct.list_head*, %struct.list_head** %11, align 8
  %127 = call i32 @list_add_tail(i32* %125, %struct.list_head* %126)
  %128 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %129 = load i32, i32* @_drv_info_, align 4
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @RT_TRACE(i32 %128, i32 %129, i8* %132)
  %134 = load %struct.adapter*, %struct.adapter** %3, align 8
  %135 = load %struct.__queue*, %struct.__queue** %14, align 8
  %136 = call %struct.recv_frame* @recvframe_defrag(%struct.adapter* %134, %struct.__queue* %135)
  store %struct.recv_frame* %136, %struct.recv_frame** %4, align 8
  %137 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  store %struct.recv_frame* %137, %struct.recv_frame** %12, align 8
  br label %148

138:                                              ; preds = %118
  %139 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %140 = load %struct.__queue*, %struct.__queue** %13, align 8
  %141 = call i32 @rtw_free_recvframe(%struct.recv_frame* %139, %struct.__queue* %140)
  store %struct.recv_frame* null, %struct.recv_frame** %12, align 8
  %142 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %143 = load i32, i32* @_drv_err_, align 4
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %6, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = call i32 @RT_TRACE(i32 %142, i32 %143, i8* %146)
  br label %148

148:                                              ; preds = %138, %121
  br label %149

149:                                              ; preds = %148, %115, %112
  %150 = load %struct.recv_frame*, %struct.recv_frame** %12, align 8
  %151 = icmp ne %struct.recv_frame* %150, null
  br i1 %151, label %152, label %172

152:                                              ; preds = %149
  %153 = load %struct.recv_frame*, %struct.recv_frame** %12, align 8
  %154 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %152
  %159 = load %struct.adapter*, %struct.adapter** %3, align 8
  %160 = load %struct.recv_frame*, %struct.recv_frame** %12, align 8
  %161 = call i64 @recvframe_chkmic(%struct.adapter* %159, %struct.recv_frame* %160)
  %162 = load i64, i64* @_FAIL, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %158
  %165 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %166 = load i32, i32* @_drv_err_, align 4
  %167 = call i32 @RT_TRACE(i32 %165, i32 %166, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %168 = load %struct.recv_frame*, %struct.recv_frame** %12, align 8
  %169 = load %struct.__queue*, %struct.__queue** %13, align 8
  %170 = call i32 @rtw_free_recvframe(%struct.recv_frame* %168, %struct.__queue* %169)
  store %struct.recv_frame* null, %struct.recv_frame** %12, align 8
  br label %171

171:                                              ; preds = %164, %158
  br label %172

172:                                              ; preds = %171, %152, %149
  %173 = load %struct.recv_frame*, %struct.recv_frame** %12, align 8
  ret %struct.recv_frame* %173
}

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i64*) #1

declare dso_local i64 @GetFrameType(i32) #1

declare dso_local %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rtw_free_recvframe_queue(%struct.__queue*, %struct.__queue*) #1

declare dso_local %struct.list_head* @get_list_head(%struct.__queue*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_free_recvframe(%struct.recv_frame*, %struct.__queue*) #1

declare dso_local %struct.recv_frame* @recvframe_defrag(%struct.adapter*, %struct.__queue*) #1

declare dso_local i64 @recvframe_chkmic(%struct.adapter*, %struct.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
