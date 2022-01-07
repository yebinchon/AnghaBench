; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_atari_scsi_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_atari_scsi_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.NCR5380_hostdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NDEBUG_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"scsi%d: setting up dma, data = %p, phys = %lx, count = %ld, dir = %d\0A\00", align 1
@atari_dma_buffer = common dso_local global i32 0, align 4
@atari_dma_orig_addr = common dso_local global i8* null, align 8
@atari_dma_phys_buffer = common dso_local global i64 0, align 8
@atari_dma_startaddr = common dso_local global i64 0, align 8
@tt_scsi_dma = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@dma_addr = common dso_local global i32 0, align 4
@dma_cnt = common dso_local global i32 0, align 4
@st_dma = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@atari_dma_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.NCR5380_hostdata*, i8*, i64, i32)* @atari_scsi_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atari_scsi_dma_setup(%struct.NCR5380_hostdata* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.NCR5380_hostdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.NCR5380_hostdata* %0, %struct.NCR5380_hostdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @virt_to_phys(i8* %10)
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* @NDEBUG_DMA, align 4
  %13 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %5, align 8
  %14 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dprintk(i32 %12, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18, i64 %19, i64 %20, i32 %21)
  %23 = call i64 (...) @IS_A_TT()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @STRAM_ADDR(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @atari_dma_buffer, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @memcpy(i32 %33, i8* %34, i64 %35)
  br label %39

37:                                               ; preds = %29
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** @atari_dma_orig_addr, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i64, i64* @atari_dma_phys_buffer, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %39, %25, %4
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* @atari_dma_startaddr, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @dma_cache_maintenance(i64 %43, i64 %44, i32 %45)
  %47 = call i64 (...) @IS_A_TT()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tt_scsi_dma, i32 0, i32 0), align 4
  %51 = load i32, i32* @dma_addr, align 4
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @SCSI_DMA_WRITE_P(i32 %51, i64 %52)
  %54 = load i32, i32* @dma_cnt, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @SCSI_DMA_WRITE_P(i32 %54, i64 %55)
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, 2
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tt_scsi_dma, i32 0, i32 0), align 4
  br label %84

59:                                               ; preds = %41
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @SCSI_DMA_SETADR(i64 %60)
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 8
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 144, %64
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @st_dma, i32 0, i32 0), align 8
  %66 = load i32, i32* %8, align 4
  %67 = xor i32 %66, 256
  %68 = or i32 144, %67
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @st_dma, i32 0, i32 0), align 8
  %69 = load i32, i32* %8, align 4
  %70 = or i32 144, %69
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @st_dma, i32 0, i32 0), align 8
  %71 = call i32 @udelay(i32 40)
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 511, i32 0
  %77 = sext i32 %76 to i64
  %78 = add i64 %72, %77
  %79 = lshr i64 %78, 9
  store i64 %79, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @st_dma, i32 0, i32 1), align 8
  %80 = call i32 @udelay(i32 40)
  %81 = load i32, i32* %8, align 4
  %82 = or i32 16, %81
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @st_dma, i32 0, i32 0), align 8
  %83 = call i32 @udelay(i32 40)
  store i32 1, i32* @atari_dma_active, align 4
  br label %84

84:                                               ; preds = %59, %49
  %85 = load i64, i64* %7, align 8
  ret i64 %85
}

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i8*, i64, i64, i32) #1

declare dso_local i64 @IS_A_TT(...) #1

declare dso_local i32 @STRAM_ADDR(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @dma_cache_maintenance(i64, i64, i32) #1

declare dso_local i32 @SCSI_DMA_WRITE_P(i32, i64) #1

declare dso_local i32 @SCSI_DMA_SETADR(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
