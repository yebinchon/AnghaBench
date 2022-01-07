; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_sg_update_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_sg_update_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ScsiReqBlk = type { i64, i32, i64, i32, %struct.TYPE_6__*, %struct.SGentry* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.SGentry = type { i64, i32 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"sg_update_list: Transferred %i of %i bytes, %i remain\0A\00", align 1
@SEGMENTX_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ScsiReqBlk*, i64)* @sg_update_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg_update_list(%struct.ScsiReqBlk* %0, i64 %1) #0 {
  %3 = alloca %struct.ScsiReqBlk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.SGentry*, align 8
  store %struct.ScsiReqBlk* %0, %struct.ScsiReqBlk** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %9 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %14 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %13, i32 0, i32 5
  %15 = load %struct.SGentry*, %struct.SGentry** %14, align 8
  %16 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %17 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.SGentry, %struct.SGentry* %15, i64 %19
  store %struct.SGentry* %20, %struct.SGentry** %7, align 8
  %21 = load i32, i32* @DBG_0, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %24 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @dprintkdbg(i32 %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25, i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %113

31:                                               ; preds = %2
  %32 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %33 = call i32 @sg_verify_length(%struct.ScsiReqBlk* %32)
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %36 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %38 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %107, %31
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %44 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %110

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.SGentry*, %struct.SGentry** %7, align 8
  %50 = getelementptr inbounds %struct.SGentry, %struct.SGentry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.SGentry*, %struct.SGentry** %7, align 8
  %55 = getelementptr inbounds %struct.SGentry, %struct.SGentry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %104

59:                                               ; preds = %47
  %60 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %61 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %60, i32 0, i32 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %69 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SEGMENTX_LEN, align 4
  %72 = load i32, i32* @DMA_TO_DEVICE, align 4
  %73 = call i32 @dma_sync_single_for_cpu(i32* %67, i32 %70, i32 %71, i32 %72)
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.SGentry*, %struct.SGentry** %7, align 8
  %76 = getelementptr inbounds %struct.SGentry, %struct.SGentry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.SGentry*, %struct.SGentry** %7, align 8
  %81 = getelementptr inbounds %struct.SGentry, %struct.SGentry* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 8
  %86 = load i64, i64* %5, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %89 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %91 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %90, i32 0, i32 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %99 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SEGMENTX_LEN, align 4
  %102 = load i32, i32* @DMA_TO_DEVICE, align 4
  %103 = call i32 @dma_sync_single_for_device(i32* %97, i32 %100, i32 %101, i32 %102)
  br label %110

104:                                              ; preds = %53
  %105 = load %struct.SGentry*, %struct.SGentry** %7, align 8
  %106 = getelementptr inbounds %struct.SGentry, %struct.SGentry* %105, i32 1
  store %struct.SGentry* %106, %struct.SGentry** %7, align 8
  br label %107

107:                                              ; preds = %104
  %108 = load i64, i64* %5, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %5, align 8
  br label %41

110:                                              ; preds = %59, %41
  %111 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %3, align 8
  %112 = call i32 @sg_verify_length(%struct.ScsiReqBlk* %111)
  br label %113

113:                                              ; preds = %110, %30
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @sg_verify_length(%struct.ScsiReqBlk*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
