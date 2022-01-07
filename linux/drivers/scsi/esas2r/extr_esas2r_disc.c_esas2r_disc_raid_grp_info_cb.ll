; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_raid_grp_info_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_raid_grp_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, %struct.TYPE_10__*, %struct.TYPE_7__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.atto_vda_grp_info }
%struct.atto_vda_grp_info = type { i64, i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.esas2r_disc_context = type { i32, i32, i64, i64, i8*, i8*, i32*, i64, i32 }

@RS_SCAN_GEN = common dso_local global i64 0, align 8
@RS_SUCCESS = common dso_local global i64 0, align 8
@VDA_GRP_STAT_ONLINE = common dso_local global i64 0, align 8
@VDA_GRP_STAT_DEGRADED = common dso_local global i64 0, align 8
@DCS_PART_INFO = common dso_local global i32 0, align 4
@RS_GRP_INVALID = common dso_local global i64 0, align 8
@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"A request for RAID group info failed - returned with %x\00", align 1
@DCS_PT_DEV_INFO = common dso_local global i32 0, align 4
@DCF_POLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_disc_raid_grp_info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_disc_raid_grp_info_cb(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_disc_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atto_vda_grp_info*, align 8
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
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %24 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %29 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %31 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  br label %108

32:                                               ; preds = %2
  %33 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %34 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RS_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %89

38:                                               ; preds = %32
  %39 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %40 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store %struct.atto_vda_grp_info* %44, %struct.atto_vda_grp_info** %7, align 8
  %45 = load %struct.atto_vda_grp_info*, %struct.atto_vda_grp_info** %7, align 8
  %46 = getelementptr inbounds %struct.atto_vda_grp_info, %struct.atto_vda_grp_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VDA_GRP_STAT_ONLINE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %38
  %51 = load %struct.atto_vda_grp_info*, %struct.atto_vda_grp_info** %7, align 8
  %52 = getelementptr inbounds %struct.atto_vda_grp_info, %struct.atto_vda_grp_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VDA_GRP_STAT_DEGRADED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %58 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %88

61:                                               ; preds = %50, %38
  %62 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %63 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load %struct.atto_vda_grp_info*, %struct.atto_vda_grp_info** %7, align 8
  %67 = getelementptr inbounds %struct.atto_vda_grp_info, %struct.atto_vda_grp_info* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = call i32 @memcpy(i32* %65, i32* %69, i32 8)
  %71 = load %struct.atto_vda_grp_info*, %struct.atto_vda_grp_info** %7, align 8
  %72 = getelementptr inbounds %struct.atto_vda_grp_info, %struct.atto_vda_grp_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le32_to_cpu(i32 %73)
  %75 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %76 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load %struct.atto_vda_grp_info*, %struct.atto_vda_grp_info** %7, align 8
  %78 = getelementptr inbounds %struct.atto_vda_grp_info, %struct.atto_vda_grp_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @le32_to_cpu(i32 %79)
  %81 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %82 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @DCS_PART_INFO, align 4
  %84 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %85 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %87 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %61, %56
  br label %107

89:                                               ; preds = %32
  %90 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %91 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RS_GRP_INVALID, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %97 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %98 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @esas2r_log(i32 %96, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %103 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @DCS_PT_DEV_INFO, align 4
  %105 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %106 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %88
  br label %108

108:                                              ; preds = %107, %22
  %109 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %110 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %111 = call i32 @esas2r_rq_destroy_request(%struct.esas2r_request* %109, %struct.esas2r_adapter* %110)
  %112 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %113 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DCF_POLLED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %108
  %119 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %120 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %121 = call i32 @esas2r_disc_continue(%struct.esas2r_adapter* %119, %struct.esas2r_request* %120)
  br label %122

122:                                              ; preds = %118, %108
  %123 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %123, i32 0, i32 0
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = call i32 (...) @esas2r_trace_exit()
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

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
