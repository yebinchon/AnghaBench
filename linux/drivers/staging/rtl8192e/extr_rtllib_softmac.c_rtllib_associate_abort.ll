; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_associate_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_associate_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RTLLIB_ASSOCIATING_AUTHENTICATING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Authentication failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Association failed\0A\00", align 1
@RTLLIB_ASSOCIATING_RETRY = common dso_local global i64 0, align 8
@RTLLIB_SOFTMAC_ASSOC_RETRY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*)* @rtllib_associate_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_associate_abort(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca i64, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %4 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %5 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %9 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %13 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RTLLIB_ASSOCIATING_AUTHENTICATING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %19 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @netdev_dbg(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %23 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %37

27:                                               ; preds = %1
  %28 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %29 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @netdev_dbg(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %33 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %27, %17
  %38 = load i64, i64* @RTLLIB_ASSOCIATING_RETRY, align 8
  %39 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %40 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 2
  %43 = load i32, i32* @RTLLIB_SOFTMAC_ASSOC_RETRY_TIME, align 4
  %44 = call i32 @schedule_delayed_work(i32* %42, i32 %43)
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 1
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
