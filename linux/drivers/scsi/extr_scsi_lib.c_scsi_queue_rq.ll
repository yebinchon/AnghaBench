; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_queue_data = type { i64, %struct.request* }
%struct.request = type { i32, %struct.request_queue* }
%struct.request_queue = type { %struct.scsi_device* }
%struct.scsi_device = type { i64, i32, i64, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@SDEV_RUNNING = common dso_local global i64 0, align 8
@RQF_DONTPREP = common dso_local global i32 0, align 4
@SCMD_STATE_COMPLETE = common dso_local global i32 0, align 4
@SCMD_PRESERVED_FLAGS = common dso_local global i32 0, align 4
@SCMD_TAGGED = common dso_local global i32 0, align 4
@SCMD_LAST = common dso_local global i32 0, align 4
@scsi_mq_done = common dso_local global i32 0, align 4
@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @scsi_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %13 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %14 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %13, i32 0, i32 1
  %15 = load %struct.request*, %struct.request** %14, align 8
  store %struct.request* %15, %struct.request** %6, align 8
  %16 = load %struct.request*, %struct.request** %6, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 1
  %18 = load %struct.request_queue*, %struct.request_queue** %17, align 8
  store %struct.request_queue* %18, %struct.request_queue** %7, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 0
  %21 = load %struct.scsi_device*, %struct.scsi_device** %20, align 8
  store %struct.scsi_device* %21, %struct.scsi_device** %8, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 3
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %23, align 8
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %9, align 8
  %25 = load %struct.request*, %struct.request** %6, align 8
  %26 = call %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request* %25)
  store %struct.scsi_cmnd* %26, %struct.scsi_cmnd** %10, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SDEV_RUNNING, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %37 = load %struct.request*, %struct.request** %6, align 8
  %38 = call i32 @scsi_prep_state_check(%struct.scsi_device* %36, %struct.request* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 129
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %139

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %2
  store i32 128, i32* %11, align 4
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %45 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %46 = call i32 @scsi_target_queue_ready(%struct.Scsi_Host* %44, %struct.scsi_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %139

49:                                               ; preds = %43
  %50 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %52 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %53 = call i32 @scsi_host_queue_ready(%struct.request_queue* %50, %struct.Scsi_Host* %51, %struct.scsi_device* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %127

56:                                               ; preds = %49
  %57 = load %struct.request*, %struct.request** %6, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RQF_DONTPREP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %56
  %64 = load %struct.request*, %struct.request** %6, align 8
  %65 = call i32 @scsi_mq_prep_fn(%struct.request* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 129
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %124

69:                                               ; preds = %63
  %70 = load i32, i32* @RQF_DONTPREP, align 4
  %71 = load %struct.request*, %struct.request** %6, align 8
  %72 = getelementptr inbounds %struct.request, %struct.request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %82

75:                                               ; preds = %56
  %76 = load i32, i32* @SCMD_STATE_COMPLETE, align 4
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 2
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.request*, %struct.request** %6, align 8
  %81 = call i32 @blk_mq_start_request(%struct.request* %80)
  br label %82

82:                                               ; preds = %75, %69
  %83 = load i32, i32* @SCMD_PRESERVED_FLAGS, align 4
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %89 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load i32, i32* @SCMD_TAGGED, align 4
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %82
  %99 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %100 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @SCMD_LAST, align 4
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %98
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %111 = call i32 @scsi_init_cmd_errh(%struct.scsi_cmnd* %110)
  %112 = load i32, i32* @scsi_mq_done, align 4
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %116 = call i32 @scsi_dispatch_cmd(%struct.scsi_cmnd* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @scsi_set_blocked(%struct.scsi_cmnd* %120, i32 %121)
  store i32 128, i32* %11, align 4
  br label %124

123:                                              ; preds = %109
  store i32 129, i32* %3, align 4
  br label %189

124:                                              ; preds = %119, %68
  %125 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %126 = call i32 @scsi_dec_host_busy(%struct.Scsi_Host* %125)
  br label %127

127:                                              ; preds = %124, %55
  %128 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %129 = call %struct.TYPE_3__* @scsi_target(%struct.scsi_device* %128)
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %135 = call %struct.TYPE_3__* @scsi_target(%struct.scsi_device* %134)
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = call i32 @atomic_dec(i32* %136)
  br label %138

138:                                              ; preds = %133, %127
  br label %139

139:                                              ; preds = %138, %48, %41
  %140 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %141 = call i32 @scsi_mq_put_budget(%struct.blk_mq_hw_ctx* %140)
  %142 = load i32, i32* %11, align 4
  switch i32 %142, label %156 [
    i32 129, label %143
    i32 128, label %144
  ]

143:                                              ; preds = %139
  br label %187

144:                                              ; preds = %139
  %145 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %146 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %145, i32 0, i32 1
  %147 = call i32 @atomic_read(i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %151 = call i32 @scsi_device_blocked(%struct.scsi_device* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %149, %144
  %154 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %153, %149
  br label %187

156:                                              ; preds = %139
  %157 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %158 = call i32 @scsi_device_online(%struct.scsi_device* %157)
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load i32, i32* @DID_NO_CONNECT, align 4
  %166 = shl i32 %165, 16
  %167 = load %struct.request*, %struct.request** %6, align 8
  %168 = call %struct.TYPE_4__* @scsi_req(%struct.request* %167)
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  br label %176

170:                                              ; preds = %156
  %171 = load i32, i32* @DID_ERROR, align 4
  %172 = shl i32 %171, 16
  %173 = load %struct.request*, %struct.request** %6, align 8
  %174 = call %struct.TYPE_4__* @scsi_req(%struct.request* %173)
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 4
  br label %176

176:                                              ; preds = %170, %164
  %177 = load %struct.request*, %struct.request** %6, align 8
  %178 = getelementptr inbounds %struct.request, %struct.request* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @RQF_DONTPREP, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %185 = call i32 @scsi_mq_uninit_cmd(%struct.scsi_cmnd* %184)
  br label %186

186:                                              ; preds = %183, %176
  br label %187

187:                                              ; preds = %186, %155, %143
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %123
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scsi_prep_state_check(%struct.scsi_device*, %struct.request*) #1

declare dso_local i32 @scsi_target_queue_ready(%struct.Scsi_Host*, %struct.scsi_device*) #1

declare dso_local i32 @scsi_host_queue_ready(%struct.request_queue*, %struct.Scsi_Host*, %struct.scsi_device*) #1

declare dso_local i32 @scsi_mq_prep_fn(%struct.request*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @scsi_init_cmd_errh(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dispatch_cmd(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_blocked(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_dec_host_busy(%struct.Scsi_Host*) #1

declare dso_local %struct.TYPE_3__* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @scsi_mq_put_budget(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @scsi_device_blocked(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local %struct.TYPE_4__* @scsi_req(%struct.request*) #1

declare dso_local i32 @scsi_mq_uninit_cmd(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
