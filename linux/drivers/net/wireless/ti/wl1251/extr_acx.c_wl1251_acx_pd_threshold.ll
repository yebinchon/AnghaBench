; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_pd_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_pd_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_packet_detection = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"acx data pd threshold\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_PD_THRESHOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to set pd threshold: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_pd_threshold(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.acx_packet_detection*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %6 = load i32, i32* @DEBUG_ACX, align 4
  %7 = call i32 @wl1251_debug(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.acx_packet_detection* @kzalloc(i32 4, i32 %8)
  store %struct.acx_packet_detection* %9, %struct.acx_packet_detection** %4, align 8
  %10 = load %struct.acx_packet_detection*, %struct.acx_packet_detection** %4, align 8
  %11 = icmp ne %struct.acx_packet_detection* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %17 = load i32, i32* @ACX_PD_THRESHOLD, align 4
  %18 = load %struct.acx_packet_detection*, %struct.acx_packet_detection** %4, align 8
  %19 = call i32 @wl1251_cmd_configure(%struct.wl1251* %16, i32 %17, %struct.acx_packet_detection* %18, i32 4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @wl1251_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %22
  %27 = load %struct.acx_packet_detection*, %struct.acx_packet_detection** %4, align 8
  %28 = call i32 @kfree(%struct.acx_packet_detection* %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_packet_detection* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_packet_detection*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_packet_detection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
