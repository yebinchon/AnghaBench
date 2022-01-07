; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_set_ba_receiver_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_set_ba_receiver_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl1271_acx_ba_receiver_setup = type { i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"acx ba receiver session setting\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_BA_SESSION_RX_SETUP = common dso_local global i32 0, align 4
@CMD_STATUS_NO_RX_BA_SESSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"acx ba receiver session failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"no fw rx ba on tid %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_acx_set_ba_receiver_session(%struct.wl1271* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wl1271_acx_ba_receiver_setup*, align 8
  %14 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @DEBUG_ACX, align 4
  %16 = call i32 @wl1271_debug(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.wl1271_acx_ba_receiver_setup* @kzalloc(i32 20, i32 %17)
  store %struct.wl1271_acx_ba_receiver_setup* %18, %struct.wl1271_acx_ba_receiver_setup** %13, align 8
  %19 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %13, align 8
  %20 = icmp ne %struct.wl1271_acx_ba_receiver_setup* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %14, align 4
  br label %61

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %13, align 8
  %27 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %13, align 8
  %30 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %13, align 8
  %33 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %13, align 8
  %36 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %13, align 8
  %39 = getelementptr inbounds %struct.wl1271_acx_ba_receiver_setup, %struct.wl1271_acx_ba_receiver_setup* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %41 = load i32, i32* @ACX_BA_SESSION_RX_SETUP, align 4
  %42 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %13, align 8
  %43 = load i32, i32* @CMD_STATUS_NO_RX_BA_SESSION, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = call i32 @wlcore_cmd_configure_failsafe(%struct.wl1271* %40, i32 %41, %struct.wl1271_acx_ba_receiver_setup* %42, i32 20, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %24
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @wl1271_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %61

51:                                               ; preds = %24
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @CMD_STATUS_NO_RX_BA_SESSION, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %61

60:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %55, %48, %21
  %62 = load %struct.wl1271_acx_ba_receiver_setup*, %struct.wl1271_acx_ba_receiver_setup** %13, align 8
  %63 = call i32 @kfree(%struct.wl1271_acx_ba_receiver_setup* %62)
  %64 = load i32, i32* %14, align 4
  ret i32 %64
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_ba_receiver_setup* @kzalloc(i32, i32) #1

declare dso_local i32 @wlcore_cmd_configure_failsafe(%struct.wl1271*, i32, %struct.wl1271_acx_ba_receiver_setup*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_ba_receiver_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
