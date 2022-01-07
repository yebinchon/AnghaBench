; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.seq_file = type { i32 }
%struct.sa1100_rtc = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"trim/divider\09\09: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"RTSR\09\09\09: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.seq_file*)* @sa1100_rtc_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_proc(%struct.device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.sa1100_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.sa1100_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.sa1100_rtc* %7, %struct.sa1100_rtc** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %10 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl_relaxed(i32 %11)
  %13 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %16 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @readl_relaxed(i32 %17)
  %19 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  ret i32 0
}

declare dso_local %struct.sa1100_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @readl_relaxed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
