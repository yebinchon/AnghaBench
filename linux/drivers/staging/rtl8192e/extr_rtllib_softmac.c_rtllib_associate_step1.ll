; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_associate_step1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_associate_step1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, %struct.rtllib_network }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.rtllib_network = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Stopping scan\0A\00", align 1
@RTLLIB_ASSOCIATING_AUTHENTICATING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sending authentication request\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, i32*)* @rtllib_associate_step1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_associate_step1(%struct.rtllib_device* %0, i32* %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rtllib_network*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 4
  store %struct.rtllib_network* %8, %struct.rtllib_network** %5, align 8
  %9 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %10 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netdev_dbg(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %14 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %19 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call %struct.sk_buff* @rtllib_authentication_req(%struct.rtllib_network* %18, %struct.rtllib_device* %19, i32 0, i32* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %26 = call i32 @rtllib_associate_abort(%struct.rtllib_device* %25)
  br label %55

27:                                               ; preds = %2
  %28 = load i32, i32* @RTLLIB_ASSOCIATING_AUTHENTICATING, align 4
  %29 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %30 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %32 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netdev_dbg(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %37 = call i32 @softmac_mgmt_xmit(%struct.sk_buff* %35, %struct.rtllib_device* %36)
  %38 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %39 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %38, i32 0, i32 0
  %40 = call i32 @timer_pending(%struct.TYPE_5__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %27
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i32, i32* @HZ, align 4
  %45 = sdiv i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %52 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %51, i32 0, i32 0
  %53 = call i32 @add_timer(%struct.TYPE_5__* %52)
  br label %54

54:                                               ; preds = %42, %27
  br label %55

55:                                               ; preds = %54, %24
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local %struct.sk_buff* @rtllib_authentication_req(%struct.rtllib_network*, %struct.rtllib_device*, i32, i32*) #1

declare dso_local i32 @rtllib_associate_abort(%struct.rtllib_device*) #1

declare dso_local i32 @softmac_mgmt_xmit(%struct.sk_buff*, %struct.rtllib_device*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
