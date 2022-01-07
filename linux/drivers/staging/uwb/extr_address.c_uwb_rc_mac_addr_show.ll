; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_mac_addr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_mac_addr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uwb_dev = type { %struct.uwb_rc* }
%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uwb_mac_addr = type { i32 }

@UWB_ADDR_MAC = common dso_local global i32 0, align 4
@UWB_ADDR_STRSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @uwb_rc_mac_addr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uwb_rc_mac_addr_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uwb_dev*, align 8
  %8 = alloca %struct.uwb_rc*, align 8
  %9 = alloca %struct.uwb_mac_addr, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.uwb_dev* @to_uwb_dev(%struct.device* %11)
  store %struct.uwb_dev* %12, %struct.uwb_dev** %7, align 8
  %13 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %14 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %13, i32 0, i32 0
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %14, align 8
  store %struct.uwb_rc* %15, %struct.uwb_rc** %8, align 8
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %17 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %21 = load i32, i32* @UWB_ADDR_MAC, align 4
  %22 = call i64 @uwb_rc_addr_get(%struct.uwb_rc* %20, %struct.uwb_mac_addr* %9, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %24 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i64, i64* %10, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %32 = call i64 @uwb_mac_addr_print(i8* %30, i32 %31, %struct.uwb_mac_addr* %9)
  store i64 %32, i64* %10, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %10, align 8
  %36 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 10, i8* %36, align 1
  br label %37

37:                                               ; preds = %29, %3
  %38 = load i64, i64* %10, align 8
  ret i64 %38
}

declare dso_local %struct.uwb_dev* @to_uwb_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @uwb_rc_addr_get(%struct.uwb_rc*, %struct.uwb_mac_addr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @uwb_mac_addr_print(i8*, i32, %struct.uwb_mac_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
