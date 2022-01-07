; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211req.c_p80211req_handlemsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211req.c_p80211req_handlemsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32 }
%struct.p80211msg = type { i32 }
%struct.p80211msg_lnxreq_hostwep = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.p80211msg_dot11req_mibget = type { i32 }

@HOSTWEP_DECRYPT = common dso_local global i32 0, align 4
@HOSTWEP_ENCRYPT = common dso_local global i32 0, align 4
@P80211ENUM_truth_true = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlandevice*, %struct.p80211msg*)* @p80211req_handlemsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p80211req_handlemsg(%struct.wlandevice* %0, %struct.p80211msg* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.p80211msg*, align 8
  %5 = alloca %struct.p80211msg_lnxreq_hostwep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p80211msg_dot11req_mibget*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.p80211msg* %1, %struct.p80211msg** %4, align 8
  %8 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %9 = getelementptr inbounds %struct.p80211msg, %struct.p80211msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %60 [
    i32 128, label %11
    i32 130, label %48
    i32 129, label %48
  ]

11:                                               ; preds = %2
  %12 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %13 = bitcast %struct.p80211msg* %12 to %struct.p80211msg_lnxreq_hostwep*
  store %struct.p80211msg_lnxreq_hostwep* %13, %struct.p80211msg_lnxreq_hostwep** %5, align 8
  %14 = load i32, i32* @HOSTWEP_DECRYPT, align 4
  %15 = load i32, i32* @HOSTWEP_ENCRYPT, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %19 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.p80211msg_lnxreq_hostwep*, %struct.p80211msg_lnxreq_hostwep** %5, align 8
  %23 = getelementptr inbounds %struct.p80211msg_lnxreq_hostwep, %struct.p80211msg_lnxreq_hostwep* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @P80211ENUM_truth_true, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %11
  %29 = load i32, i32* @HOSTWEP_DECRYPT, align 4
  %30 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %31 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %11
  %35 = load %struct.p80211msg_lnxreq_hostwep*, %struct.p80211msg_lnxreq_hostwep** %5, align 8
  %36 = getelementptr inbounds %struct.p80211msg_lnxreq_hostwep, %struct.p80211msg_lnxreq_hostwep* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @P80211ENUM_truth_true, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @HOSTWEP_ENCRYPT, align 4
  %43 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %44 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %34
  br label %60

48:                                               ; preds = %2, %2
  %49 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %50 = getelementptr inbounds %struct.p80211msg, %struct.p80211msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 130
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %55 = bitcast %struct.p80211msg* %54 to %struct.p80211msg_dot11req_mibget*
  store %struct.p80211msg_dot11req_mibget* %55, %struct.p80211msg_dot11req_mibget** %7, align 8
  %56 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %57 = load %struct.p80211msg_dot11req_mibget*, %struct.p80211msg_dot11req_mibget** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @p80211req_mibset_mibget(%struct.wlandevice* %56, %struct.p80211msg_dot11req_mibget* %57, i32 %58)
  br label %60

60:                                               ; preds = %2, %48, %47
  ret void
}

declare dso_local i32 @p80211req_mibset_mibget(%struct.wlandevice*, %struct.p80211msg_dot11req_mibget*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
