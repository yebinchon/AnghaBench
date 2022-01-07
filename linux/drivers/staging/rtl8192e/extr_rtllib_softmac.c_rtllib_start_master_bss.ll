; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_start_master_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_start_master_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, %struct.TYPE_7__*, i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)*, i32, %struct.TYPE_6__, i32 (%struct.TYPE_7__*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@RTLLIB_DEFAULT_TX_ESSID = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@RTLLIB_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*)* @rtllib_start_master_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_start_master_bss(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %3 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %4 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %6 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %12 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RTLLIB_DEFAULT_TX_ESSID, align 4
  %16 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %17 = call i32 @strncpy(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @RTLLIB_DEFAULT_TX_ESSID, align 4
  %19 = call i64 @strlen(i32 %18)
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %24 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %10, %1
  %26 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %27 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %31 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ether_addr_copy(i32 %29, i32 %34)
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %37 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %36, i32 0, i32 7
  %38 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %37, align 8
  %39 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %40 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %43 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %38(%struct.TYPE_7__* %41, i32 %45)
  %47 = load i32, i32* @RTLLIB_LINKED, align 4
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %51 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %50, i32 0, i32 4
  %52 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %51, align 8
  %53 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %54 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i32 %52(%struct.TYPE_7__* %55)
  %57 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %58 = call i32 @notify_wx_assoc_event(%struct.rtllib_device* %57)
  %59 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %60 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %59, i32 0, i32 3
  %61 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %60, align 8
  %62 = icmp ne i32 (%struct.TYPE_7__*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %25
  %64 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %65 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %64, i32 0, i32 3
  %66 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %65, align 8
  %67 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %68 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = call i32 %66(%struct.TYPE_7__* %69)
  br label %71

71:                                               ; preds = %63, %25
  %72 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %73 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = call i32 @netif_carrier_on(%struct.TYPE_7__* %74)
  ret void
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @notify_wx_assoc_event(%struct.rtllib_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
