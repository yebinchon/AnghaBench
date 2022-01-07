; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_config_fwlog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_config_fwlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.wl12xx_cmd_config_fwlog = type { i32, i32, i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cmd config firmware logger\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_CONFIG_FWLOGGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to send config firmware logger command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_config_fwlog(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl12xx_cmd_config_fwlog*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @DEBUG_CMD, align 4
  %6 = call i32 @wl1271_debug(i32 %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wl12xx_cmd_config_fwlog* @kzalloc(i32 20, i32 %7)
  store %struct.wl12xx_cmd_config_fwlog* %8, %struct.wl12xx_cmd_config_fwlog** %3, align 8
  %9 = load %struct.wl12xx_cmd_config_fwlog*, %struct.wl12xx_cmd_config_fwlog** %3, align 8
  %10 = icmp ne %struct.wl12xx_cmd_config_fwlog* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wl12xx_cmd_config_fwlog*, %struct.wl12xx_cmd_config_fwlog** %3, align 8
  %21 = getelementptr inbounds %struct.wl12xx_cmd_config_fwlog, %struct.wl12xx_cmd_config_fwlog* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wl12xx_cmd_config_fwlog*, %struct.wl12xx_cmd_config_fwlog** %3, align 8
  %28 = getelementptr inbounds %struct.wl12xx_cmd_config_fwlog, %struct.wl12xx_cmd_config_fwlog* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wl12xx_cmd_config_fwlog*, %struct.wl12xx_cmd_config_fwlog** %3, align 8
  %35 = getelementptr inbounds %struct.wl12xx_cmd_config_fwlog, %struct.wl12xx_cmd_config_fwlog* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wl12xx_cmd_config_fwlog*, %struct.wl12xx_cmd_config_fwlog** %3, align 8
  %42 = getelementptr inbounds %struct.wl12xx_cmd_config_fwlog, %struct.wl12xx_cmd_config_fwlog* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wl12xx_cmd_config_fwlog*, %struct.wl12xx_cmd_config_fwlog** %3, align 8
  %49 = getelementptr inbounds %struct.wl12xx_cmd_config_fwlog, %struct.wl12xx_cmd_config_fwlog* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %51 = load i32, i32* @CMD_CONFIG_FWLOGGER, align 4
  %52 = load %struct.wl12xx_cmd_config_fwlog*, %struct.wl12xx_cmd_config_fwlog** %3, align 8
  %53 = call i32 @wl1271_cmd_send(%struct.wl1271* %50, i32 %51, %struct.wl12xx_cmd_config_fwlog* %52, i32 20, i32 0)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %14
  %57 = call i32 @wl1271_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %59

58:                                               ; preds = %14
  br label %59

59:                                               ; preds = %58, %56
  %60 = load %struct.wl12xx_cmd_config_fwlog*, %struct.wl12xx_cmd_config_fwlog** %3, align 8
  %61 = call i32 @kfree(%struct.wl12xx_cmd_config_fwlog* %60)
  br label %62

62:                                               ; preds = %59, %11
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl12xx_cmd_config_fwlog* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_config_fwlog*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_config_fwlog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
