; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_is_same_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_is_same_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv }
%struct.security_priv = type { i64 }
%struct.wlan_network = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@_NO_PRIVACY_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_is_same_ibss(%struct._adapter* %0, %struct.wlan_network* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.wlan_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.security_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.wlan_network* %1, %struct.wlan_network** %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 0
  store %struct.security_priv* %8, %struct.security_priv** %6, align 8
  %9 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %10 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @_NO_PRIVACY_, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %16 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @cpu_to_le32(i32 0)
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %38

22:                                               ; preds = %14, %2
  %23 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %24 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @_NO_PRIVACY_, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %30 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @cpu_to_le32(i32 1)
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %37

36:                                               ; preds = %28, %22
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
