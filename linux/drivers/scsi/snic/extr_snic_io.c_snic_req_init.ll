; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_req_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_req_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic_req_info = type { i64, i32, %struct.TYPE_6__, %struct.snic_req_info*, %struct.snic*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.snic = type { i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.snic_host_req = type { i64, i32, %struct.TYPE_6__, %struct.snic_host_req*, %struct.snic*, i32 }

@SNIC_REQ_CACHE_DFLT_SGL = common dso_local global i32 0, align 4
@SNIC_REQ_CACHE_MAX_SGL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to allocate memory from snic req pool id = %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@SNIC_MAX_SG_DESC_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Req_alloc:rqi = %p allocatd.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snic_req_info* @snic_req_init(%struct.snic* %0, i32 %1) #0 {
  %3 = alloca %struct.snic_req_info*, align 8
  %4 = alloca %struct.snic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.snic_req_info*, align 8
  store %struct.snic* %0, %struct.snic** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snic_req_info* null, %struct.snic_req_info** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SNIC_REQ_CACHE_DFLT_SGL, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SNIC_REQ_CACHE_DFLT_SGL, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SNIC_REQ_CACHE_MAX_SGL, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = load %struct.snic*, %struct.snic** %4, align 8
  %19 = getelementptr inbounds %struct.snic, %struct.snic* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.snic_req_info* @mempool_alloc(i32 %23, i32 %24)
  store %struct.snic_req_info* %25, %struct.snic_req_info** %7, align 8
  %26 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %27 = icmp ne %struct.snic_req_info* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %15
  %29 = load %struct.snic*, %struct.snic** %4, align 8
  %30 = getelementptr inbounds %struct.snic, %struct.snic* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = call i32 @atomic64_inc(i32* %32)
  %34 = load %struct.snic*, %struct.snic** %4, align 8
  %35 = getelementptr inbounds %struct.snic, %struct.snic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @SNIC_HOST_ERR(i32 %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  store %struct.snic_req_info* %39, %struct.snic_req_info** %3, align 8
  br label %130

40:                                               ; preds = %15
  %41 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %42 = call i32 @memset(%struct.snic_req_info* %41, i32 0, i32 48)
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %45 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @jiffies, align 4
  %47 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %48 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %50 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %49, i64 1
  %51 = bitcast %struct.snic_req_info* %50 to %struct.snic_host_req*
  %52 = bitcast %struct.snic_host_req* %51 to %struct.snic_req_info*
  %53 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %54 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %53, i32 0, i32 3
  store %struct.snic_req_info* %52, %struct.snic_req_info** %54, align 8
  %55 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %56 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %55, i32 0, i32 1
  store i32 48, i32* %56, align 8
  %57 = load %struct.snic*, %struct.snic** %4, align 8
  %58 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %59 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %58, i32 0, i32 4
  store %struct.snic* %57, %struct.snic** %59, align 8
  %60 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %61 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %60, i64 1
  %62 = bitcast %struct.snic_req_info* %61 to %struct.snic_host_req*
  %63 = bitcast %struct.snic_host_req* %62 to %struct.snic_req_info*
  %64 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %65 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %64, i32 0, i32 3
  store %struct.snic_req_info* %63, %struct.snic_req_info** %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %40
  br label %109

69:                                               ; preds = %40
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %74 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.snic*, %struct.snic** %4, align 8
  %81 = getelementptr inbounds %struct.snic, %struct.snic* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = call i32 @atomic64_read(i32* %83)
  %85 = icmp sgt i32 %79, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %69
  %87 = load %struct.snic*, %struct.snic** %4, align 8
  %88 = getelementptr inbounds %struct.snic, %struct.snic* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @atomic64_set(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %69
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SNIC_MAX_SG_DESC_CNT, align 4
  %96 = icmp sgt i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @SNIC_BUG_ON(i32 %97)
  %99 = load %struct.snic*, %struct.snic** %4, align 8
  %100 = getelementptr inbounds %struct.snic, %struct.snic* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = call i32 @atomic64_inc(i32* %107)
  br label %109

109:                                              ; preds = %93, %68
  %110 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %111 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %110, i32 0, i32 3
  %112 = load %struct.snic_req_info*, %struct.snic_req_info** %111, align 8
  %113 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %114 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memset(%struct.snic_req_info* %112, i32 0, i32 %115)
  %117 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %118 = ptrtoint %struct.snic_req_info* %117 to i64
  %119 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %120 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %119, i32 0, i32 3
  %121 = load %struct.snic_req_info*, %struct.snic_req_info** %120, align 8
  %122 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i64 %118, i64* %123, align 8
  %124 = load %struct.snic*, %struct.snic** %4, align 8
  %125 = getelementptr inbounds %struct.snic, %struct.snic* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  %128 = call i32 @SNIC_SCSI_DBG(i32 %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.snic_req_info* %127)
  %129 = load %struct.snic_req_info*, %struct.snic_req_info** %7, align 8
  store %struct.snic_req_info* %129, %struct.snic_req_info** %3, align 8
  br label %130

130:                                              ; preds = %109, %28
  %131 = load %struct.snic_req_info*, %struct.snic_req_info** %3, align 8
  ret %struct.snic_req_info* %131
}

declare dso_local %struct.snic_req_info* @mempool_alloc(i32, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.snic_req_info*, i32, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*, %struct.snic_req_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
