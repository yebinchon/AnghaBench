; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm_pci.c_ahd_linux_pci_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm_pci.c_ahd_linux_pci_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.ahd_softc = type { i32, %struct.pci_dev*, i32 }
%struct.ahd_pci_identity = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ahd_pci:%d:%d:%d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AHD_MULTI_FUNC = common dso_local global i32 0, align 4
@aic79xx_driver_template = common dso_local global i32 0, align 4
@AHD_39BIT_ADDRESSING = common dso_local global i32 0, align 4
@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ahd_linux_pci_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_linux_pci_dev_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca %struct.ahd_softc*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.ahd_pci_identity*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %12, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %8, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %17 = call %struct.ahd_pci_identity* @ahd_find_pci_device(%struct.pci_dev* %16)
  store %struct.ahd_pci_identity* %17, %struct.ahd_pci_identity** %9, align 8
  %18 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %19 = icmp eq %struct.ahd_pci_identity* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %98

23:                                               ; preds = %2
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %26 = call i32 @ahd_get_pci_bus(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = call i32 @ahd_get_pci_slot(%struct.pci_dev* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %30 = call i32 @ahd_get_pci_function(%struct.pci_dev* %29)
  %31 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28, i32 %30)
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i8* @kstrdup(i8* %32, i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %98

40:                                               ; preds = %23
  %41 = load i8*, i8** %10, align 8
  %42 = call %struct.ahd_softc* @ahd_alloc(i32* null, i8* %41)
  store %struct.ahd_softc* %42, %struct.ahd_softc** %7, align 8
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %44 = icmp eq %struct.ahd_softc* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %98

48:                                               ; preds = %40
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = call i64 @pci_enable_device(%struct.pci_dev* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %54 = call i32 @ahd_free(%struct.ahd_softc* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %98

57:                                               ; preds = %48
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i32 @pci_set_master(%struct.pci_dev* %58)
  %60 = load %struct.device*, %struct.device** %12, align 8
  %61 = call i64 @DMA_BIT_MASK(i32 32)
  %62 = call i64 @dma_set_mask(%struct.device* %60, i64 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 1
  store %struct.pci_dev* %63, %struct.pci_dev** %65, align 8
  %66 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %67 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %68 = call i32 @ahd_pci_config(%struct.ahd_softc* %66, %struct.ahd_pci_identity* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %57
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %73 = call i32 @ahd_free(%struct.ahd_softc* %72)
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %98

76:                                               ; preds = %57
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %78 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AHD_MULTI_FUNC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @PCI_FUNC(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %91 = call i32 @ahd_linux_pci_inherit_flags(%struct.ahd_softc* %90)
  br label %92

92:                                               ; preds = %89, %83, %76
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %95 = call i32 @pci_set_drvdata(%struct.pci_dev* %93, %struct.ahd_softc* %94)
  %96 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %97 = call i32 @ahd_linux_register_host(%struct.ahd_softc* %96, i32* @aic79xx_driver_template)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %71, %52, %45, %37, %20
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.ahd_pci_identity* @ahd_find_pci_device(%struct.pci_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ahd_get_pci_bus(%struct.pci_dev*) #1

declare dso_local i32 @ahd_get_pci_slot(%struct.pci_dev*) #1

declare dso_local i32 @ahd_get_pci_function(%struct.pci_dev*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.ahd_softc* @ahd_alloc(i32*, i8*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @ahd_free(%struct.ahd_softc*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @dma_set_mask(%struct.device*, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @ahd_pci_config(%struct.ahd_softc*, %struct.ahd_pci_identity*) #1

declare dso_local i64 @PCI_FUNC(i32) #1

declare dso_local i32 @ahd_linux_pci_inherit_flags(%struct.ahd_softc*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ahd_softc*) #1

declare dso_local i32 @ahd_linux_register_host(%struct.ahd_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
