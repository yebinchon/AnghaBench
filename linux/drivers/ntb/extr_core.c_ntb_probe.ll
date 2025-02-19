; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ntb_dev = type { i32 }
%struct.ntb_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ntb_client.0*, %struct.ntb_dev*)* }
%struct.ntb_client.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ntb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ntb_dev*, align 8
  %4 = alloca %struct.ntb_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call i32 @get_device(%struct.device* %6)
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.ntb_dev* @dev_ntb(%struct.device* %8)
  store %struct.ntb_dev* %9, %struct.ntb_dev** %3, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ntb_client* @drv_ntb_client(i32 %12)
  store %struct.ntb_client* %13, %struct.ntb_client** %4, align 8
  %14 = load %struct.ntb_client*, %struct.ntb_client** %4, align 8
  %15 = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ntb_client.0*, %struct.ntb_dev*)*, i32 (%struct.ntb_client.0*, %struct.ntb_dev*)** %16, align 8
  %18 = load %struct.ntb_client*, %struct.ntb_client** %4, align 8
  %19 = bitcast %struct.ntb_client* %18 to %struct.ntb_client.0*
  %20 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %21 = call i32 %17(%struct.ntb_client.0* %19, %struct.ntb_dev* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @put_device(%struct.device* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local %struct.ntb_dev* @dev_ntb(%struct.device*) #1

declare dso_local %struct.ntb_client* @drv_ntb_client(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
