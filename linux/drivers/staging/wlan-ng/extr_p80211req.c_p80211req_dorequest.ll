; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211req.c_p80211req_dorequest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211req.c_p80211req_dorequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i64, i32, i32 (%struct.wlandevice*, %struct.p80211msg*)*, i32, i32 }
%struct.p80211msg = type opaque
%struct.p80211msg.0 = type { i64 }

@WLAN_MSD_HWPRESENT = common dso_local global i64 0, align 8
@DIDMSG_LNXREQ_IFSTATE = common dso_local global i64 0, align 8
@WLAN_MSD_RUNNING = common dso_local global i64 0, align 8
@WLAN_MSD_FWLOAD = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@DIDMSG_DOT11REQ_MIBGET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"%s: only dot11req_mibget allowed for non-root.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p80211req_dorequest(%struct.wlandevice* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlandevice*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.p80211msg.0*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = bitcast i32* %7 to %struct.p80211msg.0*
  store %struct.p80211msg.0* %8, %struct.p80211msg.0** %6, align 8
  %9 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %10 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WLAN_MSD_HWPRESENT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.p80211msg.0*, %struct.p80211msg.0** %6, align 8
  %16 = getelementptr inbounds %struct.p80211msg.0, %struct.p80211msg.0* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DIDMSG_LNXREQ_IFSTATE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %22 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WLAN_MSD_RUNNING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %28 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WLAN_MSD_FWLOAD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %83

35:                                               ; preds = %26, %20, %14
  %36 = load i32, i32* @CAP_NET_ADMIN, align 4
  %37 = call i32 @capable(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = load %struct.p80211msg.0*, %struct.p80211msg.0** %6, align 8
  %41 = getelementptr inbounds %struct.p80211msg.0, %struct.p80211msg.0* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DIDMSG_DOT11REQ_MIBGET, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %47 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %50 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netdev_err(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %83

55:                                               ; preds = %39, %35
  %56 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %57 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %56, i32 0, i32 1
  %58 = call i64 @test_and_set_bit(i32 1, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %83

63:                                               ; preds = %55
  %64 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %65 = load %struct.p80211msg.0*, %struct.p80211msg.0** %6, align 8
  %66 = call i32 @p80211req_handlemsg(%struct.wlandevice* %64, %struct.p80211msg.0* %65)
  %67 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %68 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %67, i32 0, i32 2
  %69 = load i32 (%struct.wlandevice*, %struct.p80211msg*)*, i32 (%struct.wlandevice*, %struct.p80211msg*)** %68, align 8
  %70 = icmp ne i32 (%struct.wlandevice*, %struct.p80211msg*)* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %73 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %72, i32 0, i32 2
  %74 = load i32 (%struct.wlandevice*, %struct.p80211msg*)*, i32 (%struct.wlandevice*, %struct.p80211msg*)** %73, align 8
  %75 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %76 = load %struct.p80211msg.0*, %struct.p80211msg.0** %6, align 8
  %77 = bitcast %struct.p80211msg.0* %76 to %struct.p80211msg*
  %78 = call i32 %74(%struct.wlandevice* %75, %struct.p80211msg* %77)
  br label %79

79:                                               ; preds = %71, %63
  %80 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %81 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %80, i32 0, i32 1
  %82 = call i32 @clear_bit(i32 1, i32* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %60, %45, %32
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @p80211req_handlemsg(%struct.wlandevice*, %struct.p80211msg.0*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
