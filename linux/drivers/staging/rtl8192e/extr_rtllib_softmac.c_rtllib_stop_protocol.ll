; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_stop_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_stop_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i64, i64, i64, i32*, i64, i32*, i32, i32, i32, i32, i32, i32 (i32)*, i64 }

@RTLLIB_ASSOCIATING_AUTHENTICATED = common dso_local global i64 0, align 8
@RTLLIB_NOLINK = common dso_local global i64 0, align 8
@RTLLIB_LINKED = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_stop_protocol(%struct.rtllib_device* %0, i64 %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i64, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %6 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %5, i32 0, i32 13
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %101

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %15 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %14, i32 0, i32 13
  store i64 0, i64* %15, align 8
  %16 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %17 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %19 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %18, i32 0, i32 12
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = icmp ne i32 (i32)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %24 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %23, i32 0, i32 12
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %27 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28)
  br label %30

30:                                               ; preds = %22, %13
  br label %31

31:                                               ; preds = %30, %10
  %32 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %33 = call i32 @rtllib_stop_send_beacons(%struct.rtllib_device* %32)
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %35 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %34, i32 0, i32 10
  %36 = call i32 @del_timer_sync(i32* %35)
  %37 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %38 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %37, i32 0, i32 9
  %39 = call i32 @cancel_delayed_work_sync(i32* %38)
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %41 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %40, i32 0, i32 8
  %42 = call i32 @cancel_delayed_work_sync(i32* %41)
  %43 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %44 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %43, i32 0, i32 7
  %45 = call i32 @cancel_delayed_work_sync(i32* %44)
  %46 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %47 = call i32 @rtllib_stop_scan(%struct.rtllib_device* %46)
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RTLLIB_ASSOCIATING_AUTHENTICATED, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load i64, i64* @RTLLIB_NOLINK, align 8
  %55 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %56 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %31
  %58 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %59 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RTLLIB_LINKED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %65 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IW_MODE_INFRA, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %71 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %72 = call i32 @SendDisassociation(%struct.rtllib_device* %70, i32 1, i32 %71)
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %75 = call i32 @rtllib_disassociate(%struct.rtllib_device* %74)
  br label %76

76:                                               ; preds = %73, %57
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %81 = call i32 @RemoveAllTS(%struct.rtllib_device* %80)
  %82 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %83 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %86 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @kfree(i32* %87)
  %89 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %90 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %89, i32 0, i32 6
  store i32* null, i32** %90, align 8
  %91 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %92 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %94 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %98 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %97, i32 0, i32 4
  store i32* null, i32** %98, align 8
  %99 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %100 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %84, %9
  ret void
}

declare dso_local i32 @rtllib_stop_send_beacons(%struct.rtllib_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rtllib_stop_scan(%struct.rtllib_device*) #1

declare dso_local i32 @SendDisassociation(%struct.rtllib_device*, i32, i32) #1

declare dso_local i32 @rtllib_disassociate(%struct.rtllib_device*) #1

declare dso_local i32 @RemoveAllTS(%struct.rtllib_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
