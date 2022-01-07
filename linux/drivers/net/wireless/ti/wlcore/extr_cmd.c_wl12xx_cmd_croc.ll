; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_croc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_croc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_cmd_croc = type { i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmd croc (%d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_CANCEL_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to send ROC command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32)* @wl12xx_cmd_croc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_cmd_croc(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl12xx_cmd_croc*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @DEBUG_CMD, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.wl12xx_cmd_croc* @kzalloc(i32 4, i32 %10)
  store %struct.wl12xx_cmd_croc* %11, %struct.wl12xx_cmd_croc** %5, align 8
  %12 = load %struct.wl12xx_cmd_croc*, %struct.wl12xx_cmd_croc** %5, align 8
  %13 = icmp ne %struct.wl12xx_cmd_croc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.wl12xx_cmd_croc*, %struct.wl12xx_cmd_croc** %5, align 8
  %20 = getelementptr inbounds %struct.wl12xx_cmd_croc, %struct.wl12xx_cmd_croc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %22 = load i32, i32* @CMD_CANCEL_REMAIN_ON_CHANNEL, align 4
  %23 = load %struct.wl12xx_cmd_croc*, %struct.wl12xx_cmd_croc** %5, align 8
  %24 = call i32 @wl1271_cmd_send(%struct.wl1271* %21, i32 %22, %struct.wl12xx_cmd_croc* %23, i32 4, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %30

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %27
  %31 = load %struct.wl12xx_cmd_croc*, %struct.wl12xx_cmd_croc** %5, align 8
  %32 = call i32 @kfree(%struct.wl12xx_cmd_croc* %31)
  br label %33

33:                                               ; preds = %30, %14
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.wl12xx_cmd_croc* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_croc*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_croc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
