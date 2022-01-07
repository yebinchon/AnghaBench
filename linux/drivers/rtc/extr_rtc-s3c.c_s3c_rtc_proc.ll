; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.seq_file = type { i32 }
%struct.s3c_rtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.s3c_rtc*, %struct.seq_file*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.seq_file*)* @s3c_rtc_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_rtc_proc(%struct.device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.s3c_rtc*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.s3c_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.s3c_rtc* %9, %struct.s3c_rtc** %6, align 8
  %10 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %11 = call i32 @s3c_rtc_enable_clk(%struct.s3c_rtc* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %18 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.s3c_rtc*, %struct.seq_file*)*, i32 (%struct.s3c_rtc*, %struct.seq_file*)** %20, align 8
  %22 = icmp ne i32 (%struct.s3c_rtc*, %struct.seq_file*)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %25 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.s3c_rtc*, %struct.seq_file*)*, i32 (%struct.s3c_rtc*, %struct.seq_file*)** %27, align 8
  %29 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %30 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %31 = call i32 %28(%struct.s3c_rtc* %29, %struct.seq_file* %30)
  br label %32

32:                                               ; preds = %23, %16
  %33 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %34 = call i32 @s3c_rtc_disable_clk(%struct.s3c_rtc* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.s3c_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @s3c_rtc_enable_clk(%struct.s3c_rtc*) #1

declare dso_local i32 @s3c_rtc_disable_clk(%struct.s3c_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
