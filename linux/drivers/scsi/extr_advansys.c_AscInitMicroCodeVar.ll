; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitMicroCodeVar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitMicroCodeVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32, i32, i32* }
%struct.asc_board = type { i32 }

@ASC_MAX_TID = common dso_local global i32 0, align 4
@ASCV_DISC_ENABLE_B = common dso_local global i32 0, align 4
@ASCV_HOSTSCSI_ID_B = common dso_local global i32 0, align 4
@ASC_OVERRUN_BSIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASCV_OVERRUN_PADDR_D = common dso_local global i32 0, align 4
@ASCV_OVERRUN_BSIZE_D = common dso_local global i32 0, align 4
@ASCV_MC_DATE_W = common dso_local global i64 0, align 8
@ASCV_MC_VER_W = common dso_local global i64 0, align 8
@ASC_MCODE_START_ADDR = common dso_local global i64 0, align 8
@ASC_IERR_SET_PC_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ASC_IERR_START_STOP_CHIP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @AscInitMicroCodeVar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscInitMicroCodeVar(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.asc_board*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call %struct.asc_board* @asc_dvc_to_board(%struct.TYPE_7__* %10)
  store %struct.asc_board* %11, %struct.asc_board** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ASC_MAX_TID, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AscPutMCodeInitSDTRAtID(i32 %20, i32 %21, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @AscInitQLinkVar(%struct.TYPE_7__* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ASCV_DISC_ENABLE_B, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @AscWriteLramByte(i32 %38, i32 %39, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ASCV_HOSTSCSI_ID_B, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ASC_TID_TO_TARGET_ID(i32 %52)
  %54 = call i32 @AscWriteLramByte(i32 %46, i32 %47, i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = and i64 %57, 7
  %59 = call i32 @BUG_ON(i64 %58)
  %60 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %61 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ASC_OVERRUN_BSIZE, align 8
  %67 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %68 = call i64 @dma_map_single(i32 %62, i64 %65, i64 %66, i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %72 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @dma_mapping_error(i32 %73, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %35
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %150

82:                                               ; preds = %35
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @cpu_to_le32(i64 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @ASCV_OVERRUN_PADDR_D, align 4
  %89 = call i32 @AscMemDWordCopyPtrToLram(i32 %87, i32 %88, i32* %7, i32 1)
  %90 = load i64, i64* @ASC_OVERRUN_BSIZE, align 8
  %91 = call i32 @cpu_to_le32(i64 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @ASCV_OVERRUN_BSIZE_D, align 4
  %94 = call i32 @AscMemDWordCopyPtrToLram(i32 %92, i32 %93, i32* %8, i32 1)
  %95 = load i32, i32* %6, align 4
  %96 = load i64, i64* @ASCV_MC_DATE_W, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i8* @AscReadLramWord(i32 %95, i32 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i8* %98, i8** %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i64, i64* @ASCV_MC_VER_W, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i8* @AscReadLramWord(i32 %103, i32 %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i8* %106, i8** %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i64, i64* @ASC_MCODE_START_ADDR, align 8
  %113 = call i32 @AscSetPCAddr(i32 %111, i64 %112)
  %114 = load i32, i32* %6, align 4
  %115 = call i64 @AscGetPCAddr(i32 %114)
  %116 = load i64, i64* @ASC_MCODE_START_ADDR, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %82
  %119 = load i32, i32* @ASC_IERR_SET_PC_ADDR, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %140

126:                                              ; preds = %82
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @AscStartChip(i32 %127)
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i32, i32* @ASC_IERR_START_STOP_CHIP, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %140

138:                                              ; preds = %126
  %139 = load i32, i32* %5, align 4
  store i32 %139, i32* %2, align 4
  br label %154

140:                                              ; preds = %130, %118
  %141 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %142 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ASC_OVERRUN_BSIZE, align 8
  %148 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %149 = call i32 @dma_unmap_single(i32 %143, i64 %146, i64 %147, i32 %148)
  br label %150

150:                                              ; preds = %140, %79
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %150, %138
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.asc_board* @asc_dvc_to_board(%struct.TYPE_7__*) #1

declare dso_local i32 @AscPutMCodeInitSDTRAtID(i32, i32, i32) #1

declare dso_local i32 @AscInitQLinkVar(%struct.TYPE_7__*) #1

declare dso_local i32 @AscWriteLramByte(i32, i32, i32) #1

declare dso_local i32 @ASC_TID_TO_TARGET_ID(i32) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @dma_map_single(i32, i64, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @AscMemDWordCopyPtrToLram(i32, i32, i32*, i32) #1

declare dso_local i8* @AscReadLramWord(i32, i32) #1

declare dso_local i32 @AscSetPCAddr(i32, i64) #1

declare dso_local i64 @AscGetPCAddr(i32) #1

declare dso_local i32 @AscStartChip(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
