; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_scsi_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_scsi_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_request = type { i32, %struct.scsi_tape* }
%struct.scsi_tape = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8*, i8*, i32, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.rq_map_data }
%struct.rq_map_data = type { i32 }
%struct.request = type { i32, i32, %struct.st_request*, i32, i32 }
%struct.scsi_request = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@REQ_OP_SCSI_OUT = common dso_local global i32 0, align 4
@REQ_OP_SCSI_IN = common dso_local global i32 0, align 4
@DRIVER_ERROR = common dso_local global i32 0, align 4
@RQF_QUIET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WRITE_6 = common dso_local global i8 0, align 1
@READ_6 = common dso_local global i8 0, align 1
@BLK_MAX_CDB = common dso_local global i32 0, align 4
@st_scsi_execute_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_request*, i8*, i32, i8*, i32, i32, i32)* @st_scsi_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_scsi_execute(%struct.st_request* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_request*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.request*, align 8
  %17 = alloca %struct.scsi_request*, align 8
  %18 = alloca %struct.rq_map_data*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.scsi_tape*, align 8
  store %struct.st_request* %0, %struct.st_request** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.st_request*, %struct.st_request** %9, align 8
  %22 = getelementptr inbounds %struct.st_request, %struct.st_request* %21, i32 0, i32 1
  %23 = load %struct.scsi_tape*, %struct.scsi_tape** %22, align 8
  %24 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.rq_map_data* %26, %struct.rq_map_data** %18, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.st_request*, %struct.st_request** %9, align 8
  %28 = getelementptr inbounds %struct.st_request, %struct.st_request* %27, i32 0, i32 1
  %29 = load %struct.scsi_tape*, %struct.scsi_tape** %28, align 8
  store %struct.scsi_tape* %29, %struct.scsi_tape** %20, align 8
  %30 = load %struct.st_request*, %struct.st_request** %9, align 8
  %31 = getelementptr inbounds %struct.st_request, %struct.st_request* %30, i32 0, i32 1
  %32 = load %struct.scsi_tape*, %struct.scsi_tape** %31, align 8
  %33 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %7
  %41 = load i32, i32* @REQ_OP_SCSI_OUT, align 4
  br label %44

42:                                               ; preds = %7
  %43 = load i32, i32* @REQ_OP_SCSI_IN, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call %struct.request* @blk_get_request(i32 %36, i32 %45, i32 0)
  store %struct.request* %46, %struct.request** %16, align 8
  %47 = load %struct.request*, %struct.request** %16, align 8
  %48 = call i64 @IS_ERR(%struct.request* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @DRIVER_ERROR, align 4
  %52 = shl i32 %51, 24
  store i32 %52, i32* %8, align 4
  br label %174

53:                                               ; preds = %44
  %54 = load %struct.request*, %struct.request** %16, align 8
  %55 = call %struct.scsi_request* @scsi_req(%struct.request* %54)
  store %struct.scsi_request* %55, %struct.scsi_request** %17, align 8
  %56 = load i32, i32* @RQF_QUIET, align 4
  %57 = load %struct.request*, %struct.request** %16, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.rq_map_data*, %struct.rq_map_data** %18, align 8
  %62 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %53
  %66 = load %struct.request*, %struct.request** %16, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.request*, %struct.request** %16, align 8
  %70 = load %struct.rq_map_data*, %struct.rq_map_data** %18, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @blk_rq_map_user(i32 %68, %struct.request* %69, %struct.rq_map_data* %70, i32* null, i32 %71, i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.request*, %struct.request** %16, align 8
  %78 = call i32 @blk_put_request(%struct.request* %77)
  %79 = load i32, i32* @DRIVER_ERROR, align 4
  %80 = shl i32 %79, 24
  store i32 %80, i32* %8, align 4
  br label %174

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %53
  %83 = load %struct.scsi_tape*, %struct.scsi_tape** %20, align 8
  %84 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 5
  %87 = call i32 @atomic64_inc(i32* %86)
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @WRITE_6, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %82
  %96 = load %struct.scsi_tape*, %struct.scsi_tape** %20, align 8
  %97 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @atomic_set(i32* %99, i32 %100)
  %102 = call i8* (...) @ktime_get()
  %103 = load %struct.scsi_tape*, %struct.scsi_tape** %20, align 8
  %104 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  store i8* %102, i8** %106, align 8
  br label %134

107:                                              ; preds = %82
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* @READ_6, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %107
  %116 = load %struct.scsi_tape*, %struct.scsi_tape** %20, align 8
  %117 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @atomic_set(i32* %119, i32 %120)
  %122 = call i8* (...) @ktime_get()
  %123 = load %struct.scsi_tape*, %struct.scsi_tape** %20, align 8
  %124 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i8* %122, i8** %126, align 8
  br label %133

127:                                              ; preds = %107
  %128 = call i8* (...) @ktime_get()
  %129 = load %struct.scsi_tape*, %struct.scsi_tape** %20, align 8
  %130 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i8* %128, i8** %132, align 8
  br label %133

133:                                              ; preds = %127, %115
  br label %134

134:                                              ; preds = %133, %95
  %135 = load %struct.request*, %struct.request** %16, align 8
  %136 = getelementptr inbounds %struct.request, %struct.request* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.st_request*, %struct.st_request** %9, align 8
  %139 = getelementptr inbounds %struct.st_request, %struct.st_request* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = call i32 @COMMAND_SIZE(i8 zeroext %142)
  %144 = load %struct.scsi_request*, %struct.scsi_request** %17, align 8
  %145 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.scsi_request*, %struct.scsi_request** %17, align 8
  %147 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @BLK_MAX_CDB, align 4
  %150 = call i32 @memset(i32 %148, i32 0, i32 %149)
  %151 = load %struct.scsi_request*, %struct.scsi_request** %17, align 8
  %152 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** %10, align 8
  %155 = load %struct.scsi_request*, %struct.scsi_request** %17, align 8
  %156 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @memcpy(i32 %153, i8* %154, i32 %157)
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.request*, %struct.request** %16, align 8
  %161 = getelementptr inbounds %struct.request, %struct.request* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load %struct.scsi_request*, %struct.scsi_request** %17, align 8
  %164 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.st_request*, %struct.st_request** %9, align 8
  %166 = load %struct.request*, %struct.request** %16, align 8
  %167 = getelementptr inbounds %struct.request, %struct.request* %166, i32 0, i32 2
  store %struct.st_request* %165, %struct.st_request** %167, align 8
  %168 = load %struct.request*, %struct.request** %16, align 8
  %169 = getelementptr inbounds %struct.request, %struct.request* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.request*, %struct.request** %16, align 8
  %172 = load i32, i32* @st_scsi_execute_end, align 4
  %173 = call i32 @blk_execute_rq_nowait(i32 %170, i32* null, %struct.request* %171, i32 1, i32 %172)
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %134, %76, %50
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local %struct.scsi_request* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_rq_map_user(i32, %struct.request*, %struct.rq_map_data*, i32*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @ktime_get(...) #1

declare dso_local i32 @COMMAND_SIZE(i8 zeroext) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
