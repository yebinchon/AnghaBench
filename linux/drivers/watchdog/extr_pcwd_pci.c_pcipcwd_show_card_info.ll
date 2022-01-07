; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_show_card_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_show_card_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@CMD_GET_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%u.%02u\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"<card no answer>\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Found card at port 0x%04x (Firmware: %s) %s temp option\0A\00", align 1
@pcipcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"Option switches (0x%02x): Temperature Reset Enable=%s, Power On Delay=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"Previous reset was caused by the Watchdog card\0A\00", align 1
@WDIOF_OVERHEAT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Card sensed a CPU Overheat\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"No previous trip detected - Cold boot or reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcipcwd_show_card_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcipcwd_show_card_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CMD_GET_FIRMWARE_VERSION, align 4
  %7 = call i32 @send_command(i32 %6, i32* %2, i32* %3)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  br label %18

15:                                               ; preds = %0
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %10
  %19 = call i32 (...) @pcipcwd_get_option_switches()
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 2), align 8
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %27 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %21, i8* %22, i8* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 16
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 8
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %39 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %28, i8* %33, i8* %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0), align 8
  %41 = load i32, i32* @WDIOF_CARDRESET, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %18
  %45 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %18
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0), align 8
  %48 = load i32, i32* @WDIOF_OVERHEAT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0), align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @send_command(i32, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @pcipcwd_get_option_switches(...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
