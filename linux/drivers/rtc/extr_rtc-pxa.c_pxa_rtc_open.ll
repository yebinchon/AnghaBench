; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxa_rtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@pxa_rtc_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rtc 1Hz\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't get irq %i, err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rtc Alrm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pxa_rtc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_rtc_open(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pxa_rtc*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pxa_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.pxa_rtc* %7, %struct.pxa_rtc** %4, align 8
  %8 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %9 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @pxa_rtc_irq, align 4
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @request_irq(i32 %11, i32 %12, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %20 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  br label %51

25:                                               ; preds = %1
  %26 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %27 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @pxa_rtc_irq, align 4
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 @request_irq(i32 %29, i32 %30, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.device* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %38 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  br label %44

43:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %53

44:                                               ; preds = %35
  %45 = load %struct.pxa_rtc*, %struct.pxa_rtc** %4, align 8
  %46 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.device* %49)
  br label %51

51:                                               ; preds = %44, %17
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %43
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.pxa_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
