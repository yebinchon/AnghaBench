; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_recv_func_prehandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_recv_func_prehandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.__queue }
%struct.__queue = type { i32 }
%struct.recv_frame = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"recv_func: validate_recv_frame fail! drop pkt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.recv_frame*)* @recv_func_prehandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_func_prehandle(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.__queue*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  %7 = load i32, i32* @_SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.__queue* %10, %struct.__queue** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %13 = call i32 @validate_recv_frame(%struct.adapter* %11, %struct.recv_frame* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %19 = load i32, i32* @_drv_info_, align 4
  %20 = call i32 @RT_TRACE(i32 %18, i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %22 = load %struct.__queue*, %struct.__queue** %6, align 8
  %23 = call i32 @rtw_free_recvframe(%struct.recv_frame* %21, %struct.__queue* %22)
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @validate_recv_frame(%struct.adapter*, %struct.recv_frame*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_free_recvframe(%struct.recv_frame*, %struct.__queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
