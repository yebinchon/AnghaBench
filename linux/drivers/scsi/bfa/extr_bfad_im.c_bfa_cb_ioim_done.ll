; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_ioim_s = type { i32 }
%struct.scsi_cmnd = type { i32, i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_3__ = type { i64, %struct.bfad_itnim_data_s*, i32* }
%struct.bfad_itnim_data_s = type { %struct.bfad_itnim_s* }
%struct.bfad_itnim_s = type { i32 }
%struct.bfad_s = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@bfa_lun_queue_depth = common dso_local global i64 0, align 8
@SAM_STAT_TASK_SET_FULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cb_ioim_done(i8* %0, %struct.bfad_ioim_s* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfad_ioim_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_cmnd*, align 8
  %16 = alloca %struct.bfad_s*, align 8
  %17 = alloca %struct.bfad_itnim_data_s*, align 8
  %18 = alloca %struct.bfad_itnim_s*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.bfad_ioim_s* %1, %struct.bfad_ioim_s** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load %struct.bfad_ioim_s*, %struct.bfad_ioim_s** %9, align 8
  %21 = bitcast %struct.bfad_ioim_s* %20 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %21, %struct.scsi_cmnd** %15, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.bfad_s*
  store %struct.bfad_s* %23, %struct.bfad_s** %16, align 8
  %24 = load i32, i32* @DID_OK, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %97 [
    i32 130, label %26
    i32 128, label %87
    i32 129, label %92
  ]

26:                                               ; preds = %7
  %27 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @bfa_trc(%struct.bfad_s* %27, i32 %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %31 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %30, i32 0)
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @bfa_trc(%struct.bfad_s* %35, i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %34
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @memcpy(i32 %46, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %26
  %51 = load i32, i32* %14, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @bfa_trc(%struct.bfad_s* %54, i32 %55)
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %57, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @SAM_STAT_GOOD, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %68 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %67)
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %77 = call i32 @bfa_trc(%struct.bfad_s* %76, i32 0)
  %78 = load i32, i32* @DID_ERROR, align 4
  store i32 %78, i32* %19, align 4
  br label %79

79:                                               ; preds = %75, %66, %62, %53
  br label %80

80:                                               ; preds = %79, %50
  %81 = load i32, i32* %19, align 4
  %82 = shl i32 %81, 16
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %102

87:                                               ; preds = %7
  %88 = load i32, i32* @DID_TIME_OUT, align 4
  %89 = shl i32 %88, 16
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %102

92:                                               ; preds = %7
  %93 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %94 = shl i32 %93, 16
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %102

97:                                               ; preds = %7
  %98 = load i32, i32* @DID_ERROR, align 4
  %99 = shl i32 %98, 16
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %92, %87, %80
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %111 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %110)
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 4
  store i32* null, i32** %114, align 8
  %115 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bfa_trc(%struct.bfad_s* %115, i32 %118)
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 3
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %123, align 8
  store %struct.bfad_itnim_data_s* %124, %struct.bfad_itnim_data_s** %17, align 8
  %125 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %17, align 8
  %126 = icmp ne %struct.bfad_itnim_data_s* %125, null
  br i1 %126, label %127, label %170

127:                                              ; preds = %112
  %128 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %17, align 8
  %129 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %128, i32 0, i32 0
  %130 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %129, align 8
  store %struct.bfad_itnim_s* %130, %struct.bfad_itnim_s** %18, align 8
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %152, label %135

135:                                              ; preds = %127
  %136 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %18, align 8
  %137 = icmp ne %struct.bfad_itnim_s* %136, null
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load i64, i64* @bfa_lun_queue_depth, align 8
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 3
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %139, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %18, align 8
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %149 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %148, i32 0, i32 3
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = call i32 @bfad_ramp_up_qdepth(%struct.bfad_itnim_s* %147, %struct.TYPE_3__* %150)
  br label %169

152:                                              ; preds = %138, %135, %127
  %153 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %154 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @SAM_STAT_TASK_SET_FULL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %18, align 8
  %161 = icmp ne %struct.bfad_itnim_s* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %18, align 8
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %165 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %164, i32 0, i32 3
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = call i32 @bfad_handle_qfull(%struct.bfad_itnim_s* %163, %struct.TYPE_3__* %166)
  br label %168

168:                                              ; preds = %162, %159, %152
  br label %169

169:                                              ; preds = %168, %146
  br label %170

170:                                              ; preds = %169, %112
  %171 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %172 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %171, i32 0, i32 2
  %173 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %172, align 8
  %174 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %175 = call i32 %173(%struct.scsi_cmnd* %174)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @bfad_ramp_up_qdepth(%struct.bfad_itnim_s*, %struct.TYPE_3__*) #1

declare dso_local i32 @bfad_handle_qfull(%struct.bfad_itnim_s*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
