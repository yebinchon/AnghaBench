; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_sg_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_sg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_bt_wlan_coex = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"acx sg enable\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SG_ENABLE = common dso_local global i32 0, align 4
@ACX_SG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to set softgemini enable: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_sg_enable(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.acx_bt_wlan_coex*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %6 = load i32, i32* @DEBUG_ACX, align 4
  %7 = call i32 @wl1251_debug(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.acx_bt_wlan_coex* @kzalloc(i32 4, i32 %8)
  store %struct.acx_bt_wlan_coex* %9, %struct.acx_bt_wlan_coex** %4, align 8
  %10 = load %struct.acx_bt_wlan_coex*, %struct.acx_bt_wlan_coex** %4, align 8
  %11 = icmp ne %struct.acx_bt_wlan_coex* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load i32, i32* @SG_ENABLE, align 4
  %17 = load %struct.acx_bt_wlan_coex*, %struct.acx_bt_wlan_coex** %4, align 8
  %18 = getelementptr inbounds %struct.acx_bt_wlan_coex, %struct.acx_bt_wlan_coex* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %20 = load i32, i32* @ACX_SG_ENABLE, align 4
  %21 = load %struct.acx_bt_wlan_coex*, %struct.acx_bt_wlan_coex** %4, align 8
  %22 = call i32 @wl1251_cmd_configure(%struct.wl1251* %19, i32 %20, %struct.acx_bt_wlan_coex* %21, i32 4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @wl1251_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %29

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.acx_bt_wlan_coex*, %struct.acx_bt_wlan_coex** %4, align 8
  %31 = call i32 @kfree(%struct.acx_bt_wlan_coex* %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_bt_wlan_coex* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_bt_wlan_coex*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_bt_wlan_coex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
