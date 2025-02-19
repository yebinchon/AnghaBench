; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_wpa_mlme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_wpa_mlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct._adapter = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @wpa_mlme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_mlme(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct._adapter* @netdev_priv(%struct.net_device* %9)
  store %struct._adapter* %10, %struct._adapter** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 128, label %18
  ]

12:                                               ; preds = %3
  %13 = load %struct._adapter*, %struct._adapter** %8, align 8
  %14 = call i32 @r8712_set_802_11_disassociate(%struct._adapter* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %28

17:                                               ; preds = %12
  br label %27

18:                                               ; preds = %3
  %19 = load %struct._adapter*, %struct._adapter** %8, align 8
  %20 = call i32 @r8712_set_802_11_disassociate(%struct._adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %28

23:                                               ; preds = %18
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %23, %17
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %24, %22, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @r8712_set_802_11_disassociate(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
