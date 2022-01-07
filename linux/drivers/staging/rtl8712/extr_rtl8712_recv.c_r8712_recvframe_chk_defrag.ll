; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_recvframe_chk_defrag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_recvframe_chk_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_5__, %struct.sta_priv }
%struct.TYPE_5__ = type { %struct.__queue }
%struct.__queue = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.sta_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.recv_frame_hdr }
%struct.recv_frame_hdr = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64* }
%struct.sta_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.__queue }

@_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.recv_frame* @r8712_recvframe_chk_defrag(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.recv_frame_hdr*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.sta_priv*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %union.recv_frame*, align 8
  %13 = alloca %struct.__queue*, align 8
  %14 = alloca %struct.__queue*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  store %union.recv_frame* null, %union.recv_frame** %12, align 8
  %15 = load %struct._adapter*, %struct._adapter** %3, align 8
  %16 = getelementptr inbounds %struct._adapter, %struct._adapter* %15, i32 0, i32 1
  store %struct.sta_priv* %16, %struct.sta_priv** %10, align 8
  %17 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %18 = bitcast %union.recv_frame* %17 to %struct.TYPE_8__*
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store %struct.recv_frame_hdr* %19, %struct.recv_frame_hdr** %8, align 8
  %20 = load %struct._adapter*, %struct._adapter** %3, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.__queue* %22, %struct.__queue** %13, align 8
  %23 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %32 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %7, align 8
  %35 = load %struct.sta_priv*, %struct.sta_priv** %10, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %35, i64* %36)
  store %struct.sta_info* %37, %struct.sta_info** %9, align 8
  %38 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %39 = icmp ne %struct.sta_info* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  store %struct.__queue* null, %struct.__queue** %14, align 8
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store %struct.__queue* %44, %struct.__queue** %14, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %52, %union.recv_frame** %12, align 8
  br label %53

53:                                               ; preds = %51, %48, %45
  %54 = load i64, i64* %5, align 8
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %56, label %84

56:                                               ; preds = %53
  %57 = load %struct.__queue*, %struct.__queue** %14, align 8
  %58 = icmp ne %struct.__queue* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.__queue*, %struct.__queue** %14, align 8
  %64 = getelementptr inbounds %struct.__queue, %struct.__queue* %63, i32 0, i32 0
  %65 = call i32 @list_empty(%struct.list_head* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.__queue*, %struct.__queue** %14, align 8
  %69 = load %struct.__queue*, %struct.__queue** %13, align 8
  %70 = call i32 @r8712_free_recvframe_queue(%struct.__queue* %68, %struct.__queue* %69)
  br label %71

71:                                               ; preds = %67, %62
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.__queue*, %struct.__queue** %14, align 8
  %74 = getelementptr inbounds %struct.__queue, %struct.__queue* %73, i32 0, i32 0
  store %struct.list_head* %74, %struct.list_head** %11, align 8
  %75 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %76 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %75, i32 0, i32 1
  %77 = load %struct.list_head*, %struct.list_head** %11, align 8
  %78 = call i32 @list_add_tail(i32* %76, %struct.list_head* %77)
  store %union.recv_frame* null, %union.recv_frame** %12, align 8
  br label %83

79:                                               ; preds = %56
  %80 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %81 = load %struct.__queue*, %struct.__queue** %13, align 8
  %82 = call i32 @r8712_free_recvframe(%union.recv_frame* %80, %struct.__queue* %81)
  store %union.recv_frame* null, %union.recv_frame** %12, align 8
  br label %83

83:                                               ; preds = %79, %72
  br label %84

84:                                               ; preds = %83, %53
  %85 = load i64, i64* %5, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load %struct.__queue*, %struct.__queue** %14, align 8
  %92 = icmp ne %struct.__queue* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.__queue*, %struct.__queue** %14, align 8
  %95 = getelementptr inbounds %struct.__queue, %struct.__queue* %94, i32 0, i32 0
  store %struct.list_head* %95, %struct.list_head** %11, align 8
  %96 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %97 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %96, i32 0, i32 1
  %98 = load %struct.list_head*, %struct.list_head** %11, align 8
  %99 = call i32 @list_add_tail(i32* %97, %struct.list_head* %98)
  %100 = load %struct._adapter*, %struct._adapter** %3, align 8
  %101 = load %struct.__queue*, %struct.__queue** %14, align 8
  %102 = call %union.recv_frame* @recvframe_defrag(%struct._adapter* %100, %struct.__queue* %101)
  store %union.recv_frame* %102, %union.recv_frame** %4, align 8
  %103 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %103, %union.recv_frame** %12, align 8
  br label %108

104:                                              ; preds = %90
  %105 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %106 = load %struct.__queue*, %struct.__queue** %13, align 8
  %107 = call i32 @r8712_free_recvframe(%union.recv_frame* %105, %struct.__queue* %106)
  store %union.recv_frame* null, %union.recv_frame** %12, align 8
  br label %108

108:                                              ; preds = %104, %93
  br label %109

109:                                              ; preds = %108, %87, %84
  %110 = load %union.recv_frame*, %union.recv_frame** %12, align 8
  %111 = icmp ne %union.recv_frame* %110, null
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load %union.recv_frame*, %union.recv_frame** %12, align 8
  %114 = bitcast %union.recv_frame* %113 to %struct.TYPE_8__*
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %112
  %121 = load %struct._adapter*, %struct._adapter** %3, align 8
  %122 = load %union.recv_frame*, %union.recv_frame** %12, align 8
  %123 = call i64 @r8712_recvframe_chkmic(%struct._adapter* %121, %union.recv_frame* %122)
  %124 = load i64, i64* @_FAIL, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %union.recv_frame*, %union.recv_frame** %12, align 8
  %128 = load %struct.__queue*, %struct.__queue** %13, align 8
  %129 = call i32 @r8712_free_recvframe(%union.recv_frame* %127, %struct.__queue* %128)
  store %union.recv_frame* null, %union.recv_frame** %12, align 8
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %112, %109
  %132 = load %union.recv_frame*, %union.recv_frame** %12, align 8
  ret %union.recv_frame* %132
}

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i64*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @r8712_free_recvframe_queue(%struct.__queue*, %struct.__queue*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @r8712_free_recvframe(%union.recv_frame*, %struct.__queue*) #1

declare dso_local %union.recv_frame* @recvframe_defrag(%struct._adapter*, %struct.__queue*) #1

declare dso_local i64 @r8712_recvframe_chkmic(%struct._adapter*, %union.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
