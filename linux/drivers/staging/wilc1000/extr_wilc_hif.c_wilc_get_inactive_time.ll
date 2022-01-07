; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_get_inactive_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_get_inactive_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i32*, i32, i32 }

@WID_SET_STA_MAC_INACTIVE_TIME = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to set inactive mac\0A\00", align 1
@WID_GET_INACTIVE_TIME = common dso_local global i32 0, align 4
@WID_INT = common dso_local global i32 0, align 4
@WILC_GET_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get inactive time\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wilc_get_inactive_time(%struct.wilc_vif* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wid, align 8
  %9 = alloca i64, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @WID_SET_STA_MAC_INACTIVE_TIME, align 4
  %11 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @WID_STR, align 4
  %13 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kzalloc(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* @ENOMEM, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %66

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ether_addr_copy(i32* %29, i32* %30)
  %32 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %33 = load i32, i32* @WILC_SET_CFG, align 4
  %34 = call i64 @wilc_send_config_pkt(%struct.wilc_vif* %32, i32 %33, %struct.wid* %8, i32 1)
  store i64 %34, i64* %9, align 8
  %35 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %42 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netdev_err(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %4, align 8
  br label %66

46:                                               ; preds = %27
  %47 = load i32, i32* @WID_GET_INACTIVE_TIME, align 4
  %48 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @WID_INT, align 4
  %50 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 0
  store i32 4, i32* %53, align 8
  %54 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %55 = load i32, i32* @WILC_GET_CFG, align 4
  %56 = call i64 @wilc_send_config_pkt(%struct.wilc_vif* %54, i32 %55, %struct.wid* %8, i32 1)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %61 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netdev_err(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %46
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %40, %24
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i64 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
