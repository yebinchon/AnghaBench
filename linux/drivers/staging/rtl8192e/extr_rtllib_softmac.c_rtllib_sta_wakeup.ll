; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_sta_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_sta_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32 (i32)* }
%struct.TYPE_2__ = type { i32 }

@LPS_IS_WAKE = common dso_local global i64 0, align 8
@HT_IOT_ACT_NULL_DATA_POWER_SAVING = common dso_local global i32 0, align 4
@LPS_IS_SLEEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, i16)* @rtllib_sta_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_sta_wakeup(%struct.rtllib_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i16, align 2
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %6 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LPS_IS_WAKE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load i16, i16* %4, align 2
  %12 = icmp ne i16 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %15 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HT_IOT_ACT_NULL_DATA_POWER_SAVING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %24 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %26 = call i32 @rtllib_sta_ps_send_null_frame(%struct.rtllib_device* %25, i32 0)
  br label %32

27:                                               ; preds = %13
  %28 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %29 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %31 = call i32 @rtllib_sta_ps_send_pspoll_frame(%struct.rtllib_device* %30)
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32, %10
  br label %79

34:                                               ; preds = %2
  %35 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %36 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LPS_IS_SLEEP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 5
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %45 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %43(i32 %46)
  br label %48

48:                                               ; preds = %40, %34
  %49 = load i16, i16* %4, align 2
  %50 = icmp ne i16 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %53 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HT_IOT_ACT_NULL_DATA_POWER_SAVING, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %62 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %64 = call i32 @rtllib_sta_ps_send_null_frame(%struct.rtllib_device* %63, i32 0)
  br label %72

65:                                               ; preds = %51
  %66 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %67 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %69 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %68, i32 0, i32 2
  store i32 1, i32* %69, align 4
  %70 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %71 = call i32 @rtllib_sta_ps_send_pspoll_frame(%struct.rtllib_device* %70)
  br label %72

72:                                               ; preds = %65, %60
  br label %79

73:                                               ; preds = %48
  %74 = load i64, i64* @LPS_IS_WAKE, align 8
  %75 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %76 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %78 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %77, i32 0, i32 2
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %33, %73, %72
  ret void
}

declare dso_local i32 @rtllib_sta_ps_send_null_frame(%struct.rtllib_device*, i32) #1

declare dso_local i32 @rtllib_sta_ps_send_pspoll_frame(%struct.rtllib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
