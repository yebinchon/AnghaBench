; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_handle_remain_on_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_handle_remain_on_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i64, %struct.host_if_drv* }
%struct.host_if_drv = type { i64, %struct.wilc_vif*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.wilc_remain_ch = type { i32, i64, i32, i32 }
%struct.wid = type { i32, i32*, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@HOST_IF_WAITING_CONN_RESP = common dso_local global i64 0, align 8
@WID_REMAIN_ON_CHAN = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc_vif*, %struct.wilc_remain_ch*)* @handle_remain_on_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_remain_on_chan(%struct.wilc_vif* %0, %struct.wilc_remain_ch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca %struct.wilc_remain_ch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wid, align 8
  %9 = alloca %struct.host_if_drv*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %4, align 8
  store %struct.wilc_remain_ch* %1, %struct.wilc_remain_ch** %5, align 8
  %10 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %11 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %10, i32 0, i32 1
  %12 = load %struct.host_if_drv*, %struct.host_if_drv** %11, align 8
  store %struct.host_if_drv* %12, %struct.host_if_drv** %9, align 8
  %13 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %14 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %106

21:                                               ; preds = %2
  %22 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %23 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HOST_IF_WAITING_CONN_RESP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %106

30:                                               ; preds = %21
  %31 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %32 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %106

38:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  %39 = load i32, i32* @WID_REMAIN_ON_CHAN, align 4
  %40 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @WID_STR, align 4
  %42 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 0
  store i32 2, i32* %43, align 8
  %44 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32* @kmalloc(i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  store i32* %47, i32** %48, align 8
  %49 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %38
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %106

55:                                               ; preds = %38
  %56 = load i32, i32* %7, align 4
  %57 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.wilc_remain_ch*, %struct.wilc_remain_ch** %5, align 8
  %61 = getelementptr inbounds %struct.wilc_remain_ch, %struct.wilc_remain_ch* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %68 = load i32, i32* @WILC_SET_CFG, align 4
  %69 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %67, i32 %68, %struct.wid* %8, i32 1)
  store i32 %69, i32* %6, align 4
  %70 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %55
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %106

78:                                               ; preds = %55
  %79 = load %struct.wilc_remain_ch*, %struct.wilc_remain_ch** %5, align 8
  %80 = getelementptr inbounds %struct.wilc_remain_ch, %struct.wilc_remain_ch* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %83 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load %struct.wilc_remain_ch*, %struct.wilc_remain_ch** %5, align 8
  %86 = getelementptr inbounds %struct.wilc_remain_ch, %struct.wilc_remain_ch* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %89 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load %struct.wilc_remain_ch*, %struct.wilc_remain_ch** %5, align 8
  %92 = getelementptr inbounds %struct.wilc_remain_ch, %struct.wilc_remain_ch* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %95 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  %97 = load %struct.wilc_remain_ch*, %struct.wilc_remain_ch** %5, align 8
  %98 = getelementptr inbounds %struct.wilc_remain_ch, %struct.wilc_remain_ch* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %101 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %104 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %105 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %104, i32 0, i32 1
  store %struct.wilc_vif* %103, %struct.wilc_vif** %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %78, %75, %52, %35, %27, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
