; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_associate_step2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_associate_step2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, %struct.TYPE_2__, i32, %struct.rtllib_network }
%struct.TYPE_2__ = type { i32 }
%struct.rtllib_network = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Sending association request\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*)* @rtllib_associate_step2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_associate_step2(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rtllib_network*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %5 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %6 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %5, i32 0, i32 3
  store %struct.rtllib_network* %6, %struct.rtllib_network** %4, align 8
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 0
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %11 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @netdev_dbg(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %15 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %21 = call %struct.sk_buff* @rtllib_association_req(%struct.rtllib_network* %19, %struct.rtllib_device* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %26 = call i32 @rtllib_associate_abort(%struct.rtllib_device* %25)
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %30 = call i32 @softmac_mgmt_xmit(%struct.sk_buff* %28, %struct.rtllib_device* %29)
  %31 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %32 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %31, i32 0, i32 0
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i32, i32* @HZ, align 4
  %35 = sdiv i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i32 @mod_timer(i32* %32, i64 %37)
  br label %39

39:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local %struct.sk_buff* @rtllib_association_req(%struct.rtllib_network*, %struct.rtllib_device*) #1

declare dso_local i32 @rtllib_associate_abort(%struct.rtllib_device*) #1

declare dso_local i32 @softmac_mgmt_xmit(%struct.sk_buff*, %struct.rtllib_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
