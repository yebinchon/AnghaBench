; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.ntb_dev = type { i32 }
%struct.ntb_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ntb_client.0*, %struct.ntb_dev*)* }
%struct.ntb_client.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ntb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ntb_dev*, align 8
  %4 = alloca %struct.ntb_client*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.ntb_dev* @dev_ntb(%struct.device* %10)
  store %struct.ntb_dev* %11, %struct.ntb_dev** %3, align 8
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.ntb_client* @drv_ntb_client(i64 %14)
  store %struct.ntb_client* %15, %struct.ntb_client** %4, align 8
  %16 = load %struct.ntb_client*, %struct.ntb_client** %4, align 8
  %17 = getelementptr inbounds %struct.ntb_client, %struct.ntb_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ntb_client.0*, %struct.ntb_dev*)*, i32 (%struct.ntb_client.0*, %struct.ntb_dev*)** %18, align 8
  %20 = load %struct.ntb_client*, %struct.ntb_client** %4, align 8
  %21 = bitcast %struct.ntb_client* %20 to %struct.ntb_client.0*
  %22 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %23 = call i32 %19(%struct.ntb_client.0* %21, %struct.ntb_dev* %22)
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = call i32 @put_device(%struct.device* %24)
  br label %26

26:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local %struct.ntb_dev* @dev_ntb(%struct.device*) #1

declare dso_local %struct.ntb_client* @drv_ntb_client(i64) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
