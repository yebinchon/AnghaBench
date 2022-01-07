; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_part_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_part_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { %struct.esas2r_disc_context*, i32, %struct.TYPE_6__* }
%struct.esas2r_disc_context = type { i64, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.atto_vdapart_info }
%struct.atto_vdapart_info = type { i64, i32* }

@.str = private unnamed_addr constant [13 x i8] c"part_num: %d\00", align 1
@VDA_MAX_PARTITIONS = common dso_local global i64 0, align 8
@DCS_RAID_GRP_INFO = common dso_local global i32 0, align 4
@VDAMGT_PART_INFO = common dso_local global i32 0, align 4
@esas2r_disc_part_info_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_disc_part_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_disc_part_info(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_request*, align 8
  %6 = alloca %struct.esas2r_disc_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atto_vdapart_info*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %5, align 8
  %9 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %10 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %9, i32 0, i32 0
  %11 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %10, align 8
  store %struct.esas2r_disc_context* %11, %struct.esas2r_disc_context** %6, align 8
  %12 = call i32 (...) @esas2r_trace_enter()
  %13 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %14 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @esas2r_trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %18 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VDA_MAX_PARTITIONS, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @DCS_RAID_GRP_INFO, align 4
  %24 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %25 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %27 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = call i32 (...) @esas2r_trace_exit()
  store i32 0, i32* %3, align 4
  br label %75

31:                                               ; preds = %2
  %32 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %33 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %34 = call i32 @esas2r_rq_init_request(%struct.esas2r_request* %32, %struct.esas2r_adapter* %33)
  %35 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %36 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.atto_vdapart_info* %40, %struct.atto_vdapart_info** %8, align 8
  %41 = load %struct.atto_vdapart_info*, %struct.atto_vdapart_info** %8, align 8
  %42 = call i32 @memset(%struct.atto_vdapart_info* %41, i32 0, i32 16)
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %44 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %45 = load i32, i32* @VDAMGT_PART_INFO, align 4
  %46 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %47 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @esas2r_build_mgt_req(%struct.esas2r_adapter* %43, %struct.esas2r_request* %44, i32 %45, i32 %48, i32 0, i32 16, i32* null)
  %50 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %51 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.atto_vdapart_info*, %struct.atto_vdapart_info** %8, align 8
  %54 = getelementptr inbounds %struct.atto_vdapart_info, %struct.atto_vdapart_info* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.atto_vdapart_info*, %struct.atto_vdapart_info** %8, align 8
  %56 = getelementptr inbounds %struct.atto_vdapart_info, %struct.atto_vdapart_info* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %60 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = call i32 @memcpy(i32* %58, i32* %62, i32 8)
  %64 = load i32, i32* @esas2r_disc_part_info_cb, align 4
  %65 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %66 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %68 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %69 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %68, i32 0, i32 0
  store %struct.esas2r_disc_context* %67, %struct.esas2r_disc_context** %69, align 8
  %70 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %71 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %72 = call i32 @esas2r_disc_start_request(%struct.esas2r_adapter* %70, %struct.esas2r_request* %71)
  store i32 %72, i32* %7, align 4
  %73 = call i32 (...) @esas2r_trace_exit()
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %31, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_trace(i8*, i64) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

declare dso_local i32 @esas2r_rq_init_request(%struct.esas2r_request*, %struct.esas2r_adapter*) #1

declare dso_local i32 @memset(%struct.atto_vdapart_info*, i32, i32) #1

declare dso_local i32 @esas2r_build_mgt_req(%struct.esas2r_adapter*, %struct.esas2r_request*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @esas2r_disc_start_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
