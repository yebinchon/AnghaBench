; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_rdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsis_cmd = type { %struct.iu_entry* }
%struct.iu_entry = type { %struct.srp_target* }
%struct.srp_target = type { %struct.scsi_info* }
%struct.scsi_info = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.srp_direct_buf = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"rdma: ran out of client memory descriptors\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"rdma: ran out of scatter/gather list\0A\00", align 1
@max_vdma_size = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@REMOTE = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i64 0, align 8
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@CLIENT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"rdma: h_copy_rdma failed, rc %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"rdma: unknown error %ld from h_copy_rdma\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvscsis_cmd*, %struct.scatterlist*, i32, %struct.srp_direct_buf*, i32, i32, i32)* @ibmvscsis_rdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsis_rdma(%struct.ibmvscsis_cmd* %0, %struct.scatterlist* %1, i32 %2, %struct.srp_direct_buf* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibmvscsis_cmd*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.srp_direct_buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iu_entry*, align 8
  %17 = alloca %struct.srp_target*, align 8
  %18 = alloca %struct.scsi_info*, align 8
  %19 = alloca %struct.scatterlist*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.ibmvscsis_cmd* %0, %struct.ibmvscsis_cmd** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.srp_direct_buf* %3, %struct.srp_direct_buf** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %28 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %9, align 8
  %29 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %28, i32 0, i32 0
  %30 = load %struct.iu_entry*, %struct.iu_entry** %29, align 8
  store %struct.iu_entry* %30, %struct.iu_entry** %16, align 8
  %31 = load %struct.iu_entry*, %struct.iu_entry** %16, align 8
  %32 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %31, i32 0, i32 0
  %33 = load %struct.srp_target*, %struct.srp_target** %32, align 8
  store %struct.srp_target* %33, %struct.srp_target** %17, align 8
  %34 = load %struct.srp_target*, %struct.srp_target** %17, align 8
  %35 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %34, i32 0, i32 0
  %36 = load %struct.scsi_info*, %struct.scsi_info** %35, align 8
  store %struct.scsi_info* %36, %struct.scsi_info** %18, align 8
  store i64 0, i64* %27, align 8
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %233

40:                                               ; preds = %7
  %41 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %41, %struct.scatterlist** %19, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i32 0, i32* %25, align 4
  %42 = load i32, i32* %15, align 4
  %43 = zext i32 %42 to i64
  store i64 %43, i64* %26, align 8
  br label %44

44:                                               ; preds = %226, %40
  %45 = load i64, i64* %23, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load i32, i32* %25, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %53 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %52, i32 0, i32 1
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %55 = load i64, i64* @EIO, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %27, align 8
  br label %230

57:                                               ; preds = %47
  %58 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %59 = load i32, i32* %25, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %58, i64 %60
  %62 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @be64_to_cpu(i32 %63)
  store i64 %64, i64* %20, align 8
  %65 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %66 = load i32, i32* %25, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %65, i64 %67
  %69 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @be32_to_cpu(i32 %70)
  store i64 %71, i64* %23, align 8
  br label %72

72:                                               ; preds = %57, %44
  %73 = load i64, i64* %24, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %77 = icmp ne %struct.scatterlist* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %80 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %79, i32 0, i32 1
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i64, i64* @EIO, align 8
  %83 = sub nsw i64 0, %82
  store i64 %83, i64* %27, align 8
  br label %230

84:                                               ; preds = %75
  %85 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %86 = call i64 @sg_dma_address(%struct.scatterlist* %85)
  store i64 %86, i64* %21, align 8
  %87 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %88 = call i64 @sg_dma_len(%struct.scatterlist* %87)
  store i64 %88, i64* %24, align 8
  br label %89

89:                                               ; preds = %84, %72
  %90 = load i64, i64* %26, align 8
  store i64 %90, i64* %22, align 8
  %91 = load i64, i64* %22, align 8
  %92 = load i64, i64* %23, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i64, i64* %23, align 8
  store i64 %95, i64* %22, align 8
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i64, i64* %22, align 8
  %98 = load i64, i64* %24, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i64, i64* %24, align 8
  store i64 %101, i64* %22, align 8
  br label %102

102:                                              ; preds = %100, %96
  %103 = load i64, i64* %22, align 8
  %104 = load i64, i64* @max_vdma_size, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i64, i64* @max_vdma_size, align 8
  store i64 %107, i64* %22, align 8
  br label %108

108:                                              ; preds = %106, %102
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @DMA_TO_DEVICE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %108
  %113 = load i64, i64* %22, align 8
  %114 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %115 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i64, i64* @REMOTE, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %20, align 8
  %123 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %124 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load i64, i64* @LOCAL, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %21, align 8
  %132 = call i64 @h_copy_rdma(i64 %113, i32 %121, i64 %122, i32 %130, i64 %131)
  store i64 %132, i64* %27, align 8
  br label %156

133:                                              ; preds = %108
  %134 = call i32 (...) @isync()
  %135 = call i32 (...) @dma_wmb()
  %136 = load i64, i64* %22, align 8
  %137 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %138 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load i64, i64* @LOCAL, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %21, align 8
  %146 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %147 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i64, i64* @REMOTE, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %20, align 8
  %155 = call i64 @h_copy_rdma(i64 %136, i32 %144, i64 %145, i32 %153, i64 %154)
  store i64 %155, i64* %27, align 8
  br label %156

156:                                              ; preds = %133, %112
  %157 = load i64, i64* %27, align 8
  switch i64 %157, label %182 [
    i64 128, label %158
    i64 130, label %159
    i64 129, label %159
    i64 131, label %159
  ]

158:                                              ; preds = %156
  br label %187

159:                                              ; preds = %156, %156, %156
  %160 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %161 = call i32 @connection_broken(%struct.scsi_info* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %165 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %164, i32 0, i32 2
  %166 = call i32 @spin_lock_bh(i32* %165)
  %167 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %168 = load i32, i32* @CLIENT_FAILED, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %171 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %175 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %174, i32 0, i32 2
  %176 = call i32 @spin_unlock_bh(i32* %175)
  br label %177

177:                                              ; preds = %163, %159
  %178 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %179 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %178, i32 0, i32 1
  %180 = load i64, i64* %27, align 8
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %179, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %180)
  br label %187

182:                                              ; preds = %156
  %183 = load %struct.scsi_info*, %struct.scsi_info** %18, align 8
  %184 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %183, i32 0, i32 1
  %185 = load i64, i64* %27, align 8
  %186 = call i32 (i32*, i8*, ...) @dev_err(i32* %184, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %185)
  br label %187

187:                                              ; preds = %182, %177, %158
  %188 = load i64, i64* %27, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %225, label %190

190:                                              ; preds = %187
  %191 = load i64, i64* %22, align 8
  %192 = load i64, i64* %26, align 8
  %193 = sub nsw i64 %192, %191
  store i64 %193, i64* %26, align 8
  %194 = load i64, i64* %26, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %190
  %197 = load i64, i64* %22, align 8
  %198 = load i64, i64* %23, align 8
  %199 = sub nsw i64 %198, %197
  store i64 %199, i64* %23, align 8
  %200 = load i64, i64* %23, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32, i32* %25, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %25, align 4
  br label %209

205:                                              ; preds = %196
  %206 = load i64, i64* %22, align 8
  %207 = load i64, i64* %20, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %20, align 8
  br label %209

209:                                              ; preds = %205, %202
  %210 = load i64, i64* %22, align 8
  %211 = load i64, i64* %24, align 8
  %212 = sub nsw i64 %211, %210
  store i64 %212, i64* %24, align 8
  %213 = load i64, i64* %24, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %217 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %216)
  store %struct.scatterlist* %217, %struct.scatterlist** %19, align 8
  br label %222

218:                                              ; preds = %209
  %219 = load i64, i64* %22, align 8
  %220 = load i64, i64* %21, align 8
  %221 = add nsw i64 %220, %219
  store i64 %221, i64* %21, align 8
  br label %222

222:                                              ; preds = %218, %215
  br label %224

223:                                              ; preds = %190
  br label %230

224:                                              ; preds = %222
  br label %225

225:                                              ; preds = %224, %187
  br label %226

226:                                              ; preds = %225
  %227 = load i64, i64* %27, align 8
  %228 = icmp ne i64 %227, 0
  %229 = xor i1 %228, true
  br i1 %229, label %44, label %230

230:                                              ; preds = %226, %223, %78, %51
  %231 = load i64, i64* %27, align 8
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %8, align 4
  br label %233

233:                                              ; preds = %230, %39
  %234 = load i32, i32* %8, align 4
  ret i32 %234
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i64 @h_copy_rdma(i64, i32, i64, i32, i64) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @connection_broken(%struct.scsi_info*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
