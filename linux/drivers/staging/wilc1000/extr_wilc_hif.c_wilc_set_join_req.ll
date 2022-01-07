; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_set_join_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_set_join_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { %struct.host_if_drv* }
%struct.host_if_drv = type { i32, %struct.wilc_vif*, %struct.wilc_conn_info }
%struct.wilc_conn_info = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WILC_HIF_CONNECT_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_set_join_req(%struct.wilc_vif* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wilc_vif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.host_if_drv*, align 8
  %12 = alloca %struct.wilc_conn_info*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %14 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %13, i32 0, i32 0
  %15 = load %struct.host_if_drv*, %struct.host_if_drv** %14, align 8
  store %struct.host_if_drv* %15, %struct.host_if_drv** %11, align 8
  %16 = load %struct.host_if_drv*, %struct.host_if_drv** %11, align 8
  %17 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %16, i32 0, i32 2
  store %struct.wilc_conn_info* %17, %struct.wilc_conn_info** %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %22 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @ether_addr_copy(i32 %23, i32* %24)
  br label %26

26:                                               ; preds = %20, %4
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %32 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @kmemdup(i32* %33, i64 %34, i32 %35)
  %37 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %38 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %40 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %70

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %49 = call i32 @wilc_send_connect_wid(%struct.wilc_vif* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %64

53:                                               ; preds = %47
  %54 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %55 = load %struct.host_if_drv*, %struct.host_if_drv** %11, align 8
  %56 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %55, i32 0, i32 1
  store %struct.wilc_vif* %54, %struct.wilc_vif** %56, align 8
  %57 = load %struct.host_if_drv*, %struct.host_if_drv** %11, align 8
  %58 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %57, i32 0, i32 0
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i32, i32* @WILC_HIF_CONNECT_TIMEOUT_MS, align 4
  %61 = call i64 @msecs_to_jiffies(i32 %60)
  %62 = add nsw i64 %59, %61
  %63 = call i32 @mod_timer(i32* %58, i64 %62)
  store i32 0, i32* %5, align 4
  br label %70

64:                                               ; preds = %52
  %65 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %66 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @kfree(i32 %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %53, %43
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @kmemdup(i32*, i64, i32) #1

declare dso_local i32 @wilc_send_connect_wid(%struct.wilc_vif*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
