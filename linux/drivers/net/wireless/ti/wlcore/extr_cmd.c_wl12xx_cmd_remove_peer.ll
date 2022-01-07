; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_remove_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_remove_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, i32, i32*)* }
%struct.wl12xx_vif = type { i32 }
%struct.wl12xx_cmd_remove_peer = type { i32, i64, i64, i64 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cmd remove peer %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_REMOVE_PEER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to initiate cmd remove peer\00", align 1
@WLCORE_EVENT_PEER_REMOVE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_remove_peer(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wl12xx_cmd_remove_peer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @DEBUG_CMD, align 4
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.wl12xx_cmd_remove_peer* @kzalloc(i32 32, i32 %14)
  store %struct.wl12xx_cmd_remove_peer* %15, %struct.wl12xx_cmd_remove_peer** %7, align 8
  %16 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %7, align 8
  %17 = icmp ne %struct.wl12xx_cmd_remove_peer* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %60

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %7, align 8
  %24 = getelementptr inbounds %struct.wl12xx_cmd_remove_peer, %struct.wl12xx_cmd_remove_peer* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %7, align 8
  %26 = getelementptr inbounds %struct.wl12xx_cmd_remove_peer, %struct.wl12xx_cmd_remove_peer* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %7, align 8
  %28 = getelementptr inbounds %struct.wl12xx_cmd_remove_peer, %struct.wl12xx_cmd_remove_peer* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %30 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %7, align 8
  %33 = getelementptr inbounds %struct.wl12xx_cmd_remove_peer, %struct.wl12xx_cmd_remove_peer* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %35 = load i32, i32* @CMD_REMOVE_PEER, align 4
  %36 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %7, align 8
  %37 = call i32 @wl1271_cmd_send(%struct.wl1271* %34, i32 %35, %struct.wl12xx_cmd_remove_peer* %36, i32 32, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %57

42:                                               ; preds = %21
  %43 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.wl1271*, i32, i32*)*, i32 (%struct.wl1271*, i32, i32*)** %46, align 8
  %48 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %49 = load i32, i32* @WLCORE_EVENT_PEER_REMOVE_COMPLETE, align 4
  %50 = call i32 %47(%struct.wl1271* %48, i32 %49, i32* %9)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %55 = call i32 @wl12xx_queue_recovery_work(%struct.wl1271* %54)
  br label %56

56:                                               ; preds = %53, %42
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %7, align 8
  %59 = call i32 @kfree(%struct.wl12xx_cmd_remove_peer* %58)
  br label %60

60:                                               ; preds = %57, %18
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.wl12xx_cmd_remove_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_remove_peer*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl12xx_queue_recovery_work(%struct.wl1271*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_remove_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
