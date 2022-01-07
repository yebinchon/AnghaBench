; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_io_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_io_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.request*, %struct.TYPE_3__* }
%struct.request = type { i32 }
%struct.TYPE_3__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BLK_STS_OK = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%u sectors total, %d bytes done.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Bytes remaining after failed, no-retry command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_io_completion(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  store %struct.request_queue* %16, %struct.request_queue** %6, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load %struct.request*, %struct.request** %18, align 8
  store %struct.request* %19, %struct.request** %7, align 8
  %20 = load i64, i64* @BLK_STS_OK, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @scsi_io_completion_nz_result(%struct.scsi_cmnd* %25, i32 %26, i64* %8)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.request*, %struct.request** %7, align 8
  %30 = call i32 @blk_rq_is_passthrough(%struct.request* %29)
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.request*, %struct.request** %7, align 8
  %38 = call %struct.TYPE_4__* @scsi_req(%struct.request* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %43 = load %struct.request*, %struct.request** %7, align 8
  %44 = call i32 @blk_rq_sectors(%struct.request* %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @scmd_printk(i32 %41, %struct.scsi_cmnd* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = call i32 @SCSI_LOG_HLCOMPLETE(i32 1, i32 %46)
  %48 = load %struct.request*, %struct.request** %7, align 8
  %49 = call i32 @blk_rq_bytes(%struct.request* %48)
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %40
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @BLK_STS_OK, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %51, %40
  %56 = phi i1 [ true, %40 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.request*, %struct.request** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @scsi_end_request(%struct.request* %61, i64 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %108

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %55
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %77 = call i64 @scsi_noretry_cmd(%struct.scsi_cmnd* %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.request*, %struct.request** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.request*, %struct.request** %7, align 8
  %88 = call i32 @blk_rq_bytes(%struct.request* %87)
  %89 = call i64 @scsi_end_request(%struct.request* %85, i64 %86, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %84
  br label %108

94:                                               ; preds = %79
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i64 @likely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %102 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %103 = call i32 @scsi_io_completion_reprep(%struct.scsi_cmnd* %101, %struct.request_queue* %102)
  br label %108

104:                                              ; preds = %94
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @scsi_io_completion_action(%struct.scsi_cmnd* %105, i32 %106)
  br label %108

108:                                              ; preds = %70, %93, %104, %100
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scsi_io_completion_nz_result(%struct.scsi_cmnd*, i32, i64*) #1

declare dso_local i32 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local %struct.TYPE_4__* @scsi_req(%struct.request*) #1

declare dso_local i32 @SCSI_LOG_HLCOMPLETE(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @scsi_end_request(%struct.request*, i64, i32) #1

declare dso_local i64 @scsi_noretry_cmd(%struct.scsi_cmnd*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @scsi_io_completion_reprep(%struct.scsi_cmnd*, %struct.request_queue*) #1

declare dso_local i32 @scsi_io_completion_action(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
