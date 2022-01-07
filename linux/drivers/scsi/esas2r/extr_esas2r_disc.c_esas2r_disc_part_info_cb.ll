; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_part_info_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_part_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, %struct.TYPE_10__*, %struct.TYPE_7__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.atto_vdapart_info }
%struct.atto_vdapart_info = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.esas2r_disc_context = type { i32, i64, i8*, i32, i32, i32 }

@RS_SCAN_GEN = common dso_local global i64 0, align 8
@DCS_RAID_GRP_INFO = common dso_local global i8* null, align 8
@RS_SUCCESS = common dso_local global i64 0, align 8
@RS_PART_LAST = common dso_local global i64 0, align 8
@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"A request for RAID group partition info failed - status:%d\00", align 1
@DCF_POLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_disc_part_info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_disc_part_info_cb(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_disc_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atto_vdapart_info*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.esas2r_disc_context*
  store %struct.esas2r_disc_context* %11, %struct.esas2r_disc_context** %5, align 8
  %12 = call i32 (...) @esas2r_trace_enter()
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %18 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RS_SCAN_GEN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %24 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %29 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %31 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i8*, i8** @DCS_RAID_GRP_INFO, align 8
  %33 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %34 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  br label %87

35:                                               ; preds = %2
  %36 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %37 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RS_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %43 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store %struct.atto_vdapart_info* %47, %struct.atto_vdapart_info** %7, align 8
  %48 = load %struct.atto_vdapart_info*, %struct.atto_vdapart_info** %7, align 8
  %49 = getelementptr inbounds %struct.atto_vdapart_info, %struct.atto_vdapart_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %52 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.atto_vdapart_info*, %struct.atto_vdapart_info** %7, align 8
  %54 = getelementptr inbounds %struct.atto_vdapart_info, %struct.atto_vdapart_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %58 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %60 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %61 = call i32 @esas2r_targ_db_add_raid(%struct.esas2r_adapter* %59, %struct.esas2r_disc_context* %60)
  %62 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %63 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %86

66:                                               ; preds = %35
  %67 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %68 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RS_PART_LAST, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %74 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %75 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @esas2r_log(i32 %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %72, %66
  %79 = load i8*, i8** @DCS_RAID_GRP_INFO, align 8
  %80 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %81 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %83 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %78, %41
  br label %87

87:                                               ; preds = %86, %22
  %88 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %89 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %90 = call i32 @esas2r_rq_destroy_request(%struct.esas2r_request* %88, %struct.esas2r_adapter* %89)
  %91 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %92 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DCF_POLLED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %87
  %98 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %99 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %100 = call i32 @esas2r_disc_continue(%struct.esas2r_adapter* %98, %struct.esas2r_request* %99)
  br label %101

101:                                              ; preds = %97, %87
  %102 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %102, i32 0, i32 0
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = call i32 (...) @esas2r_trace_exit()
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @esas2r_targ_db_add_raid(%struct.esas2r_adapter*, %struct.esas2r_disc_context*) #1

declare dso_local i32 @esas2r_log(i32, i8*, i64) #1

declare dso_local i32 @esas2r_rq_destroy_request(%struct.esas2r_request*, %struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_disc_continue(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
