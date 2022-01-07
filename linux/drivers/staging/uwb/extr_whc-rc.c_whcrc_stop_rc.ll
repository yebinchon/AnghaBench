; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_stop_rc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_stop_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.whcrc* }
%struct.whcrc = type { i64, i32, %struct.umc_dev* }
%struct.umc_dev = type { i32 }

@URCINTR = common dso_local global i64 0, align 8
@URCCMD = common dso_local global i64 0, align 8
@URCSTS = common dso_local global i64 0, align 8
@URCSTS_HALTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"radio controller stop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*)* @whcrc_stop_rc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whcrc_stop_rc(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  %3 = alloca %struct.whcrc*, align 8
  %4 = alloca %struct.umc_dev*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %5 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %6 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %5, i32 0, i32 0
  %7 = load %struct.whcrc*, %struct.whcrc** %6, align 8
  store %struct.whcrc* %7, %struct.whcrc** %3, align 8
  %8 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %9 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %8, i32 0, i32 2
  %10 = load %struct.umc_dev*, %struct.umc_dev** %9, align 8
  store %struct.umc_dev* %10, %struct.umc_dev** %4, align 8
  %11 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %12 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @URCINTR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @le_writel(i32 0, i64 %15)
  %17 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %18 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %17, i32 0, i32 1
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %21 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @URCCMD, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @le_writel(i32 0, i64 %24)
  %26 = load %struct.umc_dev*, %struct.umc_dev** %4, align 8
  %27 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %26, i32 0, i32 0
  %28 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %29 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @URCSTS, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* @URCSTS_HALTED, align 4
  %34 = load i32, i32* @URCSTS_HALTED, align 4
  %35 = call i32 @whci_wait_for(i32* %27, i64 %32, i32 %33, i32 %34, i32 100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @whci_wait_for(i32*, i64, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
