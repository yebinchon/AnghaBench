; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_set_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_set_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@CMD_WRITE_WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@VERBOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"New heartbeat: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcipcwd_set_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcipcwd_set_heartbeat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sdiv i32 %6, 256
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = srem i32 %8, 256
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 65535
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %12
  %19 = load i32, i32* @CMD_WRITE_WATCHDOG_TIMEOUT, align 4
  %20 = call i32 @send_command(i32 %19, i32* %4, i32* %5)
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* @heartbeat, align 4
  %22 = load i64, i64* @debug, align 8
  %23 = load i64, i64* @VERBOSE, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @heartbeat, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %18
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @send_command(i32, i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
