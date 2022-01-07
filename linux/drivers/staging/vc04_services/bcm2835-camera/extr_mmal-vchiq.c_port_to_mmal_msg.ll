; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_port_to_mmal_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_port_to_mmal_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_port = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mmal_port = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vchiq_mmal_port*, %struct.mmal_port*)* @port_to_mmal_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_to_mmal_msg(%struct.vchiq_mmal_port* %0, %struct.mmal_port* %1) #0 {
  %3 = alloca %struct.vchiq_mmal_port*, align 8
  %4 = alloca %struct.mmal_port*, align 8
  store %struct.vchiq_mmal_port* %0, %struct.vchiq_mmal_port** %3, align 8
  store %struct.mmal_port* %1, %struct.mmal_port** %4, align 8
  %5 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %6 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %9 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %8, i32 0, i32 11
  store i32 %7, i32* %9, align 4
  %10 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %11 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %14 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %16 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %18 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %21 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %23 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %27 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %29 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %33 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %35 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %39 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %41 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %45 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %47 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %51 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %53 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %57 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %59 = getelementptr inbounds %struct.vchiq_mmal_port, %struct.vchiq_mmal_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %63 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.vchiq_mmal_port*, %struct.vchiq_mmal_port** %3, align 8
  %65 = ptrtoint %struct.vchiq_mmal_port* %64 to i64
  %66 = load %struct.mmal_port*, %struct.mmal_port** %4, align 8
  %67 = getelementptr inbounds %struct.mmal_port, %struct.mmal_port* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
