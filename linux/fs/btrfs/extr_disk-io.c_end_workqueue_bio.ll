; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_end_workqueue_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_end_workqueue_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.btrfs_end_io_wq* }
%struct.btrfs_end_io_wq = type { i64, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.btrfs_workqueue*, %struct.btrfs_workqueue*, %struct.btrfs_workqueue*, %struct.btrfs_workqueue*, %struct.btrfs_workqueue*, %struct.btrfs_workqueue*, %struct.btrfs_workqueue* }
%struct.btrfs_workqueue = type { i32 }

@REQ_OP_WRITE = common dso_local global i64 0, align 8
@BTRFS_WQ_ENDIO_METADATA = common dso_local global i64 0, align 8
@btrfs_endio_meta_write_helper = common dso_local global i32 0, align 4
@BTRFS_WQ_ENDIO_FREE_SPACE = common dso_local global i64 0, align 8
@btrfs_freespace_write_helper = common dso_local global i32 0, align 4
@BTRFS_WQ_ENDIO_RAID56 = common dso_local global i64 0, align 8
@btrfs_endio_raid56_helper = common dso_local global i32 0, align 4
@btrfs_endio_write_helper = common dso_local global i32 0, align 4
@BTRFS_WQ_ENDIO_DIO_REPAIR = common dso_local global i64 0, align 8
@btrfs_endio_repair_helper = common dso_local global i32 0, align 4
@btrfs_endio_meta_helper = common dso_local global i32 0, align 4
@btrfs_endio_helper = common dso_local global i32 0, align 4
@end_workqueue_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @end_workqueue_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_workqueue_bio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.btrfs_end_io_wq*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_workqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %8, align 8
  store %struct.btrfs_end_io_wq* %9, %struct.btrfs_end_io_wq** %3, align 8
  %10 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %10, i32 0, i32 3
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = call i64 @bio_op(%struct.bio* %18)
  %20 = load i64, i64* @REQ_OP_WRITE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %1
  %23 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BTRFS_WQ_ENDIO_METADATA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 6
  %31 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %30, align 8
  store %struct.btrfs_workqueue* %31, %struct.btrfs_workqueue** %5, align 8
  %32 = load i32, i32* @btrfs_endio_meta_write_helper, align 4
  store i32 %32, i32* %6, align 4
  br label %62

33:                                               ; preds = %22
  %34 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BTRFS_WQ_ENDIO_FREE_SPACE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 5
  %42 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %41, align 8
  store %struct.btrfs_workqueue* %42, %struct.btrfs_workqueue** %5, align 8
  %43 = load i32, i32* @btrfs_freespace_write_helper, align 4
  store i32 %43, i32* %6, align 4
  br label %61

44:                                               ; preds = %33
  %45 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %46 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BTRFS_WQ_ENDIO_RAID56, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 2
  %53 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %52, align 8
  store %struct.btrfs_workqueue* %53, %struct.btrfs_workqueue** %5, align 8
  %54 = load i32, i32* @btrfs_endio_raid56_helper, align 4
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %44
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %57 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %56, i32 0, i32 4
  %58 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %57, align 8
  store %struct.btrfs_workqueue* %58, %struct.btrfs_workqueue** %5, align 8
  %59 = load i32, i32* @btrfs_endio_write_helper, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %28
  br label %106

63:                                               ; preds = %1
  %64 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %65 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BTRFS_WQ_ENDIO_DIO_REPAIR, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 3
  %75 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %74, align 8
  store %struct.btrfs_workqueue* %75, %struct.btrfs_workqueue** %5, align 8
  %76 = load i32, i32* @btrfs_endio_repair_helper, align 4
  store i32 %76, i32* %6, align 4
  br label %105

77:                                               ; preds = %63
  %78 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %79 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @BTRFS_WQ_ENDIO_RAID56, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %85 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %84, i32 0, i32 2
  %86 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %85, align 8
  store %struct.btrfs_workqueue* %86, %struct.btrfs_workqueue** %5, align 8
  %87 = load i32, i32* @btrfs_endio_raid56_helper, align 4
  store i32 %87, i32* %6, align 4
  br label %104

88:                                               ; preds = %77
  %89 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %90 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %95 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %94, i32 0, i32 1
  %96 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %95, align 8
  store %struct.btrfs_workqueue* %96, %struct.btrfs_workqueue** %5, align 8
  %97 = load i32, i32* @btrfs_endio_meta_helper, align 4
  store i32 %97, i32* %6, align 4
  br label %103

98:                                               ; preds = %88
  %99 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %100 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %99, i32 0, i32 0
  %101 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %100, align 8
  store %struct.btrfs_workqueue* %101, %struct.btrfs_workqueue** %5, align 8
  %102 = load i32, i32* @btrfs_endio_helper, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %104, %72
  br label %106

106:                                              ; preds = %105, %62
  %107 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %108 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %107, i32 0, i32 1
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @end_workqueue_fn, align 4
  %111 = call i32 @btrfs_init_work(i32* %108, i32 %109, i32 %110, i32* null, i32* null)
  %112 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %5, align 8
  %113 = load %struct.btrfs_end_io_wq*, %struct.btrfs_end_io_wq** %3, align 8
  %114 = getelementptr inbounds %struct.btrfs_end_io_wq, %struct.btrfs_end_io_wq* %113, i32 0, i32 1
  %115 = call i32 @btrfs_queue_work(%struct.btrfs_workqueue* %112, i32* %114)
  ret void
}

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @btrfs_init_work(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @btrfs_queue_work(%struct.btrfs_workqueue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
