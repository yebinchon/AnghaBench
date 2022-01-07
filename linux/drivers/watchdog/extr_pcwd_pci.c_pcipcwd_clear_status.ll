; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_clear_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_pcipcwd_clear_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@debug = common dso_local global i64 0, align 8
@VERBOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"clearing watchdog trip status & LED\0A\00", align 1
@pcipcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DEBUG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"status was: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"sending: 0x%02x\0A\00", align 1
@WD_PCI_R2DS = common dso_local global i32 0, align 4
@WD_PCI_WTRP = common dso_local global i32 0, align 4
@CMD_GET_CLEAR_RESET_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"reset count was: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcipcwd_clear_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcipcwd_clear_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @debug, align 8
  %5 = load i64, i64* @VERBOSE, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0), align 8
  %11 = add nsw i64 %10, 1
  %12 = call i32 @inb_p(i64 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i64, i64* @debug, align 8
  %14 = load i64, i64* @DEBUG, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @WD_PCI_R2DS, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @WD_PCI_WTRP, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %16, %9
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @WD_PCI_R2DS, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @WD_PCI_WTRP, align 4
  %30 = or i32 %28, %29
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0), align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @outb_p(i32 %30, i64 %32)
  store i32 0, i32* %2, align 4
  store i32 255, i32* %3, align 4
  %34 = load i32, i32* @CMD_GET_CLEAR_RESET_COUNT, align 4
  %35 = call i32 @send_command(i32 %34, i32* %2, i32* %3)
  %36 = load i64, i64* @debug, align 8
  %37 = load i64, i64* @DEBUG, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %25
  ret i32 0
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @send_command(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
