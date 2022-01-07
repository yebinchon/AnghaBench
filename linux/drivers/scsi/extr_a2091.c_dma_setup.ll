; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_a2091.c_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_a2091.c_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.a2091_hostdata = type { %struct.a2091_scsiregs*, %struct.WD33C93_hostdata }
%struct.a2091_scsiregs = type { i16, i64, i32 }
%struct.WD33C93_hostdata = type { i32, i32, i32* }

@CNTR_PDMD = common dso_local global i16 0, align 2
@CNTR_INTEN = common dso_local global i16 0, align 2
@A2091_XFER_MASK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@CNTR_DDIR = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_setup(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.a2091_hostdata*, align 8
  %8 = alloca %struct.WD33C93_hostdata*, align 8
  %9 = alloca %struct.a2091_scsiregs*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %6, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = call %struct.a2091_hostdata* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.a2091_hostdata* %18, %struct.a2091_hostdata** %7, align 8
  %19 = load %struct.a2091_hostdata*, %struct.a2091_hostdata** %7, align 8
  %20 = getelementptr inbounds %struct.a2091_hostdata, %struct.a2091_hostdata* %19, i32 0, i32 1
  store %struct.WD33C93_hostdata* %20, %struct.WD33C93_hostdata** %8, align 8
  %21 = load %struct.a2091_hostdata*, %struct.a2091_hostdata** %7, align 8
  %22 = getelementptr inbounds %struct.a2091_hostdata, %struct.a2091_hostdata* %21, i32 0, i32 0
  %23 = load %struct.a2091_scsiregs*, %struct.a2091_scsiregs** %22, align 8
  store %struct.a2091_scsiregs* %23, %struct.a2091_scsiregs** %9, align 8
  %24 = load i16, i16* @CNTR_PDMD, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @CNTR_INTEN, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %25, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %10, align 2
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @virt_to_bus(i32* %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @A2091_XFER_MASK, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %97

39:                                               ; preds = %2
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 511
  %45 = and i32 %44, -512
  %46 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %47 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %49 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32* @kmalloc(i32 %50, i32 %51)
  %53 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %54 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %56 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %39
  %60 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %61 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  store i32 1, i32* %3, align 4
  br label %136

62:                                               ; preds = %39
  %63 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %64 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @virt_to_bus(i32* %65)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @A2091_XFER_MASK, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %73 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  %76 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %77 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %79 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  store i32 1, i32* %3, align 4
  br label %136

80:                                               ; preds = %62
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %85 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @memcpy(i32* %86, i32* %90, i32 %94)
  br label %96

96:                                               ; preds = %83, %80
  br label %97

97:                                               ; preds = %96, %2
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load i16, i16* @CNTR_DDIR, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* %10, align 2
  %104 = zext i16 %103 to i32
  %105 = or i32 %104, %102
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %10, align 2
  br label %107

107:                                              ; preds = %100, %97
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %110 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i16, i16* %10, align 2
  %112 = load %struct.a2091_scsiregs*, %struct.a2091_scsiregs** %9, align 8
  %113 = getelementptr inbounds %struct.a2091_scsiregs, %struct.a2091_scsiregs* %112, i32 0, i32 0
  store i16 %111, i16* %113, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.a2091_scsiregs*, %struct.a2091_scsiregs** %9, align 8
  %116 = getelementptr inbounds %struct.a2091_scsiregs, %struct.a2091_scsiregs* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %107
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @cache_clear(i64 %120, i32 %124)
  br label %133

126:                                              ; preds = %107
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @cache_push(i64 %127, i32 %131)
  br label %133

133:                                              ; preds = %126, %119
  %134 = load %struct.a2091_scsiregs*, %struct.a2091_scsiregs** %9, align 8
  %135 = getelementptr inbounds %struct.a2091_scsiregs, %struct.a2091_scsiregs* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %133, %71, %59
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.a2091_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @virt_to_bus(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cache_clear(i64, i32) #1

declare dso_local i32 @cache_push(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
