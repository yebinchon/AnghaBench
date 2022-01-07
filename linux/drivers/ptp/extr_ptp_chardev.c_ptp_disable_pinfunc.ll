; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_chardev.c_ptp_disable_pinfunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_chardev.c_ptp_disable_pinfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_info = type { i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* }
%struct.ptp_clock_request = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PTP_CLK_REQ_EXTTS = common dso_local global i32 0, align 4
@PTP_CLK_REQ_PEROUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptp_clock_info*, i32, i32)* @ptp_disable_pinfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptp_disable_pinfunc(%struct.ptp_clock_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptp_clock_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ptp_clock_request, align 4
  %9 = alloca i32, align 4
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @memset(%struct.ptp_clock_request* %8, i32 0, i32 12)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %36 [
    i32 130, label %12
    i32 131, label %13
    i32 129, label %24
    i32 128, label %35
  ]

12:                                               ; preds = %3
  br label %39

13:                                               ; preds = %3
  %14 = load i32, i32* @PTP_CLK_REQ_EXTTS, align 4
  %15 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %8, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %8, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %20 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %19, i32 0, i32 0
  %21 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %20, align 8
  %22 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %23 = call i32 %21(%struct.ptp_clock_info* %22, %struct.ptp_clock_request* %8, i32 0)
  store i32 %23, i32* %9, align 4
  br label %39

24:                                               ; preds = %3
  %25 = load i32, i32* @PTP_CLK_REQ_PEROUT, align 4
  %26 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %8, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %31 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %30, i32 0, i32 0
  %32 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %31, align 8
  %33 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %34 = call i32 %32(%struct.ptp_clock_info* %33, %struct.ptp_clock_request* %8, i32 0)
  store i32 %34, i32* %9, align 4
  br label %39

35:                                               ; preds = %3
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %35, %24, %13, %12
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.ptp_clock_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
