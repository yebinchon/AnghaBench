; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_stop_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_stop_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wl12xx_cmd_role_stop = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cmd role stop ap %d\00", align 1
@CMD_ROLE_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to initiate cmd role stop ap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_role_stop_ap(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.wl12xx_cmd_role_stop*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wl12xx_cmd_role_stop* @kzalloc(i32 4, i32 %7)
  store %struct.wl12xx_cmd_role_stop* %8, %struct.wl12xx_cmd_role_stop** %5, align 8
  %9 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %5, align 8
  %10 = icmp ne %struct.wl12xx_cmd_role_stop* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i32, i32* @DEBUG_CMD, align 4
  %16 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %17 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wl1271_debug(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %21 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %5, align 8
  %24 = getelementptr inbounds %struct.wl12xx_cmd_role_stop, %struct.wl12xx_cmd_role_stop* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %26 = load i32, i32* @CMD_ROLE_STOP, align 4
  %27 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %5, align 8
  %28 = call i32 @wl1271_cmd_send(%struct.wl1271* %25, i32 %26, %struct.wl12xx_cmd_role_stop* %27, i32 4, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = call i32 @wl1271_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %46

33:                                               ; preds = %14
  %34 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %35 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %36 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %37 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @wl12xx_free_link(%struct.wl1271* %34, %struct.wl12xx_vif* %35, i32* %38)
  %40 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %41 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %42 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %43 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @wl12xx_free_link(%struct.wl1271* %40, %struct.wl12xx_vif* %41, i32* %44)
  br label %46

46:                                               ; preds = %33, %31
  %47 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %5, align 8
  %48 = call i32 @kfree(%struct.wl12xx_cmd_role_stop* %47)
  br label %49

49:                                               ; preds = %46, %11
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.wl12xx_cmd_role_stop* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_role_stop*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl12xx_free_link(%struct.wl1271*, %struct.wl12xx_vif*, i32*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_role_stop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
