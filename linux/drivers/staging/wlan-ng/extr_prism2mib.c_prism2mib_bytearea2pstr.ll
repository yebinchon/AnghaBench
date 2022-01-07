; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_bytearea2pstr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_bytearea2pstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibrec = type { i32, i32 }
%struct.wlandevice = type { i32 }
%struct.hfa384x = type { i32 }
%struct.p80211msg_dot11req_mibset = type { i32 }
%struct.p80211pstrd = type { i32, i32 }

@MIB_TMP_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mibrec*, i32, %struct.wlandevice*, %struct.hfa384x*, %struct.p80211msg_dot11req_mibset*, i8*)* @prism2mib_bytearea2pstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2mib_bytearea2pstr(%struct.mibrec* %0, i32 %1, %struct.wlandevice* %2, %struct.hfa384x* %3, %struct.p80211msg_dot11req_mibset* %4, i8* %5) #0 {
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
  store %struct.mibrec* %0, %struct.mibrec** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.wlandevice* %2, %struct.wlandevice** %9, align 8
  store %struct.hfa384x* %3, %struct.hfa384x** %10, align 8
  store %struct.p80211msg_dot11req_mibset* %4, %struct.p80211msg_dot11req_mibset** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = bitcast i8* %17 to %struct.p80211pstrd*
  store %struct.p80211pstrd* %18, %struct.p80211pstrd** %14, align 8
  %19 = load i32, i32* @MIB_TMP_MAXLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %6
  %26 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  %27 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %28 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %31 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %26, i32 %29, i32* %22, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.p80211pstrd*, %struct.p80211pstrd** %14, align 8
  %35 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %36 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @prism2mgmt_bytearea2pstr(i32* %22, %struct.p80211pstrd* %34, i32 %37)
  br label %59

39:                                               ; preds = %6
  %40 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %41 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memset(i32* %22, i32 0, i32 %42)
  %44 = load %struct.p80211pstrd*, %struct.p80211pstrd** %14, align 8
  %45 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.p80211pstrd*, %struct.p80211pstrd** %14, align 8
  %48 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32* %22, i32 %46, i32 %49)
  %51 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  %52 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %53 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %56 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hfa384x_drvr_setconfig(%struct.hfa384x* %51, i32 %54, i32* %22, i32 %57)
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %39, %25
  %60 = load i32, i32* %13, align 4
  %61 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hfa384x_drvr_getconfig(%struct.hfa384x*, i32, i32*, i32) #2

declare dso_local i32 @prism2mgmt_bytearea2pstr(i32*, %struct.p80211pstrd*, i32) #2

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
