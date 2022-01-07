; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_construct_wdtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_construct_wdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i64 }
%struct.ahd_devinfo = type { i32, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"(%s:%c:%d:%d): Sending WDTR %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*, i32)* @ahd_construct_wdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_construct_wdtr(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.ahd_devinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @spi_populate_width_msg(i64 %13, i32 %14)
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 4
  store i32 %23, i32* %21, align 8
  %24 = load i64, i64* @bootverbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %28 = call i32 @ahd_name(%struct.ahd_softc* %27)
  %29 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %30 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %33 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %36 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %26, %3
  ret void
}

declare dso_local i64 @spi_populate_width_msg(i64, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
