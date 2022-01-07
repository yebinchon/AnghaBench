; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sgiwd93.c_fill_hpc_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sgiwd93.c_fill_hpc_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip22_hostdata = type { %struct.hpc_chunk*, i32 }
%struct.hpc_chunk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.scsi_cmnd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i8* }

@HPCDMA_EOX = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip22_hostdata*, %struct.scsi_cmnd*, i32)* @fill_hpc_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_hpc_entries(%struct.ip22_hostdata* %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca %struct.ip22_hostdata*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hpc_chunk*, align 8
  store %struct.ip22_hostdata* %0, %struct.ip22_hostdata** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %4, align 8
  %21 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DMA_DIR(i32 %25)
  %27 = call i64 @dma_map_single(i32 %22, i8* %23, i64 %24, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i64 %28, i64* %31, align 8
  %32 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %4, align 8
  %33 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %32, i32 0, i32 0
  %34 = load %struct.hpc_chunk*, %struct.hpc_chunk** %33, align 8
  store %struct.hpc_chunk* %34, %struct.hpc_chunk** %11, align 8
  br label %35

35:                                               ; preds = %44, %3
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 8192
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i64 [ 8192, %41 ], [ %43, %42 ]
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.hpc_chunk*, %struct.hpc_chunk** %11, align 8
  %48 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.hpc_chunk*, %struct.hpc_chunk** %11, align 8
  %52 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load %struct.hpc_chunk*, %struct.hpc_chunk** %11, align 8
  %55 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %54, i32 1
  store %struct.hpc_chunk* %55, %struct.hpc_chunk** %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %9, align 8
  br label %35

62:                                               ; preds = %35
  %63 = load %struct.hpc_chunk*, %struct.hpc_chunk** %11, align 8
  %64 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* @HPCDMA_EOX, align 8
  %67 = load %struct.hpc_chunk*, %struct.hpc_chunk** %11, align 8
  %68 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %4, align 8
  %71 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %4, align 8
  %74 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %73, i32 0, i32 0
  %75 = load %struct.hpc_chunk*, %struct.hpc_chunk** %74, align 8
  %76 = load %struct.hpc_chunk*, %struct.hpc_chunk** %11, align 8
  %77 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %76, i64 1
  %78 = ptrtoint %struct.hpc_chunk* %77 to i64
  %79 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %4, align 8
  %80 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %79, i32 0, i32 0
  %81 = load %struct.hpc_chunk*, %struct.hpc_chunk** %80, align 8
  %82 = ptrtoint %struct.hpc_chunk* %81 to i64
  %83 = sub i64 %78, %82
  %84 = load i32, i32* @DMA_TO_DEVICE, align 4
  %85 = call i32 @dma_cache_sync(i32 %72, %struct.hpc_chunk* %75, i64 %83, i32 %84)
  ret void
}

declare dso_local i64 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i32 @DMA_DIR(i32) #1

declare dso_local i32 @dma_cache_sync(i32, %struct.hpc_chunk*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
