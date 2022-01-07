; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gvp11.c_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gvp11_hostdata = type { %struct.gvp11_scsiregs*, %struct.WD33C93_hostdata }
%struct.gvp11_scsiregs = type { i32, i32 }
%struct.WD33C93_hostdata = type { i64, i64, i32*, i64 }

@GVP11_DMAC_INT_ENABLE = common dso_local global i32 0, align 4
@BUF_SCSI_ALLOCED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.scsi_cmnd*, i32)* @dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_stop(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gvp11_hostdata*, align 8
  %8 = alloca %struct.WD33C93_hostdata*, align 8
  %9 = alloca %struct.gvp11_scsiregs*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = call %struct.gvp11_hostdata* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.gvp11_hostdata* %11, %struct.gvp11_hostdata** %7, align 8
  %12 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %7, align 8
  %13 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %12, i32 0, i32 1
  store %struct.WD33C93_hostdata* %13, %struct.WD33C93_hostdata** %8, align 8
  %14 = load %struct.gvp11_hostdata*, %struct.gvp11_hostdata** %7, align 8
  %15 = getelementptr inbounds %struct.gvp11_hostdata, %struct.gvp11_hostdata* %14, i32 0, i32 0
  %16 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %15, align 8
  store %struct.gvp11_scsiregs* %16, %struct.gvp11_scsiregs** %9, align 8
  %17 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %9, align 8
  %18 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @GVP11_DMAC_INT_ENABLE, align 4
  %20 = load %struct.gvp11_scsiregs*, %struct.gvp11_scsiregs** %9, align 8
  %21 = getelementptr inbounds %struct.gvp11_scsiregs, %struct.gvp11_scsiregs* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %3
  %25 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %26 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %71

29:                                               ; preds = %24
  %30 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %31 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = icmp ne %struct.scsi_cmnd* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %43 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32 %41, i32* %44, i32 %48)
  br label %50

50:                                               ; preds = %37, %34, %29
  %51 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %52 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BUF_SCSI_ALLOCED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %58 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  br label %66

61:                                               ; preds = %50
  %62 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %63 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @amiga_chip_free(i32* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %68 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %8, align 8
  %70 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %66, %24, %3
  ret void
}

declare dso_local %struct.gvp11_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @amiga_chip_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
