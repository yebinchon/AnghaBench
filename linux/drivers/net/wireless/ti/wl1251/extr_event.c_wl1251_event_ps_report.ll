; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_ps_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_ps_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, i32 }
%struct.event_mailbox = type { i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ps status: %x\00", align 1
@DEBUG_PSM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PSM entry failed\00", align 1
@STATION_POWER_SAVE_MODE = common dso_local global i32 0, align 4
@WL1251_PSM_ENTRY_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Power save entry failed, giving up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, %struct.event_mailbox*)* @wl1251_event_ps_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_event_ps_report(%struct.wl1251* %0, %struct.event_mailbox* %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.event_mailbox*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store %struct.event_mailbox* %1, %struct.event_mailbox** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @DEBUG_EVENT, align 4
  %7 = load %struct.event_mailbox*, %struct.event_mailbox** %4, align 8
  %8 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.event_mailbox*, %struct.event_mailbox** %4, align 8
  %12 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %45 [
    i32 131, label %14
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @DEBUG_PSM, align 4
  %16 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %18 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @STATION_POWER_SAVE_MODE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %24 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %48

25:                                               ; preds = %14
  %26 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %27 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WL1251_PSM_ENTRY_RETRIES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %33 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %37 = load i32, i32* @STATION_POWER_SAVE_MODE, align 4
  %38 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %43

39:                                               ; preds = %25
  %40 = call i32 @wl1251_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %42 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %31
  br label %48

44:                                               ; preds = %2, %2, %2
  br label %45

45:                                               ; preds = %2, %44
  %46 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %47 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %43, %22
  ret i32 0
}

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local i32 @wl1251_ps_set_mode(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
