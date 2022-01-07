; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_wepdefaultkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_wepdefaultkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibrec = type { i32 }
%struct.wlandevice = type { i32 }
%struct.hfa384x = type { i32 }
%struct.p80211msg_dot11req_mibset = type { i32 }
%struct.p80211pstrd = type { i32, i32 }

@MIB_TMP_MAXLEN = common dso_local global i32 0, align 4
@HFA384x_RID_CNFWEP128DEFAULTKEY_LEN = common dso_local global i32 0, align 4
@HFA384x_RID_CNFWEPDEFAULTKEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mibrec*, i32, %struct.wlandevice*, %struct.hfa384x*, %struct.p80211msg_dot11req_mibset*, i8*)* @prism2mib_wepdefaultkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2mib_wepdefaultkey(%struct.mibrec* %0, i32 %1, %struct.wlandevice* %2, %struct.hfa384x* %3, %struct.p80211msg_dot11req_mibset* %4, i8* %5) #0 {
  %7 = alloca %struct.mibrec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wlandevice*, align 8
  %10 = alloca %struct.hfa384x*, align 8
  %11 = alloca %struct.p80211msg_dot11req_mibset*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.p80211pstrd*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.mibrec* %0, %struct.mibrec** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.wlandevice* %2, %struct.wlandevice** %9, align 8
  store %struct.hfa384x* %3, %struct.hfa384x** %10, align 8
  store %struct.p80211msg_dot11req_mibset* %4, %struct.p80211msg_dot11req_mibset** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to %struct.p80211pstrd*
  store %struct.p80211pstrd* %19, %struct.p80211pstrd** %14, align 8
  %20 = load i32, i32* @MIB_TMP_MAXLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %53

27:                                               ; preds = %6
  %28 = load %struct.p80211pstrd*, %struct.p80211pstrd** %14, align 8
  %29 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 5
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @HFA384x_RID_CNFWEP128DEFAULTKEY_LEN, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @HFA384x_RID_CNFWEPDEFAULTKEY_LEN, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @memset(i32* %23, i32 0, i32 %38)
  %40 = load %struct.p80211pstrd*, %struct.p80211pstrd** %14, align 8
  %41 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.p80211pstrd*, %struct.p80211pstrd** %14, align 8
  %44 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i32* %23, i32 %42, i32 %45)
  %47 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  %48 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %49 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @hfa384x_drvr_setconfig(%struct.hfa384x* %47, i32 %50, i32* %23, i32 %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %36, %26
  %54 = load i32, i32* %13, align 4
  %55 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @hfa384x_drvr_setconfig(%struct.hfa384x*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
