; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_privacyinvoked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_privacyinvoked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibrec = type { i32 }
%struct.wlandevice = type { i32 }
%struct.hfa384x = type { i32 }
%struct.p80211msg_dot11req_mibset = type { i32 }

@HOSTWEP_DECRYPT = common dso_local global i32 0, align 4
@HFA384x_WEPFLAGS_DISABLE_RXCRYPT = common dso_local global i32 0, align 4
@HOSTWEP_ENCRYPT = common dso_local global i32 0, align 4
@HFA384x_WEPFLAGS_DISABLE_TXCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mibrec*, i32, %struct.wlandevice*, %struct.hfa384x*, %struct.p80211msg_dot11req_mibset*, i8*)* @prism2mib_privacyinvoked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2mib_privacyinvoked(%struct.mibrec* %0, i32 %1, %struct.wlandevice* %2, %struct.hfa384x* %3, %struct.p80211msg_dot11req_mibset* %4, i8* %5) #0 {
  %7 = alloca %struct.mibrec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wlandevice*, align 8
  %10 = alloca %struct.hfa384x*, align 8
  %11 = alloca %struct.p80211msg_dot11req_mibset*, align 8
  %12 = alloca i8*, align 8
  store %struct.mibrec* %0, %struct.mibrec** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.wlandevice* %2, %struct.wlandevice** %9, align 8
  store %struct.hfa384x* %3, %struct.hfa384x** %10, align 8
  store %struct.p80211msg_dot11req_mibset* %4, %struct.p80211msg_dot11req_mibset** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %struct.wlandevice*, %struct.wlandevice** %9, align 8
  %14 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HOSTWEP_DECRYPT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %6
  %20 = load %struct.wlandevice*, %struct.wlandevice** %9, align 8
  %21 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HOSTWEP_DECRYPT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @HFA384x_WEPFLAGS_DISABLE_RXCRYPT, align 4
  %28 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %29 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.wlandevice*, %struct.wlandevice** %9, align 8
  %34 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HOSTWEP_ENCRYPT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @HFA384x_WEPFLAGS_DISABLE_TXCRYPT, align 4
  %41 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %42 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %32
  br label %46

46:                                               ; preds = %45, %6
  %47 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.wlandevice*, %struct.wlandevice** %9, align 8
  %50 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  %51 = load %struct.p80211msg_dot11req_mibset*, %struct.p80211msg_dot11req_mibset** %11, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @prism2mib_flag(%struct.mibrec* %47, i32 %48, %struct.wlandevice* %49, %struct.hfa384x* %50, %struct.p80211msg_dot11req_mibset* %51, i8* %52)
  ret i32 %53
}

declare dso_local i32 @prism2mib_flag(%struct.mibrec*, i32, %struct.wlandevice*, %struct.hfa384x*, %struct.p80211msg_dot11req_mibset*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
