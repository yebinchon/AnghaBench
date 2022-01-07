; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_a3000.c_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_a3000.c_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.a3000_hostdata = type { %struct.a3000_scsiregs*, %struct.WD33C93_hostdata }
%struct.a3000_scsiregs = type { i16, i64, i32 }
%struct.WD33C93_hostdata = type { i32, i32, i32 }

@CNTR_PDMD = common dso_local global i16 0, align 2
@CNTR_INTEN = common dso_local global i16 0, align 2
@A3000_XFER_MASK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@CNTR_DDIR = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_setup(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.a3000_hostdata*, align 8
  %8 = alloca %struct.WD33C93_hostdata*, align 8
  %9 = alloca %struct.a3000_scsiregs*, align 8
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
  %18 = call %struct.a3000_hostdata* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.a3000_hostdata* %18, %struct.a3000_hostdata** %7, align 8
  %19 = load %struct.a3000_hostdata*, %struct.a3000_hostdata** %7, align 8
  %20 = getelementptr inbounds %struct.a3000_hostdata, %struct.a3000_hostdata* %19, i32 0, i32 1
  store %struct.WD33C93_hostdata* %20, %struct.WD33C93_hostdata** %8, align 8
  %21 = load %struct.a3000_hostdata*, %struct.a3000_hostdata** %7, align 8
  %22 = getelementptr inbounds %struct.a3000_hostdata, %struct.a3000_hostdata* %21, i32 0, i32 0
  %23 = load %struct.a3000_scsiregs*, %struct.a3000_scsiregs** %22, align 8
  store %struct.a3000_scsiregs* %23, %struct.a3000_scsiregs** %9, align 8
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
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @virt_to_bus(i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @A3000_XFER_MASK, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %2
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 511
  %45 = and i32 %44, -512
  %46 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %47 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %49 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @kmalloc(i32 %50, i32 %51)
  %53 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %54 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %56 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %39
  %60 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %61 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  store i32 1, i32* %3, align 4
  br label %124

62:                                               ; preds = %39
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %67 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memcpy(i32 %68, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %65, %62
  %79 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %80 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @virt_to_bus(i32 %81)
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %78, %2
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load i16, i16* @CNTR_DDIR, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* %10, align 2
  %90 = zext i16 %89 to i32
  %91 = or i32 %90, %88
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %10, align 2
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %96 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i16, i16* %10, align 2
  %98 = load %struct.a3000_scsiregs*, %struct.a3000_scsiregs** %9, align 8
  %99 = getelementptr inbounds %struct.a3000_scsiregs, %struct.a3000_scsiregs* %98, i32 0, i32 0
  store i16 %97, i16* %99, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.a3000_scsiregs*, %struct.a3000_scsiregs** %9, align 8
  %102 = getelementptr inbounds %struct.a3000_scsiregs, %struct.a3000_scsiregs* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %93
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @cache_clear(i64 %106, i32 %110)
  br label %119

112:                                              ; preds = %93
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @cache_push(i64 %113, i32 %117)
  br label %119

119:                                              ; preds = %112, %105
  %120 = call i32 (...) @mb()
  %121 = load %struct.a3000_scsiregs*, %struct.a3000_scsiregs** %9, align 8
  %122 = getelementptr inbounds %struct.a3000_scsiregs, %struct.a3000_scsiregs* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  %123 = call i32 (...) @mb()
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %59
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.a3000_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @virt_to_bus(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cache_clear(i64, i32) #1

declare dso_local i32 @cache_push(i64, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
