; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_mbox_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_mbox_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_mailbox = type { i32, i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MBOX DUMP:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09vector: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\09mask: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_mailbox*)* @wl1251_event_mbox_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_event_mbox_dump(%struct.event_mailbox* %0) #0 {
  %2 = alloca %struct.event_mailbox*, align 8
  store %struct.event_mailbox* %0, %struct.event_mailbox** %2, align 8
  %3 = load i32, i32* @DEBUG_EVENT, align 4
  %4 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @DEBUG_EVENT, align 4
  %6 = load %struct.event_mailbox*, %struct.event_mailbox** %2, align 8
  %7 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @DEBUG_EVENT, align 4
  %11 = load %struct.event_mailbox*, %struct.event_mailbox** %2, align 8
  %12 = getelementptr inbounds %struct.event_mailbox, %struct.event_mailbox* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  ret void
}

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
