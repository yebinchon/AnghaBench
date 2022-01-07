; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_config_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_config_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_config_ps = type { i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"acx config ps\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_CONFIG_PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"acx config ps failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_acx_config_ps(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.wl1271_acx_config_ps*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.wl1271_acx_config_ps* @kzalloc(i32 12, i32 %9)
  store %struct.wl1271_acx_config_ps* %10, %struct.wl1271_acx_config_ps** %5, align 8
  %11 = load %struct.wl1271_acx_config_ps*, %struct.wl1271_acx_config_ps** %5, align 8
  %12 = icmp ne %struct.wl1271_acx_config_ps* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wl1271_acx_config_ps*, %struct.wl1271_acx_config_ps** %5, align 8
  %23 = getelementptr inbounds %struct.wl1271_acx_config_ps, %struct.wl1271_acx_config_ps* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %25 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wl1271_acx_config_ps*, %struct.wl1271_acx_config_ps** %5, align 8
  %30 = getelementptr inbounds %struct.wl1271_acx_config_ps, %struct.wl1271_acx_config_ps* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %struct.wl1271_acx_config_ps*, %struct.wl1271_acx_config_ps** %5, align 8
  %36 = getelementptr inbounds %struct.wl1271_acx_config_ps, %struct.wl1271_acx_config_ps* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %38 = load i32, i32* @ACX_CONFIG_PS, align 4
  %39 = load %struct.wl1271_acx_config_ps*, %struct.wl1271_acx_config_ps** %5, align 8
  %40 = call i32 @wl1271_cmd_configure(%struct.wl1271* %37, i32 %38, %struct.wl1271_acx_config_ps* %39, i32 12)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %16
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @wl1271_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %47

46:                                               ; preds = %16
  br label %47

47:                                               ; preds = %46, %43, %13
  %48 = load %struct.wl1271_acx_config_ps*, %struct.wl1271_acx_config_ps** %5, align 8
  %49 = call i32 @kfree(%struct.wl1271_acx_config_ps* %48)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_config_ps* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_config_ps*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_config_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
