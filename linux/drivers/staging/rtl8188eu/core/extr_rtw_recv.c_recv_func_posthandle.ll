; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_recv_func_posthandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_recv_func_posthandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.recv_priv }
%struct.recv_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32 }
%struct.recv_frame = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@LED_CTL_RX = common dso_local global i32 0, align 4
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"decryptor: drop pkt\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"recvframe_chk_defrag: drop pkt\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"portctrl: drop pkt\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"recv_func: process_recv_indicatepkts fail!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.recv_frame*)* @recv_func_posthandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_func_posthandle(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.recv_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.recv_frame*, align 8
  %8 = alloca %struct.recv_priv*, align 8
  %9 = alloca %struct.__queue*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %5, align 8
  %10 = load i32, i32* @_SUCCESS, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  store %struct.recv_frame* %11, %struct.recv_frame** %7, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.recv_priv* %13, %struct.recv_priv** %8, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %15, i32 0, i32 1
  store %struct.__queue* %16, %struct.__queue** %9, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load i32, i32* @LED_CTL_RX, align 4
  %19 = call i32 @led_control_8188eu(%struct.adapter* %17, i32 %18)
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %22 = call %struct.recv_frame* @decryptor(%struct.adapter* %20, %struct.recv_frame* %21)
  store %struct.recv_frame* %22, %struct.recv_frame** %5, align 8
  %23 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %24 = icmp ne %struct.recv_frame* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %27 = load i32, i32* @_drv_err_, align 4
  %28 = call i32 @RT_TRACE(i32 %26, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @_FAIL, align 4
  store i32 %29, i32* %6, align 4
  br label %70

30:                                               ; preds = %2
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %33 = call %struct.recv_frame* @recvframe_chk_defrag(%struct.adapter* %31, %struct.recv_frame* %32)
  store %struct.recv_frame* %33, %struct.recv_frame** %5, align 8
  %34 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %35 = icmp ne %struct.recv_frame* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %38 = load i32, i32* @_drv_err_, align 4
  %39 = call i32 @RT_TRACE(i32 %37, i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %70

40:                                               ; preds = %30
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %43 = call %struct.recv_frame* @portctrl(%struct.adapter* %41, %struct.recv_frame* %42)
  store %struct.recv_frame* %43, %struct.recv_frame** %5, align 8
  %44 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %45 = icmp ne %struct.recv_frame* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %48 = load i32, i32* @_drv_err_, align 4
  %49 = call i32 @RT_TRACE(i32 %47, i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @_FAIL, align 4
  store i32 %50, i32* %6, align 4
  br label %70

51:                                               ; preds = %40
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %54 = call i32 @count_rx_stats(%struct.adapter* %52, %struct.recv_frame* %53, i32* null)
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %57 = call i32 @process_recv_indicatepkts(%struct.adapter* %55, %struct.recv_frame* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @_SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %63 = load i32, i32* @_drv_err_, align 4
  %64 = call i32 @RT_TRACE(i32 %62, i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.recv_frame*, %struct.recv_frame** %7, align 8
  %66 = load %struct.__queue*, %struct.__queue** %9, align 8
  %67 = call i32 @rtw_free_recvframe(%struct.recv_frame* %65, %struct.__queue* %66)
  br label %70

68:                                               ; preds = %51
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %76

70:                                               ; preds = %61, %46, %36, %25
  %71 = load %struct.recv_priv*, %struct.recv_priv** %8, align 8
  %72 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %68
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @led_control_8188eu(%struct.adapter*, i32) #1

declare dso_local %struct.recv_frame* @decryptor(%struct.adapter*, %struct.recv_frame*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local %struct.recv_frame* @recvframe_chk_defrag(%struct.adapter*, %struct.recv_frame*) #1

declare dso_local %struct.recv_frame* @portctrl(%struct.adapter*, %struct.recv_frame*) #1

declare dso_local i32 @count_rx_stats(%struct.adapter*, %struct.recv_frame*, i32*) #1

declare dso_local i32 @process_recv_indicatepkts(%struct.adapter*, %struct.recv_frame*) #1

declare dso_local i32 @rtw_free_recvframe(%struct.recv_frame*, %struct.__queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
