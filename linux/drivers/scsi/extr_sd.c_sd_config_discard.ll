; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_config_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_config_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@SD_MAX_WS16_BLOCKS = common dso_local global i32 0, align 4
@SD_MAX_WS10_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i32)* @sd_config_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_config_discard(%struct.scsi_disk* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %8, i32 0, i32 7
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %5, align 8
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %13, i32 0, i32 5
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul i32 %20, %21
  %23 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = mul i32 %31, %32
  %34 = call i32 @max(i32 %28, i32 %33)
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %4, align 4
  switch i32 %41, label %98 [
    i32 132, label %42
    i32 133, label %42
    i32 131, label %48
    i32 129, label %54
    i32 130, label %73
    i32 128, label %92
  ]

42:                                               ; preds = %2, %2
  %43 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %44 = call i32 @blk_queue_max_discard_sectors(%struct.request_queue* %43, i32 0)
  %45 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %46 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %47 = call i32 @blk_queue_flag_clear(i32 %45, %struct.request_queue* %46)
  br label %108

48:                                               ; preds = %2
  %49 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SD_MAX_WS16_BLOCKS, align 4
  %53 = call i32 @min_not_zero(i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %98

54:                                               ; preds = %2
  %55 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %56 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %55, i32 0, i32 5
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %67 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SD_MAX_WS16_BLOCKS, align 4
  %72 = call i32 @min_not_zero(i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %98

73:                                               ; preds = %2
  %74 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %75 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %74, i32 0, i32 5
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %82 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %7, align 4
  br label %88

84:                                               ; preds = %73
  %85 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %86 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SD_MAX_WS10_BLOCKS, align 4
  %91 = call i32 @min_not_zero(i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %98

92:                                               ; preds = %2
  %93 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %94 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SD_MAX_WS10_BLOCKS, align 4
  %97 = call i32 @min_not_zero(i32 %95, i32 %96)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %2, %92, %88, %69, %48
  %99 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = lshr i32 %101, 9
  %103 = mul i32 %100, %102
  %104 = call i32 @blk_queue_max_discard_sectors(%struct.request_queue* %99, i32 %103)
  %105 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %106 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %107 = call i32 @blk_queue_flag_set(i32 %105, %struct.request_queue* %106)
  br label %108

108:                                              ; preds = %98, %42
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

declare dso_local i32 @min_not_zero(i32, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
