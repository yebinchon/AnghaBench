; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.seq_file = type { i32 }
%struct.sam9_rtc = type { i32 }

@MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"update_IRQ\09: %s\0A\00", align 1
@AT91_RTT_RTTINCIEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.seq_file*)* @at91_rtc_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_proc(%struct.device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.sam9_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sam9_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.sam9_rtc* %8, %struct.sam9_rtc** %5, align 8
  %9 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %10 = load i32, i32* @MR, align 4
  %11 = call i32 @rtt_readl(%struct.sam9_rtc* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @AT91_RTT_RTTINCIEN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %18)
  ret i32 0
}

declare dso_local %struct.sam9_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtt_readl(%struct.sam9_rtc*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
