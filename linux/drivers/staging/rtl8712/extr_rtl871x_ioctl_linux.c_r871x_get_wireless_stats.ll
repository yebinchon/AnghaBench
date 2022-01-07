; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_get_wireless_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_get_wireless_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct._adapter = type { %struct.iw_statistics, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@IW_QUAL_ALL_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iw_statistics* (%struct.net_device*)* @r871x_get_wireless_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iw_statistics* @r871x_get_wireless_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.iw_statistics*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct._adapter* @netdev_priv(%struct.net_device* %8)
  store %struct._adapter* %9, %struct._adapter** %3, align 8
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  store %struct.iw_statistics* %11, %struct.iw_statistics** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 2
  %14 = load i32, i32* @_FW_LINKED, align 4
  %15 = call i32 @check_fwstate(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %19 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %22 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %25 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load %struct._adapter*, %struct._adapter** %3, align 8
  %29 = getelementptr inbounds %struct._adapter, %struct._adapter* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct._adapter*, %struct._adapter** %3, align 8
  %33 = getelementptr inbounds %struct._adapter, %struct._adapter* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct._adapter*, %struct._adapter** %3, align 8
  %37 = getelementptr inbounds %struct._adapter, %struct._adapter* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %42 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %46 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %50 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %27, %17
  %53 = load i32, i32* @IW_QUAL_ALL_UPDATED, align 4
  %54 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %55 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load %struct._adapter*, %struct._adapter** %3, align 8
  %58 = getelementptr inbounds %struct._adapter, %struct._adapter* %57, i32 0, i32 0
  ret %struct.iw_statistics* %58
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_fwstate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
