; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_swap_with_next_hscb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_swap_with_next_hscb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.TYPE_2__, %struct.map_node*, %struct.hardware_scb* }
%struct.TYPE_2__ = type { %struct.scb** }
%struct.map_node = type { i32 }
%struct.hardware_scb = type { i32, i32 }
%struct.scb = type { %struct.map_node*, %struct.hardware_scb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.scb*)* @ahd_swap_with_next_hscb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_swap_with_next_hscb(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.hardware_scb*, align 8
  %6 = alloca %struct.map_node*, align 8
  %7 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %8 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %8, i32 0, i32 2
  %10 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  store %struct.hardware_scb* %10, %struct.hardware_scb** %5, align 8
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %11, i32 0, i32 1
  %13 = load %struct.map_node*, %struct.map_node** %12, align 8
  store %struct.map_node* %13, %struct.map_node** %6, align 8
  %14 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %15 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %18 = load %struct.scb*, %struct.scb** %4, align 8
  %19 = getelementptr inbounds %struct.scb, %struct.scb* %18, i32 0, i32 1
  %20 = load %struct.hardware_scb*, %struct.hardware_scb** %19, align 8
  %21 = call i32 @memcpy(%struct.hardware_scb* %17, %struct.hardware_scb* %20, i32 8)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %24 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.scb*, %struct.scb** %4, align 8
  %26 = getelementptr inbounds %struct.scb, %struct.scb* %25, i32 0, i32 1
  %27 = load %struct.hardware_scb*, %struct.hardware_scb** %26, align 8
  %28 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %31 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.scb*, %struct.scb** %4, align 8
  %33 = getelementptr inbounds %struct.scb, %struct.scb* %32, i32 0, i32 1
  %34 = load %struct.hardware_scb*, %struct.hardware_scb** %33, align 8
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %35, i32 0, i32 2
  store %struct.hardware_scb* %34, %struct.hardware_scb** %36, align 8
  %37 = load %struct.scb*, %struct.scb** %4, align 8
  %38 = getelementptr inbounds %struct.scb, %struct.scb* %37, i32 0, i32 0
  %39 = load %struct.map_node*, %struct.map_node** %38, align 8
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %40, i32 0, i32 1
  store %struct.map_node* %39, %struct.map_node** %41, align 8
  %42 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %43 = load %struct.scb*, %struct.scb** %4, align 8
  %44 = getelementptr inbounds %struct.scb, %struct.scb* %43, i32 0, i32 1
  store %struct.hardware_scb* %42, %struct.hardware_scb** %44, align 8
  %45 = load %struct.map_node*, %struct.map_node** %6, align 8
  %46 = load %struct.scb*, %struct.scb** %4, align 8
  %47 = getelementptr inbounds %struct.scb, %struct.scb* %46, i32 0, i32 0
  store %struct.map_node* %45, %struct.map_node** %47, align 8
  %48 = load %struct.scb*, %struct.scb** %4, align 8
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.scb**, %struct.scb*** %51, align 8
  %53 = load %struct.scb*, %struct.scb** %4, align 8
  %54 = call i64 @SCB_GET_TAG(%struct.scb* %53)
  %55 = getelementptr inbounds %struct.scb*, %struct.scb** %52, i64 %54
  store %struct.scb* %48, %struct.scb** %55, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.hardware_scb*, %struct.hardware_scb*, i32) #1

declare dso_local i64 @SCB_GET_TAG(%struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
