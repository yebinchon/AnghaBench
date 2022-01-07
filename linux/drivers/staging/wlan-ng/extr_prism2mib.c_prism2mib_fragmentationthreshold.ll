; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_fragmentationthreshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_fragmentationthreshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibrec = type { i32 }
%struct.wlandevice = type { i32 }
%struct.hfa384x = type { i32 }
%struct.p80211msg_dot11req_mibset = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Attempt to set odd number FragmentationThreshold\0A\00", align 1
@P80211ENUM_resultcode_not_supported = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mibrec*, i32, %struct.wlandevice*, %struct.hfa384x*, %struct.p80211msg_dot11req_mibset*, i8*)* @prism2mib_fragmentationthreshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2mib_fragmentationthreshold(%struct.mibrec* %0, i32 %1, %struct.wlandevice* %2, %struct.hfa384x* %3, %struct.p80211msg_dot11req_mibset* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mibrec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wlandevice*, align 8
  %11 = alloca %struct.hfa384x*, align 8
  %12 = alloca %struct.p80211msg_dot11req_mibset*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.mibrec* %0, %struct.mibrec** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.wlandevice* %2, %struct.wlandevice** %10, align 8
  store %struct.hfa384x* %3, %struct.hfa384x** %11, align 8
  store %struct.p80211msg_dot11req_mibset* %4, %struct.p80211msg_dot11req_mibset** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %6
  %20 = load i32*, i32** %14, align 8
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %26 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netdev_warn(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @P80211ENUM_resultcode_not_supported, align 4
  %30 = load %struct.p80211msg_dot11req_mibset*, %struct.p80211msg_dot11req_mibset** %12, align 8
  %31 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  store i32 0, i32* %7, align 4
  br label %42

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %6
  %35 = load %struct.mibrec*, %struct.mibrec** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %38 = load %struct.hfa384x*, %struct.hfa384x** %11, align 8
  %39 = load %struct.p80211msg_dot11req_mibset*, %struct.p80211msg_dot11req_mibset** %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @prism2mib_uint32(%struct.mibrec* %35, i32 %36, %struct.wlandevice* %37, %struct.hfa384x* %38, %struct.p80211msg_dot11req_mibset* %39, i8* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %34, %24
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @prism2mib_uint32(%struct.mibrec*, i32, %struct.wlandevice*, %struct.hfa384x*, %struct.p80211msg_dot11req_mibset*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
