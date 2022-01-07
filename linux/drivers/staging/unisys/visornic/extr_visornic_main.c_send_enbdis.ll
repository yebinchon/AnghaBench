; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_send_enbdis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_send_enbdis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.visornic_devdata = type { %struct.TYPE_7__, %struct.TYPE_10__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }

@NET_RCV_ENBDIS = common dso_local global i32 0, align 4
@CMD_NET_TYPE = common dso_local global i32 0, align 4
@IOCHAN_TO_IOPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.visornic_devdata*)* @send_enbdis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_enbdis(%struct.net_device* %0, i32 %1, %struct.visornic_devdata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.visornic_devdata*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.visornic_devdata* %2, %struct.visornic_devdata** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.visornic_devdata*, %struct.visornic_devdata** %7, align 8
  %11 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32 %9, i32* %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load %struct.visornic_devdata*, %struct.visornic_devdata** %7, align 8
  %18 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store %struct.net_device* %16, %struct.net_device** %22, align 8
  %23 = load i32, i32* @NET_RCV_ENBDIS, align 4
  %24 = load %struct.visornic_devdata*, %struct.visornic_devdata** %7, align 8
  %25 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 8
  %29 = load i32, i32* @CMD_NET_TYPE, align 4
  %30 = load %struct.visornic_devdata*, %struct.visornic_devdata** %7, align 8
  %31 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load %struct.visornic_devdata*, %struct.visornic_devdata** %7, align 8
  %35 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IOCHAN_TO_IOPART, align 4
  %40 = load %struct.visornic_devdata*, %struct.visornic_devdata** %7, align 8
  %41 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = call i32 @visorchannel_signalinsert(i32 %38, i32 %39, %struct.TYPE_10__* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %54

48:                                               ; preds = %3
  %49 = load %struct.visornic_devdata*, %struct.visornic_devdata** %7, align 8
  %50 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %46
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @visorchannel_signalinsert(i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
