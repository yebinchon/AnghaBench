; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_set_vgc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_set_vgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.link_qual = type { i32, i32, i32 }

@RT3572 = common dso_local global i32 0, align 4
@RT3593 = common dso_local global i32 0, align 4
@RT3883 = common dso_local global i32 0, align 4
@RT5592 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.link_qual*, i32)* @rt2800_set_vgc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_set_vgc(%struct.rt2x00_dev* %0, %struct.link_qual* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.link_qual*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.link_qual* %1, %struct.link_qual** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %8 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %3
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %14 = load i32, i32* @RT3572, align 4
  %15 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %19 = load i32, i32* @RT3593, align 4
  %20 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %24 = load i32, i32* @RT3883, align 4
  %25 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %17, %12
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %28, i32 66, i32 %29)
  br label %53

31:                                               ; preds = %22
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %33 = load i32, i32* @RT5592, align 4
  %34 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %38 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %39 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, -65
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 74, i32 122
  %44 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %37, i32 83, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %45, i32 66, i32 %46)
  br label %52

48:                                               ; preds = %31
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %49, i32 66, i32 %50)
  br label %52

52:                                               ; preds = %48, %36
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %56 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %59 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %3
  ret void
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
