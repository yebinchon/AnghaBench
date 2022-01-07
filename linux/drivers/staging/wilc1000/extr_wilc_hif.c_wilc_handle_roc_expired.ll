; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_handle_roc_expired.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_handle_roc_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { %struct.TYPE_5__*, %struct.host_if_drv* }
%struct.TYPE_5__ = type { i32 }
%struct.host_if_drv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }
%struct.wid = type { i32, i32*, i32, i32 }
%struct.wilc_priv = type { i64 }

@WID_REMAIN_ON_CHAN = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WILC_FALSE_FRMWR_CHANNEL = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to set remain channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Not in listen state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc_vif*, i32)* @wilc_handle_roc_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_handle_roc_expired(%struct.wilc_vif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wid, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.host_if_drv*, align 8
  %10 = alloca %struct.wilc_priv*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %12 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %11, i32 0, i32 1
  %13 = load %struct.host_if_drv*, %struct.host_if_drv** %12, align 8
  store %struct.host_if_drv* %13, %struct.host_if_drv** %9, align 8
  %14 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %15 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.wilc_priv* @wdev_priv(i32 %18)
  store %struct.wilc_priv* %19, %struct.wilc_priv** %10, align 8
  %20 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %21 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %25 = load i32, i32* @WID_REMAIN_ON_CHAN, align 4
  %26 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @WID_STR, align 4
  %28 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 0
  store i32 2, i32* %29, align 8
  %30 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kmalloc(i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  %35 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %89

41:                                               ; preds = %24
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @WILC_FALSE_FRMWR_CHANNEL, align 4
  %47 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %51 = load i32, i32* @WILC_SET_CFG, align 4
  %52 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %50, i32 %51, %struct.wid* %7, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %41
  %59 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %60 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i32 @netdev_err(%struct.TYPE_5__* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %89

65:                                               ; preds = %41
  %66 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %67 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = icmp ne i32 (i32, i32)* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %73 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32 (i32, i32)*, i32 (i32, i32)** %74, align 8
  %76 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %77 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 %75(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %71, %65
  br label %88

83:                                               ; preds = %2
  %84 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %85 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = call i32 @netdev_dbg(%struct.TYPE_5__* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %82
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %58, %38
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.wilc_priv* @wdev_priv(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
