; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7770_osm.c_aic7770_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7770_osm.c_aic7770_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.eisa_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ahc_softc = type { %struct.TYPE_4__, %struct.device* }
%struct.TYPE_4__ = type { i64 }

@AHC_EISA_SLOT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ahc_eisa:%d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aic7xxx_driver_template = common dso_local global i32 0, align 4
@aic7770_ident_table = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @aic7770_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7770_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.eisa_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.eisa_device* @to_eisa_device(%struct.device* %10)
  store %struct.eisa_device* %11, %struct.eisa_device** %4, align 8
  %12 = load %struct.eisa_device*, %struct.eisa_device** %4, align 8
  %13 = getelementptr inbounds %struct.eisa_device, %struct.eisa_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AHC_EISA_SLOT_OFFSET, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 12
  %20 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i8* @kstrdup(i8* %21, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  %29 = load i8*, i8** %8, align 8
  %30 = call %struct.ahc_softc* @ahc_alloc(i32* @aic7xxx_driver_template, i8* %29)
  store %struct.ahc_softc* %30, %struct.ahc_softc** %6, align 8
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %32 = icmp eq %struct.ahc_softc* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %38 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %37, i32 0, i32 1
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %40 = load i64, i64* @aic7770_ident_table, align 8
  %41 = load %struct.eisa_device*, %struct.eisa_device** %4, align 8
  %42 = getelementptr inbounds %struct.eisa_device, %struct.eisa_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @aic7770_config(%struct.ahc_softc* %39, i64 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %35
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %52 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %55 = call i32 @ahc_free(%struct.ahc_softc* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %35
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %60 = call i32 @dev_set_drvdata(%struct.device* %58, %struct.ahc_softc* %59)
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %62 = call i32 @ahc_linux_register_host(%struct.ahc_softc* %61, i32* @aic7xxx_driver_template)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %50, %33, %26
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.eisa_device* @to_eisa_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.ahc_softc* @ahc_alloc(i32*, i8*) #1

declare dso_local i32 @aic7770_config(%struct.ahc_softc*, i64, i32) #1

declare dso_local i32 @ahc_free(%struct.ahc_softc*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ahc_softc*) #1

declare dso_local i32 @ahc_linux_register_host(%struct.ahc_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
