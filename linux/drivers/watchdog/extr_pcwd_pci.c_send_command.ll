; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_pci.c_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@debug = common dso_local global i64 0, align 8
@DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x\0A\00", align 1
@pcipcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WD_PCI_WRSP = common dso_local global i32 0, align 4
@PCI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"time to process command was: %d ms\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"card did not respond on command!\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"received following data for cmd=0x%02x: msb=0x%02x lsb=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_command(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* @debug, align 8
  %10 = load i64, i64* @DEBUG, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %12, %3
  %20 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0))
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %24 = add nsw i64 %23, 4
  %25 = call i32 @outb_p(i32 %22, i64 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %29 = add nsw i64 %28, 5
  %30 = call i32 @outb_p(i32 %27, i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %33 = add nsw i64 %32, 6
  %34 = call i32 @outb_p(i32 %31, i64 %33)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %36 = add nsw i64 %35, 2
  %37 = call i32 @inb_p(i64 %36)
  %38 = load i32, i32* @WD_PCI_WRSP, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %57, %19
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @PCI_COMMAND_TIMEOUT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %60

50:                                               ; preds = %48
  %51 = call i32 @mdelay(i32 1)
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %53 = add nsw i64 %52, 2
  %54 = call i32 @inb_p(i64 %53)
  %55 = load i32, i32* @WD_PCI_WRSP, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %40

60:                                               ; preds = %48
  %61 = load i64, i64* @debug, align 8
  %62 = load i64, i64* @DEBUG, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %72

70:                                               ; preds = %64
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %78 = add nsw i64 %77, 4
  %79 = call i32 @inb_p(i64 %78)
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %82 = add nsw i64 %81, 5
  %83 = call i32 @inb_p(i64 %82)
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 1), align 8
  %86 = add nsw i64 %85, 6
  %87 = call i32 @inb_p(i64 %86)
  %88 = load i64, i64* @debug, align 8
  %89 = load i64, i64* @DEBUG, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %76
  %92 = load i32, i32* %4, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %94, i32 %96)
  br label %98

98:                                               ; preds = %91, %76
  br label %99

99:                                               ; preds = %98, %73
  %100 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcipcwd_private, i32 0, i32 0))
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
