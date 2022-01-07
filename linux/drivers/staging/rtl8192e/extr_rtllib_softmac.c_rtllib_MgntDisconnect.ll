; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_MgntDisconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_MgntDisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i64, i64, i32, i32 (i32)* }

@RTLLIB_PS_DISABLED = common dso_local global i64 0, align 8
@RTLLIB_LINKED = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_MgntDisconnect(%struct.rtllib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %6 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RTLLIB_PS_DISABLED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %12 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %11, i32 0, i32 4
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %15 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %13(i32 %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %20 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RTLLIB_LINKED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %26 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IW_MODE_ADHOC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %32 = call i32 @rtllib_MgntDisconnectIBSS(%struct.rtllib_device* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %35 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IW_MODE_INFRA, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rtllib_MgntDisconnectAP(%struct.rtllib_device* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %18
  ret i32 1
}

declare dso_local i32 @rtllib_MgntDisconnectIBSS(%struct.rtllib_device*) #1

declare dso_local i32 @rtllib_MgntDisconnectAP(%struct.rtllib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
