; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_init_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_data_buffer*, i32, %struct.request* }
%struct.scsi_data_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.request = type { i32, i32 }

@BLK_STS_IOERR = common dso_local global i64 0, align 8
@SCSI_INLINE_PROT_SG_CNT = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scsi_init_io(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_data_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 2
  %11 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %11, %struct.request** %4, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call i32 @blk_rq_nr_phys_segments(%struct.request* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* @BLK_STS_IOERR, align 8
  store i64 %20, i64* %2, align 8
  br label %106

21:                                               ; preds = %1
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 1
  %25 = call i64 @scsi_init_sgtable(%struct.request* %22, i32* %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %2, align 8
  br label %106

30:                                               ; preds = %21
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = call i64 @blk_integrity_rq(%struct.request* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %100

34:                                               ; preds = %30
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %36, align 8
  store %struct.scsi_data_buffer* %37, %struct.scsi_data_buffer** %6, align 8
  %38 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %39 = icmp ne %struct.scsi_data_buffer* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i64, i64* @BLK_STS_IOERR, align 8
  store i64 %45, i64* %5, align 8
  br label %102

46:                                               ; preds = %34
  %47 = load %struct.request*, %struct.request** %4, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.request*, %struct.request** %4, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @blk_rq_count_integrity_sg(i32 %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SCSI_INLINE_PROT_SG_CNT, align 4
  %62 = call i64 @sg_alloc_table_chained(%struct.TYPE_2__* %55, i32 %56, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = load i64, i64* @BLK_STS_RESOURCE, align 8
  store i64 %65, i64* %5, align 8
  br label %102

66:                                               ; preds = %46
  %67 = load %struct.request*, %struct.request** %4, align 8
  %68 = getelementptr inbounds %struct.request, %struct.request* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.request*, %struct.request** %4, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @blk_rq_map_integrity_sg(i32 %69, i32 %72, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.request*, %struct.request** %4, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @queue_max_integrity_segments(i32 %86)
  %88 = icmp sgt i32 %83, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  %91 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %6, align 8
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  store %struct.scsi_data_buffer* %91, %struct.scsi_data_buffer** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 0
  %97 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %96, align 8
  %98 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 4
  br label %100

100:                                              ; preds = %66, %30
  %101 = load i64, i64* @BLK_STS_OK, align 8
  store i64 %101, i64* %2, align 8
  br label %106

102:                                              ; preds = %64, %44
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %104 = call i32 @scsi_mq_free_sgtables(%struct.scsi_cmnd* %103)
  %105 = load i64, i64* %5, align 8
  store i64 %105, i64* %2, align 8
  br label %106

106:                                              ; preds = %102, %100, %28, %19
  %107 = load i64, i64* %2, align 8
  ret i64 %107
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i64 @scsi_init_sgtable(%struct.request*, i32*) #1

declare dso_local i64 @blk_integrity_rq(%struct.request*) #1

declare dso_local i32 @blk_rq_count_integrity_sg(i32, i32) #1

declare dso_local i64 @sg_alloc_table_chained(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @blk_rq_map_integrity_sg(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @queue_max_integrity_segments(i32) #1

declare dso_local i32 @scsi_mq_free_sgtables(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
