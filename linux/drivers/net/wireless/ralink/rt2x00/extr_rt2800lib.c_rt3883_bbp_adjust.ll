; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt3883_bbp_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt3883_bbp_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rf_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rf_channel*)* @rt3883_bbp_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt3883_bbp_adjust(%struct.rt2x00_dev* %0, %struct.rf_channel* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rf_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rf_channel* %1, %struct.rf_channel** %4, align 8
  %6 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %7 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 14
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 72, i32 56
  store i32 %11, i32* %5, align 4
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %12, i32 66, i32 %13)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %15, i32 69, i32 18)
  %17 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %18 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 14
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %22, i32 70, i32 10)
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %25, i32 70, i32 0)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %28, i32 73, i32 16)
  %30 = load %struct.rf_channel*, %struct.rf_channel** %4, align 8
  %31 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 14
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %35, i32 62, i32 29)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %37, i32 63, i32 29)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %40 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %39, i32 64, i32 29)
  br label %48

41:                                               ; preds = %27
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %42, i32 62, i32 45)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %44, i32 63, i32 45)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %46, i32 64, i32 45)
  br label %48

48:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
