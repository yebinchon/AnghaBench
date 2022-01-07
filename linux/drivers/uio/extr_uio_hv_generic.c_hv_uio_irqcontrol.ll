; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_hv_generic.c_hv_uio_irqcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_hv_generic.c_hv_uio_irqcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { %struct.hv_uio_private_data* }
%struct.hv_uio_private_data = type { %struct.hv_device* }
%struct.hv_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_info*, i32)* @hv_uio_irqcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_uio_irqcontrol(%struct.uio_info* %0, i32 %1) #0 {
  %3 = alloca %struct.uio_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_uio_private_data*, align 8
  %6 = alloca %struct.hv_device*, align 8
  store %struct.uio_info* %0, %struct.uio_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %8 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %7, i32 0, i32 0
  %9 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %8, align 8
  store %struct.hv_uio_private_data* %9, %struct.hv_uio_private_data** %5, align 8
  %10 = load %struct.hv_uio_private_data*, %struct.hv_uio_private_data** %5, align 8
  %11 = getelementptr inbounds %struct.hv_uio_private_data, %struct.hv_uio_private_data* %10, i32 0, i32 0
  %12 = load %struct.hv_device*, %struct.hv_device** %11, align 8
  store %struct.hv_device* %12, %struct.hv_device** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.hv_device*, %struct.hv_device** %6, align 8
  %18 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %16, i32* %23, align 4
  %24 = call i32 (...) @virt_mb()
  ret i32 0
}

declare dso_local i32 @virt_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
