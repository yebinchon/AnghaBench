; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_host_int_parse_assoc_resp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_host_int_parse_assoc_resp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32, %struct.host_if_drv* }
%struct.host_if_drv = type { i32, i32, %struct.wilc_conn_info, i32, i32 }
%struct.wilc_conn_info = type { i64, i64, i32*, i64, i32*, i32, i32, i32 (i32, i64, i32)* }

@WILC_MAC_STATUS_CONNECTED = common dso_local global i64 0, align 8
@WILC_MAX_ASSOC_RESP_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"wilc_parse_assoc_resp_info() returned error %d\0A\00", align 1
@CONN_DISCONN_EVENT_CONN_RESP = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@HOST_IF_CONNECTED = common dso_local global i32 0, align 4
@HOST_IF_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wilc_vif*, i64)* @host_int_parse_assoc_resp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_int_parse_assoc_resp_info(%struct.wilc_vif* %0, i64 %1) #0 {
  %3 = alloca %struct.wilc_vif*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.host_if_drv*, align 8
  %6 = alloca %struct.wilc_conn_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %10 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %9, i32 0, i32 1
  %11 = load %struct.host_if_drv*, %struct.host_if_drv** %10, align 8
  store %struct.host_if_drv* %11, %struct.host_if_drv** %5, align 8
  %12 = load %struct.host_if_drv*, %struct.host_if_drv** %5, align 8
  %13 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %12, i32 0, i32 2
  store %struct.wilc_conn_info* %13, %struct.wilc_conn_info** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @WILC_MAC_STATUS_CONNECTED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load %struct.host_if_drv*, %struct.host_if_drv** %5, align 8
  %19 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WILC_MAX_ASSOC_RESP_FRAME_SIZE, align 4
  %22 = call i32 @memset(i32 %20, i32 0, i32 %21)
  %23 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %24 = load %struct.host_if_drv*, %struct.host_if_drv** %5, align 8
  %25 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WILC_MAX_ASSOC_RESP_FRAME_SIZE, align 4
  %28 = call i32 @host_int_get_assoc_res_info(%struct.wilc_vif* %23, i32 %26, i32 %27, i64* %7)
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  %32 = load %struct.host_if_drv*, %struct.host_if_drv** %5, align 8
  %33 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %37 = call i64 @wilc_parse_assoc_resp_info(i32 %34, i64 %35, %struct.wilc_conn_info* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %42 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @netdev_err(i32 %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %40, %31
  br label %47

47:                                               ; preds = %46, %17
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.host_if_drv*, %struct.host_if_drv** %5, align 8
  %50 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %49, i32 0, i32 3
  %51 = call i32 @del_timer(i32* %50)
  %52 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %53 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %52, i32 0, i32 7
  %54 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %53, align 8
  %55 = load i32, i32* @CONN_DISCONN_EVENT_CONN_RESP, align 4
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.host_if_drv*, %struct.host_if_drv** %5, align 8
  %58 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %54(i32 %55, i64 %56, i32 %60)
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @WILC_MAC_STATUS_CONNECTED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %48
  %66 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %67 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.host_if_drv*, %struct.host_if_drv** %5, align 8
  %73 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %76 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ether_addr_copy(i32 %74, i32 %77)
  %79 = load i32, i32* @HOST_IF_CONNECTED, align 4
  %80 = load %struct.host_if_drv*, %struct.host_if_drv** %5, align 8
  %81 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %86

82:                                               ; preds = %65, %48
  %83 = load i32, i32* @HOST_IF_IDLE, align 4
  %84 = load %struct.host_if_drv*, %struct.host_if_drv** %5, align 8
  %85 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %71
  %87 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %88 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %92 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %91, i32 0, i32 4
  store i32* null, i32** %92, align 8
  %93 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %94 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %96 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %100 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  %101 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %6, align 8
  %102 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @host_int_get_assoc_res_info(%struct.wilc_vif*, i32, i32, i64*) #1

declare dso_local i64 @wilc_parse_assoc_resp_info(i32, i64, %struct.wilc_conn_info*) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
