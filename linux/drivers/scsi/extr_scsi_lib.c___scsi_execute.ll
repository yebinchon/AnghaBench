; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c___scsi_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c___scsi_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32 }
%struct.request = type { i32, i32, i32, i32 }
%struct.scsi_request = type { i8*, i32, i32, i8*, i32, i64, i32 }

@DRIVER_ERROR = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@REQ_OP_SCSI_OUT = common dso_local global i32 0, align 4
@REQ_OP_SCSI_IN = common dso_local global i32 0, align 4
@BLK_MQ_REQ_PREEMPT = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@RQF_QUIET = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__scsi_execute(%struct.scsi_device* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, %struct.scsi_sense_hdr* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.scsi_device*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.scsi_sense_hdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.request*, align 8
  %27 = alloca %struct.scsi_request*, align 8
  %28 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32 %2, i32* %16, align 4
  store i8* %3, i8** %17, align 8
  store i32 %4, i32* %18, align 4
  store i8* %5, i8** %19, align 8
  store %struct.scsi_sense_hdr* %6, %struct.scsi_sense_hdr** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32* %11, i32** %25, align 8
  %29 = load i32, i32* @DRIVER_ERROR, align 4
  %30 = shl i32 %29, 24
  store i32 %30, i32* %28, align 4
  %31 = load %struct.scsi_device*, %struct.scsi_device** %14, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %12
  %38 = load i32, i32* @REQ_OP_SCSI_OUT, align 4
  br label %41

39:                                               ; preds = %12
  %40 = load i32, i32* @REQ_OP_SCSI_IN, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load i32, i32* @BLK_MQ_REQ_PREEMPT, align 4
  %44 = call %struct.request* @blk_get_request(i32 %33, i32 %42, i32 %43)
  store %struct.request* %44, %struct.request** %26, align 8
  %45 = load %struct.request*, %struct.request** %26, align 8
  %46 = call i64 @IS_ERR(%struct.request* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %28, align 4
  store i32 %49, i32* %13, align 4
  br label %175

50:                                               ; preds = %41
  %51 = load %struct.request*, %struct.request** %26, align 8
  %52 = call %struct.scsi_request* @scsi_req(%struct.request* %51)
  store %struct.scsi_request* %52, %struct.scsi_request** %27, align 8
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.scsi_device*, %struct.scsi_device** %14, align 8
  %57 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.request*, %struct.request** %26, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @GFP_NOIO, align 4
  %63 = call i64 @blk_rq_map_kern(i32 %58, %struct.request* %59, i8* %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %171

66:                                               ; preds = %55, %50
  %67 = load i8*, i8** %15, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @COMMAND_SIZE(i8 zeroext %69)
  %71 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %72 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %74 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %78 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(i8* %75, i8* %76, i32 %79)
  %81 = load i32, i32* %22, align 4
  %82 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %83 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.request*, %struct.request** %26, align 8
  %86 = getelementptr inbounds %struct.request, %struct.request* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load %struct.request*, %struct.request** %26, align 8
  %89 = getelementptr inbounds %struct.request, %struct.request* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* @RQF_QUIET, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.request*, %struct.request** %26, align 8
  %96 = getelementptr inbounds %struct.request, %struct.request* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.request*, %struct.request** %26, align 8
  %100 = getelementptr inbounds %struct.request, %struct.request* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.request*, %struct.request** %26, align 8
  %103 = call i32 @blk_execute_rq(i32 %101, i32* null, %struct.request* %102, i32 1)
  %104 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %105 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ugt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %66
  %109 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %110 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp ule i32 %111, %112
  br label %114

114:                                              ; preds = %108, %66
  %115 = phi i1 [ false, %66 ], [ %113, %108 ]
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load i8*, i8** %17, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %123 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = sub i32 %121, %124
  %126 = zext i32 %125 to i64
  %127 = getelementptr i8, i8* %120, i64 %126
  %128 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %129 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @memset(i8* %127, i32 0, i32 %130)
  br label %132

132:                                              ; preds = %119, %114
  %133 = load i32*, i32** %25, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %137 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %25, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %132
  %141 = load i8*, i8** %19, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %145 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load i8*, i8** %19, align 8
  %150 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %151 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %154 = call i32 @memcpy(i8* %149, i8* %152, i32 %153)
  br label %155

155:                                              ; preds = %148, %143, %140
  %156 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %20, align 8
  %157 = icmp ne %struct.scsi_sense_hdr* %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %160 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %163 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %20, align 8
  %166 = call i32 @scsi_normalize_sense(i8* %161, i64 %164, %struct.scsi_sense_hdr* %165)
  br label %167

167:                                              ; preds = %158, %155
  %168 = load %struct.scsi_request*, %struct.scsi_request** %27, align 8
  %169 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %28, align 4
  br label %171

171:                                              ; preds = %167, %65
  %172 = load %struct.request*, %struct.request** %26, align 8
  %173 = call i32 @blk_put_request(%struct.request* %172)
  %174 = load i32, i32* %28, align 4
  store i32 %174, i32* %13, align 4
  br label %175

175:                                              ; preds = %171, %48
  %176 = load i32, i32* %13, align 4
  ret i32 %176
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local %struct.scsi_request* @scsi_req(%struct.request*) #1

declare dso_local i64 @blk_rq_map_kern(i32, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @scsi_normalize_sense(i8*, i64, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
