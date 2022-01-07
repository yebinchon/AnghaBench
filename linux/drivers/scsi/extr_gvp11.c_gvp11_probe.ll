; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_gvp11_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_gvp11_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.zorro_device_id = type { i32 }
%struct.Scsi_Host = type { i32, i32 }
%struct.gvp11_hostdata = type { %struct.gvp11_scsiregs*, %struct.TYPE_6__ }
%struct.gvp11_scsiregs = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"wd33c93\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@gvp11_scsi_template = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_AMIGA_PORTS = common dso_local global i32 0, align 4
@GVP11_DMAC_BUSY = common dso_local global i32 0, align 4
@gvp11_xfer_mask = common dso_local global i32 0, align 4
@CTRL_DMA = common dso_local global i32 0, align 4
@dma_setup = common dso_local global i32 0, align 4
@dma_stop = common dso_local global i32 0, align 4
@GVP_SCSICLKMASK = common dso_local global i32 0, align 4
@WD33C93_FS_8_10 = common dso_local global i32 0, align 4
@WD33C93_FS_12_15 = common dso_local global i32 0, align 4
@gvp11_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"GVP11 SCSI\00", align 1
@GVP11_DMAC_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zorro_dev*, %struct.zorro_device_id*)* @gvp11_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gvp11_probe(%struct.zorro_dev* %0, %struct.zorro_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zorro_dev*, align 8
  %5 = alloca %struct.zorro_device_id*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gvp11_hostdata*, align 8
  %12 = alloca %struct.gvp11_scsiregs*, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  store %struct.zorro_dev* %0, %struct.zorro_dev** %4, align 8
  store %struct.zorro_device_id* %1, %struct.zorro_device_id** %5, align 8
  %14 = load %struct.zorro_device_id*, %struct.zorro_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %18 = call i32 @zorro_resource_len(%struct.zorro_dev* %17)
  %19 = icmp ne i32 %18, 65536
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %170

23:                                               ; preds = %2
  %24 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %25 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @request_mem_region(i64 %28, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %170

34:                                               ; preds = %23
  %35 = load i64, i64* %7, align 8
  %36 = call %struct.gvp11_scsiregs* @ZTWO_VADDR(i64 %35)
  store %struct.gvp11_scsiregs* %36, %struct.gvp11_scsiregs** %12, align 8
  %37 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %38 = call i32 @check_wd33c93(%struct.gvp11_scsiregs* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %166

42:                                               ; preds = %34
  %43 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @gvp11_scsi_template, i32 32)
  store %struct.Scsi_Host* %43, %struct.Scsi_Host** %6, align 8
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %45 = icmp ne %struct.Scsi_Host* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %166

49:                                               ; preds = %42
  %50 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %54 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %59 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %61 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %63 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %62, i32 0, i32 1
  store i32 15, i32* %63, align 4
  br label %64

64:                                               ; preds = %71, %49
  %65 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %66 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @GVP11_DMAC_BUSY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %64

72:                                               ; preds = %64
  %73 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %74 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %76 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %78 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32* %78, i32** %79, align 8
  %80 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %81 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32* %81, i32** %82, align 8
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %84 = call %struct.gvp11_hostdata* @shost_priv(%struct.Scsi_Host* %83)
  store %struct.gvp11_hostdata* %84, %struct.gvp11_hostdata** %11, align 8
  %85 = load i32, i32* @gvp11_xfer_mask, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load i32, i32* @gvp11_xfer_mask, align 4
  %89 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %11, align 8
  %90 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %97

92:                                               ; preds = %72
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %11, align 8
  %95 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %11, align 8
  %99 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 255, i32* %100, align 4
  %101 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %11, align 8
  %102 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @CTRL_DMA, align 4
  %105 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %11, align 8
  %106 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %109 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %11, align 8
  %110 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %109, i32 0, i32 0
  store %struct.gvp11_scsiregs* %108, %struct.gvp11_scsiregs** %110, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call %struct.gvp11_scsiregs* @ZTWO_VADDR(i64 %111)
  %113 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %112, i64 32768
  %114 = bitcast %struct.gvp11_scsiregs* %113 to i16*
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  store i32 %116, i32* %9, align 4
  %117 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %118 = load i32, i32* @dma_setup, align 4
  %119 = load i32, i32* @dma_stop, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @GVP_SCSICLKMASK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %97
  %125 = load i32, i32* @WD33C93_FS_8_10, align 4
  br label %128

126:                                              ; preds = %97
  %127 = load i32, i32* @WD33C93_FS_12_15, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = bitcast %struct.TYPE_7__* %13 to { i32*, i32* }*
  %131 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %130, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @wd33c93_init(%struct.Scsi_Host* %117, i32* %132, i32* %134, i32 %118, i32 %119, i32 %129)
  %136 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %137 = load i32, i32* @gvp11_intr, align 4
  %138 = load i32, i32* @IRQF_SHARED, align 4
  %139 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %140 = call i32 @request_irq(i32 %136, i32 %137, i32 %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.Scsi_Host* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %128
  br label %163

144:                                              ; preds = %128
  %145 = load i32, i32* @GVP11_DMAC_INT_ENABLE, align 4
  %146 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %12, align 8
  %147 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %149 = call i32 @scsi_add_host(%struct.Scsi_Host* %148, i32* null)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %159

153:                                              ; preds = %144
  %154 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %155 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %156 = call i32 @zorro_set_drvdata(%struct.zorro_dev* %154, %struct.Scsi_Host* %155)
  %157 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %158 = call i32 @scsi_scan_host(%struct.Scsi_Host* %157)
  store i32 0, i32* %3, align 4
  br label %170

159:                                              ; preds = %152
  %160 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %161 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %162 = call i32 @free_irq(i32 %160, %struct.Scsi_Host* %161)
  br label %163

163:                                              ; preds = %159, %143
  %164 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %165 = call i32 @scsi_host_put(%struct.Scsi_Host* %164)
  br label %166

166:                                              ; preds = %163, %46, %41
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @release_mem_region(i64 %167, i32 256)
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %166, %153, %31, %20
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @zorro_resource_len(%struct.zorro_dev*) #1

declare dso_local i32 @request_mem_region(i64, i32, i8*) #1

declare dso_local %struct.gvp11_scsiregs* @ZTWO_VADDR(i64) #1

declare dso_local i32 @check_wd33c93(%struct.gvp11_scsiregs*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.gvp11_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @wd33c93_init(%struct.Scsi_Host*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @zorro_set_drvdata(%struct.zorro_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
