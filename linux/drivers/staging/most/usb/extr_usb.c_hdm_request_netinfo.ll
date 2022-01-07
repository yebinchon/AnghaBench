; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_request_netinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_request_netinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.most_dev = type { void (%struct.most_interface*, i8, i8*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.most_interface*, i32, void (%struct.most_interface*, i8, i8*)*)* @hdm_request_netinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdm_request_netinfo(%struct.most_interface* %0, i32 %1, void (%struct.most_interface*, i8, i8*)* %2) #0 {
  %4 = alloca %struct.most_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.most_interface*, i8, i8*)*, align 8
  %7 = alloca %struct.most_dev*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (%struct.most_interface*, i8, i8*)* %2, void (%struct.most_interface*, i8, i8*)** %6, align 8
  %8 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %9 = icmp ne %struct.most_interface* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %14 = call %struct.most_dev* @to_mdev(%struct.most_interface* %13)
  store %struct.most_dev* %14, %struct.most_dev** %7, align 8
  %15 = load void (%struct.most_interface*, i8, i8*)*, void (%struct.most_interface*, i8, i8*)** %6, align 8
  %16 = load %struct.most_dev*, %struct.most_dev** %7, align 8
  %17 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %16, i32 0, i32 0
  store void (%struct.most_interface*, i8, i8*)* %15, void (%struct.most_interface*, i8, i8*)** %17, align 8
  %18 = load void (%struct.most_interface*, i8, i8*)*, void (%struct.most_interface*, i8, i8*)** %6, align 8
  %19 = icmp ne void (%struct.most_interface*, i8, i8*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %35

21:                                               ; preds = %3
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* @HZ, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.most_dev*, %struct.most_dev** %7, align 8
  %26 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load %struct.most_dev*, %struct.most_dev** %7, align 8
  %29 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %28, i32 0, i32 1
  %30 = load %struct.most_dev*, %struct.most_dev** %7, align 8
  %31 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @mod_timer(%struct.TYPE_2__* %29, i64 %33)
  br label %35

35:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.most_dev* @to_mdev(%struct.most_interface*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
