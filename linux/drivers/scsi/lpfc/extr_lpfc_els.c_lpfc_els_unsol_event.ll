; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_unsol_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_unsol_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.lpfc_vport*, %struct.TYPE_7__ }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_iocbq = type { %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32*, %struct.TYPE_12__ }
%struct.lpfc_dmabuf = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IOSTAT_NEED_BUFFER = common dso_local global i64 0, align 8
@LPFC_ELS_HBQ = common dso_local global i32 0, align 4
@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@IOERR_RCV_BUFFER_WAITING = common dso_local global i32 0, align 4
@LPFC_SLI3_HBQ_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@CMD_IOCB_RCV_ELS64_CX = common dso_local global i64 0, align 8
@CMD_IOCB_RCV_SEQ64_CX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_els_unsol_event(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 1
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %13, align 8
  store %struct.lpfc_vport* %14, %struct.lpfc_vport** %7, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 3
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 0
  %19 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %18, align 8
  store %struct.lpfc_dmabuf* %19, %struct.lpfc_dmabuf** %10, align 8
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 1
  %22 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %21, align 8
  store %struct.lpfc_dmabuf* %22, %struct.lpfc_dmabuf** %11, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 0
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %26, align 8
  %27 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %28 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %27, i32 0, i32 1
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IOSTAT_NEED_BUFFER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = load i32, i32* @LPFC_ELS_HBQ, align 4
  %37 = call i32 @lpfc_sli_hbqbuf_add_hbqs(%struct.lpfc_hba* %35, i32 %36)
  br label %73

38:                                               ; preds = %3
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @IOERR_RCV_BUFFER_WAITING, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %44
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %55
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %70 = call i32 @lpfc_post_buffer(%struct.lpfc_hba* %68, %struct.lpfc_sli_ring* %69, i32 0)
  br label %71

71:                                               ; preds = %67, %55
  br label %203

72:                                               ; preds = %44, %38
  br label %73

73:                                               ; preds = %72, %34
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %73
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CMD_IOCB_RCV_ELS64_CX, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CMD_IOCB_RCV_SEQ64_CX, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %86, %80
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 65535
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 1
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %101, align 8
  store %struct.lpfc_vport* %102, %struct.lpfc_vport** %7, align 8
  br label %111

103:                                              ; preds = %92
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call %struct.lpfc_vport* @lpfc_find_vport_by_vpid(%struct.lpfc_hba* %104, i32 %109)
  store %struct.lpfc_vport* %110, %struct.lpfc_vport** %7, align 8
  br label %111

111:                                              ; preds = %103, %99
  br label %112

112:                                              ; preds = %111, %86, %73
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %203

118:                                              ; preds = %112
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %127 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %128 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %127, i32 0, i32 0
  store %struct.lpfc_dmabuf* %126, %struct.lpfc_dmabuf** %128, align 8
  br label %151

129:                                              ; preds = %118
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @getPaddr(i32 %136, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %146 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call %struct.lpfc_dmabuf* @lpfc_sli_ringpostbuf_get(%struct.lpfc_hba* %145, %struct.lpfc_sli_ring* %146, i32 %147)
  %149 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %150 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %149, i32 0, i32 0
  store %struct.lpfc_dmabuf* %148, %struct.lpfc_dmabuf** %150, align 8
  br label %151

151:                                              ; preds = %129, %125
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %153 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %154 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %155 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %156 = call i32 @lpfc_els_unsol_buffer(%struct.lpfc_hba* %152, %struct.lpfc_sli_ring* %153, %struct.lpfc_vport* %154, %struct.lpfc_iocbq* %155)
  %157 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %158 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %157, i32 0, i32 0
  %159 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %158, align 8
  %160 = icmp ne %struct.lpfc_dmabuf* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %151
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %163 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %164 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %163, i32 0, i32 0
  %165 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %164, align 8
  %166 = call i32 @lpfc_in_buf_free(%struct.lpfc_hba* %162, %struct.lpfc_dmabuf* %165)
  %167 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %168 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %167, i32 0, i32 0
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %168, align 8
  br label %169

169:                                              ; preds = %161, %151
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %203

176:                                              ; preds = %169
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %203

181:                                              ; preds = %176
  %182 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %183 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %184 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %183, i32 0, i32 0
  store %struct.lpfc_dmabuf* %182, %struct.lpfc_dmabuf** %184, align 8
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %186 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %187 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %188 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %189 = call i32 @lpfc_els_unsol_buffer(%struct.lpfc_hba* %185, %struct.lpfc_sli_ring* %186, %struct.lpfc_vport* %187, %struct.lpfc_iocbq* %188)
  %190 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %191 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %190, i32 0, i32 0
  %192 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %191, align 8
  %193 = icmp ne %struct.lpfc_dmabuf* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %181
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %196 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %197 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %196, i32 0, i32 0
  %198 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %197, align 8
  %199 = call i32 @lpfc_in_buf_free(%struct.lpfc_hba* %195, %struct.lpfc_dmabuf* %198)
  %200 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %201 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %200, i32 0, i32 0
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %201, align 8
  br label %202

202:                                              ; preds = %194, %181
  br label %203

203:                                              ; preds = %71, %117, %202, %176, %169
  ret void
}

declare dso_local i32 @lpfc_sli_hbqbuf_add_hbqs(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_post_buffer(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32) #1

declare dso_local %struct.lpfc_vport* @lpfc_find_vport_by_vpid(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @getPaddr(i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @lpfc_sli_ringpostbuf_get(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32) #1

declare dso_local i32 @lpfc_els_unsol_buffer(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_vport*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_in_buf_free(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
