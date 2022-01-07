; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_visornic_set_multi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_visornic_set_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.uiscmdrsp = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.net_device* }
%struct.visornic_devdata = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@SIZEOF_CMDRSP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CMD_NET_TYPE = common dso_local global i32 0, align 4
@NET_RCV_PROMISC = common dso_local global i32 0, align 4
@IOCHAN_TO_IOPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @visornic_set_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visornic_set_multi(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.uiscmdrsp*, align 8
  %4 = alloca %struct.visornic_devdata*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.visornic_devdata* @netdev_priv(%struct.net_device* %6)
  store %struct.visornic_devdata* %7, %struct.visornic_devdata** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.visornic_devdata*, %struct.visornic_devdata** %4, align 8
  %9 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_PROMISC, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.visornic_devdata*, %struct.visornic_devdata** %4, align 8
  %23 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_PROMISC, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %72

29:                                               ; preds = %16
  %30 = load i32, i32* @SIZEOF_CMDRSP, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.uiscmdrsp* @kmalloc(i32 %30, i32 %31)
  store %struct.uiscmdrsp* %32, %struct.uiscmdrsp** %3, align 8
  %33 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %34 = icmp ne %struct.uiscmdrsp* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %78

36:                                               ; preds = %29
  %37 = load i32, i32* @CMD_NET_TYPE, align 4
  %38 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %39 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @NET_RCV_PROMISC, align 4
  %41 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %42 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %46 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store %struct.net_device* %44, %struct.net_device** %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_PROMISC, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %55 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.visornic_devdata*, %struct.visornic_devdata** %4, align 8
  %59 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IOCHAN_TO_IOPART, align 4
  %64 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %65 = call i32 @visorchannel_signalinsert(i32 %62, i32 %63, %struct.uiscmdrsp* %64)
  store i32 %65, i32* %5, align 4
  %66 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %67 = call i32 @kfree(%struct.uiscmdrsp* %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %36
  br label %78

71:                                               ; preds = %36
  br label %72

72:                                               ; preds = %71, %28
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.visornic_devdata*, %struct.visornic_devdata** %4, align 8
  %77 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %70, %35, %15
  ret void
}

declare dso_local %struct.visornic_devdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.uiscmdrsp* @kmalloc(i32, i32) #1

declare dso_local i32 @visorchannel_signalinsert(i32, i32, %struct.uiscmdrsp*) #1

declare dso_local i32 @kfree(%struct.uiscmdrsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
