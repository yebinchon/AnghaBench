; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_r8712_portctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_r8712_portctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.sta_priv }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sta_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.recv_frame_hdr }
%struct.recv_frame_hdr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.sta_info = type { i64 }

@LLC_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.recv_frame* @r8712_portctrl(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.recv_frame_hdr*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.sta_priv*, align 8
  %11 = alloca %union.recv_frame*, align 8
  %12 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 2
  store %struct.sta_priv* %14, %struct.sta_priv** %10, align 8
  %15 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %16 = call i32* @get_recvframe_data(%union.recv_frame* %15)
  store i32* %16, i32** %6, align 8
  %17 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %18 = bitcast %union.recv_frame* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.recv_frame_hdr* %19, %struct.recv_frame_hdr** %8, align 8
  %20 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %21 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  %24 = load %struct.sta_priv*, %struct.sta_priv** %10, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %24, i32* %25)
  store %struct.sta_info* %26, %struct.sta_info** %9, align 8
  %27 = load %struct._adapter*, %struct._adapter** %3, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %73

33:                                               ; preds = %2
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %36 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* @LLC_HEADER_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @get_unaligned_be16(i32* %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %47 = icmp ne %struct.sta_info* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %33
  %49 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 34958
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %57, %union.recv_frame** %11, align 8
  br label %64

58:                                               ; preds = %53
  %59 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %60 = load %struct._adapter*, %struct._adapter** %3, align 8
  %61 = getelementptr inbounds %struct._adapter, %struct._adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = call i32 @r8712_free_recvframe(%union.recv_frame* %59, i32* %62)
  store %union.recv_frame* null, %union.recv_frame** %11, align 8
  br label %64

64:                                               ; preds = %58, %56
  br label %72

65:                                               ; preds = %48, %33
  %66 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %66, %union.recv_frame** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 34958
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %70, %union.recv_frame** %11, align 8
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %64
  br label %75

73:                                               ; preds = %2
  %74 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %74, %union.recv_frame** %11, align 8
  br label %75

75:                                               ; preds = %73, %72
  %76 = load %union.recv_frame*, %union.recv_frame** %11, align 8
  ret %union.recv_frame* %76
}

declare dso_local i32* @get_recvframe_data(%union.recv_frame*) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32*) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @r8712_free_recvframe(%union.recv_frame*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
