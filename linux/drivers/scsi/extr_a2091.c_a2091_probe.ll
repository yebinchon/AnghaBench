; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_a2091.c_a2091_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_a2091.c_a2091_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.zorro_device_id = type { i32 }
%struct.Scsi_Host = type { i32, i32 }
%struct.a2091_scsiregs = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.a2091_hostdata = type { %struct.a2091_scsiregs*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"wd33c93\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@a2091_scsi_template = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_AMIGA_PORTS = common dso_local global i32 0, align 4
@DAWR_A2091 = common dso_local global i32 0, align 4
@CTRL_DMA = common dso_local global i32 0, align 4
@dma_setup = common dso_local global i32 0, align 4
@dma_stop = common dso_local global i32 0, align 4
@WD33C93_FS_8_10 = common dso_local global i32 0, align 4
@a2091_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"A2091 SCSI\00", align 1
@CNTR_PDMD = common dso_local global i32 0, align 4
@CNTR_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zorro_dev*, %struct.zorro_device_id*)* @a2091_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2091_probe(%struct.zorro_dev* %0, %struct.zorro_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zorro_dev*, align 8
  %5 = alloca %struct.zorro_device_id*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.a2091_scsiregs*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca %struct.a2091_hostdata*, align 8
  store %struct.zorro_dev* %0, %struct.zorro_dev** %4, align 8
  store %struct.zorro_device_id* %1, %struct.zorro_device_id** %5, align 8
  %11 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %12 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @request_mem_region(i32 %14, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %114

20:                                               ; preds = %2
  %21 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @a2091_scsi_template, i32 24)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %6, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %23 = icmp ne %struct.Scsi_Host* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %107

27:                                               ; preds = %20
  %28 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %32 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %37 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.a2091_scsiregs* @ZTWO_VADDR(i32 %39)
  store %struct.a2091_scsiregs* %40, %struct.a2091_scsiregs** %8, align 8
  %41 = load i32, i32* @DAWR_A2091, align 4
  %42 = load %struct.a2091_scsiregs*, %struct.a2091_scsiregs** %8, align 8
  %43 = getelementptr inbounds %struct.a2091_scsiregs, %struct.a2091_scsiregs* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.a2091_scsiregs*, %struct.a2091_scsiregs** %8, align 8
  %45 = getelementptr inbounds %struct.a2091_scsiregs, %struct.a2091_scsiregs* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32* %45, i32** %46, align 8
  %47 = load %struct.a2091_scsiregs*, %struct.a2091_scsiregs** %8, align 8
  %48 = getelementptr inbounds %struct.a2091_scsiregs, %struct.a2091_scsiregs* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32* %48, i32** %49, align 8
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %51 = call %struct.a2091_hostdata* @shost_priv(%struct.Scsi_Host* %50)
  store %struct.a2091_hostdata* %51, %struct.a2091_hostdata** %10, align 8
  %52 = load %struct.a2091_hostdata*, %struct.a2091_hostdata** %10, align 8
  %53 = getelementptr inbounds %struct.a2091_hostdata, %struct.a2091_hostdata* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 255, i32* %54, align 8
  %55 = load %struct.a2091_hostdata*, %struct.a2091_hostdata** %10, align 8
  %56 = getelementptr inbounds %struct.a2091_hostdata, %struct.a2091_hostdata* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @CTRL_DMA, align 4
  %59 = load %struct.a2091_hostdata*, %struct.a2091_hostdata** %10, align 8
  %60 = getelementptr inbounds %struct.a2091_hostdata, %struct.a2091_hostdata* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.a2091_scsiregs*, %struct.a2091_scsiregs** %8, align 8
  %63 = load %struct.a2091_hostdata*, %struct.a2091_hostdata** %10, align 8
  %64 = getelementptr inbounds %struct.a2091_hostdata, %struct.a2091_hostdata* %63, i32 0, i32 0
  store %struct.a2091_scsiregs* %62, %struct.a2091_scsiregs** %64, align 8
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %66 = load i32, i32* @dma_setup, align 4
  %67 = load i32, i32* @dma_stop, align 4
  %68 = load i32, i32* @WD33C93_FS_8_10, align 4
  %69 = bitcast %struct.TYPE_7__* %9 to { i32*, i32* }*
  %70 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %69, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @wd33c93_init(%struct.Scsi_Host* %65, i32* %71, i32* %73, i32 %66, i32 %67, i32 %68)
  %75 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %76 = load i32, i32* @a2091_intr, align 4
  %77 = load i32, i32* @IRQF_SHARED, align 4
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %79 = call i32 @request_irq(i32 %75, i32 %76, i32 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.Scsi_Host* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %27
  br label %104

83:                                               ; preds = %27
  %84 = load i32, i32* @CNTR_PDMD, align 4
  %85 = load i32, i32* @CNTR_INTEN, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.a2091_scsiregs*, %struct.a2091_scsiregs** %8, align 8
  %88 = getelementptr inbounds %struct.a2091_scsiregs, %struct.a2091_scsiregs* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %90 = call i32 @scsi_add_host(%struct.Scsi_Host* %89, i32* null)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %100

94:                                               ; preds = %83
  %95 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %97 = call i32 @zorro_set_drvdata(%struct.zorro_dev* %95, %struct.Scsi_Host* %96)
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %99 = call i32 @scsi_scan_host(%struct.Scsi_Host* %98)
  store i32 0, i32* %3, align 4
  br label %114

100:                                              ; preds = %93
  %101 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %102 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %103 = call i32 @free_irq(i32 %101, %struct.Scsi_Host* %102)
  br label %104

104:                                              ; preds = %100, %82
  %105 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %106 = call i32 @scsi_host_put(%struct.Scsi_Host* %105)
  br label %107

107:                                              ; preds = %104, %24
  %108 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %109 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @release_mem_region(i32 %111, i32 256)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %107, %94, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.a2091_scsiregs* @ZTWO_VADDR(i32) #1

declare dso_local %struct.a2091_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @wd33c93_init(%struct.Scsi_Host*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @zorro_set_drvdata(%struct.zorro_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
