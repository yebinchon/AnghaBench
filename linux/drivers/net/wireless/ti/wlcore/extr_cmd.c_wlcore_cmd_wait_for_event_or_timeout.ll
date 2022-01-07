; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_wait_for_event_or_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_wait_for_event_or_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WL1271_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"timeout waiting for event %d\00", align 1
@WL1271_WAIT_EVENT_FAST_POLL_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_cmd_wait_for_event_or_timeout(%struct.wl1271* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @GFP_DMA, align 4
  %16 = or i32 %14, %15
  %17 = call i32* @kmalloc(i32 4, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %113

23:                                               ; preds = %3
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i32, i32* @WL1271_EVENT_TIMEOUT, align 4
  %26 = call i64 @msecs_to_jiffies(i32 %25)
  %27 = add i64 %24, %26
  store i64 %27, i64* %10, align 8
  %28 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %29 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pm_runtime_get_sync(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pm_runtime_put_noidle(i32 %37)
  br label %109

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %95, %39
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @time_after(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @DEBUG_CMD, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @wl1271_debug(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %7, align 8
  store i32 1, i32* %49, align 4
  br label %100

50:                                               ; preds = %40
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @WL1271_WAIT_EVENT_FAST_POLL_COUNT, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @usleep_range(i32 50, i32 51)
  br label %60

58:                                               ; preds = %50
  %59 = call i32 @usleep_range(i32 1000, i32 5000)
  br label %60

60:                                               ; preds = %58, %56
  %61 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %62 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @wlcore_read(%struct.wl1271* %61, i32 %66, i32* %67, i32 4, i32 0)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %100

72:                                               ; preds = %60
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %78 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %79 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @wlcore_read(%struct.wl1271* %77, i32 %82, i32* %83, i32 4, i32 0)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %100

88:                                               ; preds = %72
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %40, label %99

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %87, %71, %45
  %101 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pm_runtime_mark_last_busy(i32 %103)
  %105 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %106 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pm_runtime_put_autosuspend(i32 %107)
  br label %109

109:                                              ; preds = %100, %34
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @kfree(i32* %110)
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %20
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @wlcore_read(%struct.wl1271*, i32, i32*, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
