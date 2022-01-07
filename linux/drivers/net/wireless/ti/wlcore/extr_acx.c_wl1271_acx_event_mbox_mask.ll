; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_event_mbox_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_event_mbox_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.acx_event_mask = type { i8*, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"acx event mbox mask\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_EVENT_MBOX_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to set acx_event_mbox_mask: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_event_mbox_mask(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acx_event_mask*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acx_event_mask* @kzalloc(i32 16, i32 %9)
  store %struct.acx_event_mask* %10, %struct.acx_event_mask** %5, align 8
  %11 = load %struct.acx_event_mask*, %struct.acx_event_mask** %5, align 8
  %12 = icmp ne %struct.acx_event_mask* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %34

16:                                               ; preds = %2
  %17 = call i8* @cpu_to_le32(i32 -1)
  %18 = load %struct.acx_event_mask*, %struct.acx_event_mask** %5, align 8
  %19 = getelementptr inbounds %struct.acx_event_mask, %struct.acx_event_mask* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.acx_event_mask*, %struct.acx_event_mask** %5, align 8
  %23 = getelementptr inbounds %struct.acx_event_mask, %struct.acx_event_mask* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %25 = load i32, i32* @ACX_EVENT_MBOX_MASK, align 4
  %26 = load %struct.acx_event_mask*, %struct.acx_event_mask** %5, align 8
  %27 = call i32 @wl1271_cmd_configure(%struct.wl1271* %24, i32 %25, %struct.acx_event_mask* %26, i32 16)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @wl1271_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %34

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %30, %13
  %35 = load %struct.acx_event_mask*, %struct.acx_event_mask** %5, align 8
  %36 = call i32 @kfree(%struct.acx_event_mask* %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_event_mask* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_event_mask*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_event_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
