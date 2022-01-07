; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_timer_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_timer_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdrtas_token_event_scan = common dso_local global i32 0, align 4
@RTAS_EVENT_SCAN_ALL_EVENTS = common dso_local global i32 0, align 4
@wdrtas_logbuffer = common dso_local global i32 0, align 4
@WDRTAS_LOGBUFFER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"event-scan failed: %li\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"dumping event, data: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdrtas_timer_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdrtas_timer_keepalive() #0 {
  %1 = alloca i64, align 8
  br label %2

2:                                                ; preds = %25, %0
  %3 = load i32, i32* @wdrtas_token_event_scan, align 4
  %4 = load i32, i32* @RTAS_EVENT_SCAN_ALL_EVENTS, align 4
  %5 = load i32, i32* @wdrtas_logbuffer, align 4
  %6 = call i64 @__pa(i32 %5)
  %7 = inttoptr i64 %6 to i8*
  %8 = load i32, i32* @WDRTAS_LOGBUFFER_LEN, align 4
  %9 = call i64 @rtas_call(i32 %3, i32 4, i32 1, i32* null, i32 %4, i32 0, i8* %7, i32 %8)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i64, i64* %1, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* @KERN_INFO, align 4
  %20 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %21 = load i32, i32* @wdrtas_logbuffer, align 4
  %22 = load i32, i32* @WDRTAS_LOGBUFFER_LEN, align 4
  %23 = call i32 @print_hex_dump(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 16, i32 1, i32 %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %18, %15
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %1, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %2, label %28

28:                                               ; preds = %25
  ret void
}

declare dso_local i64 @rtas_call(i32, i32, i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
