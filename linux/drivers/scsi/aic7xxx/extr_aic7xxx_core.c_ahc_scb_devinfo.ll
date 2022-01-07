; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_scb_devinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_scb_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32 }
%struct.scb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ROLE_INITIATOR = common dso_local global i32 0, align 4
@SCB_TARGET_SCB = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.scb*)* @ahc_scb_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_scb_devinfo(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, %struct.scb* %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca %struct.ahc_devinfo*, align 8
  %6 = alloca %struct.scb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %5, align 8
  store %struct.scb* %2, %struct.scb** %6, align 8
  %9 = load %struct.scb*, %struct.scb** %6, align 8
  %10 = getelementptr inbounds %struct.scb, %struct.scb* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SCSIID_OUR_ID(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @ROLE_INITIATOR, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.scb*, %struct.scb** %6, align 8
  %17 = getelementptr inbounds %struct.scb, %struct.scb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SCB_TARGET_SCB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ROLE_TARGET, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %3
  %25 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %28 = load %struct.scb*, %struct.scb** %6, align 8
  %29 = call i32 @SCB_GET_TARGET(%struct.ahc_softc* %27, %struct.scb* %28)
  %30 = load %struct.scb*, %struct.scb** %6, align 8
  %31 = call i32 @SCB_GET_LUN(%struct.scb* %30)
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %33 = load %struct.scb*, %struct.scb** %6, align 8
  %34 = call i32 @SCB_GET_CHANNEL(%struct.ahc_softc* %32, %struct.scb* %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %25, i32 %26, i32 %29, i32 %31, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @SCSIID_OUR_ID(i32) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @SCB_GET_CHANNEL(%struct.ahc_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
