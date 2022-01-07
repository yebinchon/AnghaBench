; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_read_brdctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_read_brdctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i8, i32 }

@AHC_CHIPID_MASK = common dso_local global i32 0, align 4
@AHC_AIC7895 = common dso_local global i32 0, align 4
@BRDRW = common dso_local global i32 0, align 4
@BRDCS = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@BRDRW_ULTRA2 = common dso_local global i32 0, align 4
@BRDCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @read_brdctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_brdctl(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AHC_CHIPID_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @AHC_AIC7895, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @BRDRW, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 4
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 66
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @BRDCS, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %12
  br label %38

24:                                               ; preds = %1
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AHC_ULTRA2, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @BRDRW_ULTRA2, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @BRDRW, align 4
  %35 = load i32, i32* @BRDCS, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %31
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %40 = load i32, i32* @BRDCTL, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ahc_outb(%struct.ahc_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %44 = call i32 @ahc_flush_device_writes(%struct.ahc_softc* %43)
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %46 = load i32, i32* @BRDCTL, align 4
  %47 = call i32 @ahc_inb(%struct.ahc_softc* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %49 = load i32, i32* @BRDCTL, align 4
  %50 = call i32 @ahc_outb(%struct.ahc_softc* %48, i32 %49, i32 0)
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_flush_device_writes(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
