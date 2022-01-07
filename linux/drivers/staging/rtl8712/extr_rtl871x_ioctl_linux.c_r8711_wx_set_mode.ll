; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct._adapter = type { i32 }

@Ndis802_11AutoUnknown = common dso_local global i32 0, align 4
@Ndis802_11IBSS = common dso_local global i32 0, align 4
@Ndis802_11APMode = common dso_local global i32 0, align 4
@Ndis802_11Infrastructure = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8711_wx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8711_wx_set_mode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct._adapter* @netdev_priv(%struct.net_device* %12)
  store %struct._adapter* %13, %struct._adapter** %10, align 8
  %14 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %15 = bitcast %union.iwreq_data* %14 to i32*
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 130, label %17
    i32 131, label %19
    i32 128, label %21
    i32 129, label %23
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @Ndis802_11AutoUnknown, align 4
  store i32 %18, i32* %11, align 4
  br label %28

19:                                               ; preds = %4
  %20 = load i32, i32* @Ndis802_11IBSS, align 4
  store i32 %20, i32* %11, align 4
  br label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @Ndis802_11APMode, align 4
  store i32 %22, i32* %11, align 4
  br label %28

23:                                               ; preds = %4
  %24 = load i32, i32* @Ndis802_11Infrastructure, align 4
  store i32 %24, i32* %11, align 4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %44

28:                                               ; preds = %23, %21, %19, %17
  %29 = load i32, i32* @Ndis802_11APMode, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct._adapter*, %struct._adapter** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @r8712_setopmode_cmd(%struct._adapter* %33, i32 %34)
  br label %40

36:                                               ; preds = %28
  %37 = load %struct._adapter*, %struct._adapter** %10, align 8
  %38 = load i32, i32* @Ndis802_11AutoUnknown, align 4
  %39 = call i32 @r8712_setopmode_cmd(%struct._adapter* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct._adapter*, %struct._adapter** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @r8712_set_802_11_infrastructure_mode(%struct._adapter* %41, i32 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %25
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @r8712_setopmode_cmd(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_set_802_11_infrastructure_mode(%struct._adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
