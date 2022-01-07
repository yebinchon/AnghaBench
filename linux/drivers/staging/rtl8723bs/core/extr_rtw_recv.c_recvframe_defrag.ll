; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_recvframe_defrag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_recvframe_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.recv_frame_hdr, i32 }
%struct.recv_frame_hdr = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.__queue }
%struct.__queue = type { i32 }
%struct.list_head = type { i32 }

@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Performance defrag!!!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.recv_frame* (%struct.adapter*, %struct.__queue*)* @recvframe_defrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.recv_frame* @recvframe_defrag(%struct.adapter* %0, %struct.__queue* %1) #0 {
  %3 = alloca %union.recv_frame*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.__queue*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.recv_frame_hdr*, align 8
  %12 = alloca %struct.recv_frame_hdr*, align 8
  %13 = alloca %union.recv_frame*, align 8
  %14 = alloca %union.recv_frame*, align 8
  %15 = alloca %struct.__queue*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.__queue* %1, %struct.__queue** %5, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.__queue* %18, %struct.__queue** %15, align 8
  %19 = load %struct.__queue*, %struct.__queue** %5, align 8
  %20 = call %struct.list_head* @get_list_head(%struct.__queue* %19)
  store %struct.list_head* %20, %struct.list_head** %7, align 8
  %21 = load %struct.list_head*, %struct.list_head** %7, align 8
  %22 = call %struct.list_head* @get_next(%struct.list_head* %21)
  store %struct.list_head* %22, %struct.list_head** %6, align 8
  %23 = load %struct.list_head*, %struct.list_head** %6, align 8
  %24 = bitcast %struct.list_head* %23 to %union.recv_frame*
  store %union.recv_frame* %24, %union.recv_frame** %13, align 8
  %25 = load %union.recv_frame*, %union.recv_frame** %13, align 8
  %26 = bitcast %union.recv_frame* %25 to %struct.TYPE_5__*
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.recv_frame_hdr* %27, %struct.recv_frame_hdr** %11, align 8
  %28 = load %union.recv_frame*, %union.recv_frame** %13, align 8
  %29 = bitcast %union.recv_frame* %28 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %11, align 8
  %34 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load %union.recv_frame*, %union.recv_frame** %13, align 8
  %40 = load %struct.__queue*, %struct.__queue** %15, align 8
  %41 = call i32 @rtw_free_recvframe(%union.recv_frame* %39, %struct.__queue* %40)
  %42 = load %struct.__queue*, %struct.__queue** %5, align 8
  %43 = load %struct.__queue*, %struct.__queue** %15, align 8
  %44 = call i32 @rtw_free_recvframe_queue(%struct.__queue* %42, %struct.__queue* %43)
  store %union.recv_frame* null, %union.recv_frame** %3, align 8
  br label %130

45:                                               ; preds = %2
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %10, align 8
  %48 = load %struct.__queue*, %struct.__queue** %5, align 8
  %49 = call %struct.list_head* @get_list_head(%struct.__queue* %48)
  store %struct.list_head* %49, %struct.list_head** %6, align 8
  %50 = load %struct.list_head*, %struct.list_head** %6, align 8
  %51 = call %struct.list_head* @get_next(%struct.list_head* %50)
  store %struct.list_head* %51, %struct.list_head** %6, align 8
  %52 = load %union.recv_frame*, %union.recv_frame** %13, align 8
  %53 = call i64* @get_recvframe_data(%union.recv_frame* %52)
  store i64* %53, i64** %8, align 8
  br label %54

54:                                               ; preds = %77, %45
  %55 = load %struct.list_head*, %struct.list_head** %7, align 8
  %56 = load %struct.list_head*, %struct.list_head** %6, align 8
  %57 = icmp ne %struct.list_head* %55, %56
  br i1 %57, label %58, label %122

58:                                               ; preds = %54
  %59 = load %struct.list_head*, %struct.list_head** %6, align 8
  %60 = bitcast %struct.list_head* %59 to %union.recv_frame*
  store %union.recv_frame* %60, %union.recv_frame** %14, align 8
  %61 = load %union.recv_frame*, %union.recv_frame** %14, align 8
  %62 = bitcast %union.recv_frame* %61 to %struct.TYPE_5__*
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store %struct.recv_frame_hdr* %63, %struct.recv_frame_hdr** %12, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %12, align 8
  %66 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load %union.recv_frame*, %union.recv_frame** %13, align 8
  %72 = load %struct.__queue*, %struct.__queue** %15, align 8
  %73 = call i32 @rtw_free_recvframe(%union.recv_frame* %71, %struct.__queue* %72)
  %74 = load %struct.__queue*, %struct.__queue** %5, align 8
  %75 = load %struct.__queue*, %struct.__queue** %15, align 8
  %76 = call i32 @rtw_free_recvframe_queue(%struct.__queue* %74, %struct.__queue* %75)
  store %union.recv_frame* null, %union.recv_frame** %3, align 8
  br label %130

77:                                               ; preds = %58
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %10, align 8
  %80 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %12, align 8
  %81 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %12, align 8
  %85 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %83, %87
  store i64 %88, i64* %9, align 8
  %89 = load %union.recv_frame*, %union.recv_frame** %14, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @recvframe_pull(%union.recv_frame* %89, i64 %90)
  %92 = load %union.recv_frame*, %union.recv_frame** %13, align 8
  %93 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %11, align 8
  %94 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @recvframe_pull_tail(%union.recv_frame* %92, i32 %96)
  %98 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %11, align 8
  %99 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %12, align 8
  %102 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %12, align 8
  %105 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @memcpy(i32 %100, i32 %103, i32 %106)
  %108 = load %union.recv_frame*, %union.recv_frame** %13, align 8
  %109 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %12, align 8
  %110 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @recvframe_put(%union.recv_frame* %108, i32 %111)
  %113 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %12, align 8
  %114 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %11, align 8
  %118 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 8
  %120 = load %struct.list_head*, %struct.list_head** %6, align 8
  %121 = call %struct.list_head* @get_next(%struct.list_head* %120)
  store %struct.list_head* %121, %struct.list_head** %6, align 8
  br label %54

122:                                              ; preds = %54
  %123 = load %struct.__queue*, %struct.__queue** %5, align 8
  %124 = load %struct.__queue*, %struct.__queue** %15, align 8
  %125 = call i32 @rtw_free_recvframe_queue(%struct.__queue* %123, %struct.__queue* %124)
  %126 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %127 = load i32, i32* @_drv_info_, align 4
  %128 = call i32 @RT_TRACE(i32 %126, i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %129 = load %union.recv_frame*, %union.recv_frame** %13, align 8
  store %union.recv_frame* %129, %union.recv_frame** %3, align 8
  br label %130

130:                                              ; preds = %122, %70, %38
  %131 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  ret %union.recv_frame* %131
}

declare dso_local %struct.list_head* @get_list_head(%struct.__queue*) #1

declare dso_local %struct.list_head* @get_next(%struct.list_head*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rtw_free_recvframe(%union.recv_frame*, %struct.__queue*) #1

declare dso_local i32 @rtw_free_recvframe_queue(%struct.__queue*, %struct.__queue*) #1

declare dso_local i64* @get_recvframe_data(%union.recv_frame*) #1

declare dso_local i32 @recvframe_pull(%union.recv_frame*, i64) #1

declare dso_local i32 @recvframe_pull_tail(%union.recv_frame*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @recvframe_put(%union.recv_frame*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
