; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_construct_ppr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_construct_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i64, i64 }
%struct.ahc_devinfo = type { i32, i32, i32 }

@AHC_ASYNC_XFER_PERIOD = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"(%s:%c:%d:%d): Sending PPR bus_width %x, period %x, offset %x, ppr_options %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*, i64, i64, i64, i64)* @ahc_construct_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_construct_ppr(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ahc_softc*, align 8
  %8 = alloca %struct.ahc_devinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %7, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = load i64, i64* @AHC_ASYNC_XFER_PERIOD, align 8
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %15, %6
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %19 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %22 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @spi_populate_ppr_msg(i64 %24, i64 %25, i64 %26, i64 %27, i64 %28)
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %31 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %35 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 8
  store i32 %37, i32* %35, align 8
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %17
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %42 = call i32 @ahc_name(%struct.ahc_softc* %41)
  %43 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %8, align 8
  %44 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %8, align 8
  %47 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %8, align 8
  %50 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %51, i64 %52, i64 %53, i64 %54, i64 %55)
  br label %57

57:                                               ; preds = %40, %17
  ret void
}

declare dso_local i64 @spi_populate_ppr_msg(i64, i64, i64, i64, i64) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
