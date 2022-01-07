; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_init_sgtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_init_sgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.scsi_data_buffer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SCSI_INLINE_SG_CNT = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.scsi_data_buffer*)* @scsi_init_sgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_init_sgtable(%struct.request* %0, %struct.scsi_data_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.scsi_data_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.scsi_data_buffer* %1, %struct.scsi_data_buffer** %5, align 8
  %7 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %5, align 8
  %8 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %7, i32 0, i32 1
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = call i32 @blk_rq_nr_phys_segments(%struct.request* %9)
  %11 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SCSI_INLINE_SG_CNT, align 4
  %16 = call i32 @sg_alloc_table_chained(%struct.TYPE_2__* %8, i32 %10, i32 %14, i32 %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @blk_rq_map_sg(i32 %24, %struct.request* %25, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.request*, %struct.request** %4, align 8
  %44 = call i32 @blk_rq_payload_bytes(%struct.request* %43)
  %45 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %21, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_alloc_table_chained(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.request*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_rq_payload_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
