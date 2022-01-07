; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_read_zones.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_read_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i64, i32, i64, i64, %struct.TYPE_5__*, %struct.gendisk* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.gendisk = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@QUEUE_FLAG_ZONE_RESETALL = common dso_local global i32 0, align 4
@ELEVATOR_F_ZBD_SEQ_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_zbc_read_zones(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_disk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %10, i32 0, i32 5
  %12 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  store %struct.gendisk* %12, %struct.gendisk** %6, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %14 = call i32 @sd_is_zoned(%struct.scsi_disk* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

17:                                               ; preds = %2
  %18 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @sd_zbc_check_zoned_characteristics(%struct.scsi_disk* %18, i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %117

24:                                               ; preds = %17
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %26 = call i32 @sd_zbc_check_zones(%struct.scsi_disk* %25, i64* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %117

30:                                               ; preds = %24
  %31 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %31, i32 0, i32 5
  %33 = load %struct.gendisk*, %struct.gendisk** %32, align 8
  %34 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %36, i32 0, i32 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @logical_to_sectors(%struct.TYPE_5__* %38, i64 %39)
  %41 = call i32 @blk_queue_chunk_sectors(%struct.TYPE_6__* %35, i32 %40)
  %42 = load i32, i32* @QUEUE_FLAG_ZONE_RESETALL, align 4
  %43 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %43, i32 0, i32 5
  %45 = load %struct.gendisk*, %struct.gendisk** %44, align 8
  %46 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @blk_queue_flag_set(i32 %42, %struct.TYPE_6__* %47)
  %49 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %49, i32 0, i32 5
  %51 = load %struct.gendisk*, %struct.gendisk** %50, align 8
  %52 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* @ELEVATOR_F_ZBD_SEQ_WRITE, align 4
  %55 = call i32 @blk_queue_required_elevator_features(%struct.TYPE_6__* %53, i32 %54)
  %56 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @round_up(i64 %58, i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @ilog2(i64 %61)
  %63 = lshr i32 %60, %62
  store i32 %63, i32* %7, align 4
  %64 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %64, i32 0, i32 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %68, i32 0, i32 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %30
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %79 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %3, align 4
  br label %121

83:                                               ; preds = %30
  %84 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %85 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %103, label %89

89:                                               ; preds = %83
  %90 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %91 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %89
  %96 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %97 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %95, %89, %83
  %104 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %105 = call i32 @blk_revalidate_disk_zones(%struct.gendisk* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %117

109:                                              ; preds = %103
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %112 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %115 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %109, %95
  store i32 0, i32* %3, align 4
  br label %121

117:                                              ; preds = %108, %29, %23
  %118 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %119 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %116, %76, %16
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @sd_is_zoned(%struct.scsi_disk*) #1

declare dso_local i32 @sd_zbc_check_zoned_characteristics(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_zbc_check_zones(%struct.scsi_disk*, i64*) #1

declare dso_local i32 @blk_queue_chunk_sectors(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @logical_to_sectors(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @blk_queue_required_elevator_features(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @round_up(i64, i64) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @blk_revalidate_disk_zones(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
