; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_rx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_rx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_rx_config = type { i8*, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"acx rx config\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_RX_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set rx config: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_rx_config(%struct.wl1251* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acx_rx_config*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @DEBUG_ACX, align 4
  %11 = call i32 @wl1251_debug(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.acx_rx_config* @kzalloc(i32 16, i32 %12)
  store %struct.acx_rx_config* %13, %struct.acx_rx_config** %8, align 8
  %14 = load %struct.acx_rx_config*, %struct.acx_rx_config** %8, align 8
  %15 = icmp ne %struct.acx_rx_config* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.acx_rx_config*, %struct.acx_rx_config** %8, align 8
  %22 = getelementptr inbounds %struct.acx_rx_config, %struct.acx_rx_config* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.acx_rx_config*, %struct.acx_rx_config** %8, align 8
  %25 = getelementptr inbounds %struct.acx_rx_config, %struct.acx_rx_config* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %27 = load i32, i32* @ACX_RX_CFG, align 4
  %28 = load %struct.acx_rx_config*, %struct.acx_rx_config** %8, align 8
  %29 = call i32 @wl1251_cmd_configure(%struct.wl1251* %26, i32 %27, %struct.acx_rx_config* %28, i32 16)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @wl1251_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %36

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %32
  %37 = load %struct.acx_rx_config*, %struct.acx_rx_config** %8, align 8
  %38 = call i32 @kfree(%struct.acx_rx_config* %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_rx_config* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_rx_config*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_rx_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
