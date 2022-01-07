; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_MgntDisconnectIBSS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_MgntDisconnectIBSS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32 (i32, i32, i32*)*, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32* }

@RTLLIB_NOLINK = common dso_local global i32 0, align 4
@RT_OP_MODE_NO_LINK = common dso_local global i8* null, align 8
@HW_VAR_BSSID = common dso_local global i32 0, align 4
@HW_VAR_MEDIA_STATUS = common dso_local global i32 0, align 4
@HW_VAR_CECHK_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*)* @rtllib_MgntDisconnectIBSS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_MgntDisconnectIBSS(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @RTLLIB_NOLINK, align 4
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %14 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 85, i32* %19, align 4
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %9

23:                                               ; preds = %9
  %24 = load i8*, i8** @RT_OP_MODE_NO_LINK, align 8
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %26 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %28 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %27, i32 0, i32 1
  %29 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %28, align 8
  %30 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %31 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HW_VAR_BSSID, align 4
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %35 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 %29(i32 %32, i32 %33, i32* %37)
  %39 = load i8*, i8** @RT_OP_MODE_NO_LINK, align 8
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 1
  %43 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %42, align 8
  %44 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %45 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @HW_VAR_MEDIA_STATUS, align 4
  %48 = call i32 %43(i32 %46, i32 %47, i32* %3)
  %49 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %50 = call i32 @rtllib_stop_send_beacons(%struct.rtllib_device* %49)
  store i32 0, i32* %5, align 4
  %51 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %52 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %51, i32 0, i32 1
  %53 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %52, align 8
  %54 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %55 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HW_VAR_CECHK_BSSID, align 4
  %58 = call i32 %53(i32 %56, i32 %57, i32* %5)
  %59 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %60 = call i32 @notify_wx_assoc_event(%struct.rtllib_device* %59)
  ret void
}

declare dso_local i32 @rtllib_stop_send_beacons(%struct.rtllib_device*) #1

declare dso_local i32 @notify_wx_assoc_event(%struct.rtllib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
