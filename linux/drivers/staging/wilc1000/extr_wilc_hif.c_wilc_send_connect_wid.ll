; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_send_connect_wid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_send_connect_wid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32, %struct.host_if_drv* }
%struct.host_if_drv = type { i32, %struct.wilc_conn_info }
%struct.wilc_conn_info = type { i32, i32*, i32, i32, %struct.wilc_join_bss_param* }
%struct.wilc_join_bss_param = type { i32 }
%struct.wid = type { i32, i32*, i8*, i32 }

@WID_INFO_ELEMENT_ASSOCIATE = common dso_local global i32 0, align 4
@WID_BIN_DATA = common dso_local global i8* null, align 8
@WID_11I_MODE = common dso_local global i32 0, align 4
@WID_CHAR = common dso_local global i8* null, align 8
@WID_AUTH_TYPE = common dso_local global i32 0, align 4
@WID_JOIN_REQ_EXTENDED = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i8* null, align 8
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to send config packet\0A\00", align 1
@HOST_IF_WAITING_CONN_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc_vif*)* @wilc_send_connect_wid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_send_connect_wid(%struct.wilc_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wilc_vif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x %struct.wid], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.host_if_drv*, align 8
  %8 = alloca %struct.wilc_conn_info*, align 8
  %9 = alloca %struct.wilc_join_bss_param*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %10 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %11 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %10, i32 0, i32 1
  %12 = load %struct.host_if_drv*, %struct.host_if_drv** %11, align 8
  store %struct.host_if_drv* %12, %struct.host_if_drv** %7, align 8
  %13 = load %struct.host_if_drv*, %struct.host_if_drv** %7, align 8
  %14 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %13, i32 0, i32 1
  store %struct.wilc_conn_info* %14, %struct.wilc_conn_info** %8, align 8
  %15 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %8, align 8
  %16 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %15, i32 0, i32 4
  %17 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %16, align 8
  store %struct.wilc_join_bss_param* %17, %struct.wilc_join_bss_param** %9, align 8
  %18 = load i32, i32* @WID_INFO_ELEMENT_ASSOCIATE, align 4
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.wid, %struct.wid* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 8
  %22 = load i8*, i8** @WID_BIN_DATA, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.wid, %struct.wid* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 16
  %26 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %8, align 8
  %27 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.wid, %struct.wid* %30, i32 0, i32 1
  store i32* %28, i32** %31, align 8
  %32 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %8, align 8
  %33 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.wid, %struct.wid* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 16
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  %40 = load i32, i32* @WID_11I_MODE, align 4
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.wid, %struct.wid* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 8
  %44 = load i8*, i8** @WID_CHAR, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.wid, %struct.wid* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 16
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.wid, %struct.wid* %49, i32 0, i32 0
  store i32 1, i32* %50, align 16
  %51 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %8, align 8
  %52 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %51, i32 0, i32 3
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.wid, %struct.wid* %54, i32 0, i32 1
  store i32* %52, i32** %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  %58 = load i32, i32* @WID_AUTH_TYPE, align 4
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.wid, %struct.wid* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 8
  %62 = load i8*, i8** @WID_CHAR, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.wid, %struct.wid* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 16
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.wid, %struct.wid* %67, i32 0, i32 0
  store i32 1, i32* %68, align 16
  %69 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %8, align 8
  %70 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %69, i32 0, i32 2
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.wid, %struct.wid* %72, i32 0, i32 1
  store i32* %70, i32** %73, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  %76 = load i32, i32* @WID_JOIN_REQ_EXTENDED, align 4
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.wid, %struct.wid* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load i8*, i8** @WID_STR, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.wid, %struct.wid* %82, i32 0, i32 2
  store i8* %80, i8** %83, align 16
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.wid, %struct.wid* %85, i32 0, i32 0
  store i32 4, i32* %86, align 16
  %87 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %9, align 8
  %88 = bitcast %struct.wilc_join_bss_param* %87 to i32*
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.wid, %struct.wid* %90, i32 0, i32 1
  store i32* %88, i32** %91, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  %94 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %95 = load i32, i32* @WILC_SET_CFG, align 4
  %96 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 0
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %94, i32 %95, %struct.wid* %96, i64 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %1
  %102 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %103 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @netdev_err(i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %111

106:                                              ; preds = %1
  %107 = load i32, i32* @HOST_IF_WAITING_CONN_RESP, align 4
  %108 = load %struct.host_if_drv*, %struct.host_if_drv** %7, align 8
  %109 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %119

111:                                              ; preds = %101
  %112 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %8, align 8
  %113 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @kfree(i32* %114)
  %116 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %8, align 8
  %117 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %111, %110
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
