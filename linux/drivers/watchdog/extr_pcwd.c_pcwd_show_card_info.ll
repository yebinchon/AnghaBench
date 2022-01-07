; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_show_card_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_show_card_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32, i32 }

@pcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PCWD_REVISION_A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"ISA-PC Watchdog (REV.A) detected at port 0x%04x\0A\00", align 1
@PCWD_REVISION_C = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"ISA-PC Watchdog (REV.C) detected at port 0x%04x (Firmware version: %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Option switches (0x%02x): Temperature Reset Enable=%s, Power On Delay=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@CMD_ISA_DELAY_TIME_2SECS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Temperature Option Detected\0A\00", align 1
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Previous reboot was caused by the card\0A\00", align 1
@WDIOF_OVERHEAT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Card senses a CPU Overheat. Panicking!\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"CPU Overheat\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"No previous trip detected - Cold boot or reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcwd_show_card_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcwd_show_card_info() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %3 = load i64, i64* @PCWD_REVISION_A, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 4), align 4
  %7 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %38

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %10 = load i64, i64* @PCWD_REVISION_C, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = call i32 (...) @pcwd_get_firmware()
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 4), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 3), align 8
  %16 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = call i32 (...) @pcwd_get_option_switches()
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = and i32 %19, 16
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %24 = load i32, i32* %1, align 4
  %25 = and i32 %24, 8
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %29 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %18, i8* %23, i8* %28)
  %30 = call i64 (...) @set_command_mode()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %12
  %33 = load i32, i32* @CMD_ISA_DELAY_TIME_2SECS, align 4
  %34 = call i32 @send_isa_command(i32 %33)
  %35 = call i32 (...) @unset_command_mode()
  br label %36

36:                                               ; preds = %32, %12
  br label %37

37:                                               ; preds = %36, %8
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1), align 8
  %45 = load i32, i32* @WDIOF_CARDRESET, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1), align 8
  %52 = load i32, i32* @WDIOF_OVERHEAT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = call i32 @pr_emerg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %57 = call i32 @pr_emerg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1), align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pcwd_get_firmware(...) #1

declare dso_local i32 @pcwd_get_option_switches(...) #1

declare dso_local i64 @set_command_mode(...) #1

declare dso_local i32 @send_isa_command(i32) #1

declare dso_local i32 @unset_command_mode(...) #1

declare dso_local i32 @pr_emerg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
