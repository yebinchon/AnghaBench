; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32*, i32, i32 }
%struct.nvme_iod = type { i32, %struct.nvme_queue* }
%struct.nvme_queue = type { i32, %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.nvme_command = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@NVME_REG_CSTS = common dso_local global i64 0, align 8
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@BLK_EH_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"I/O %d QID %d timeout, completion polled\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"I/O %d QID %d timeout, disable controller\0A\00", align 1
@NVME_REQ_CANCELLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"I/O %d QID %d timeout, reset controller\0A\00", align 1
@nvme_admin_abort_cmd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"I/O %d QID %d timeout, aborting\0A\00", align 1
@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@NVME_QID_ANY = common dso_local global i32 0, align 4
@ADMIN_TIMEOUT = common dso_local global i32 0, align 4
@abort_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32)* @nvme_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_timeout(%struct.request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_iod*, align 8
  %7 = alloca %struct.nvme_queue*, align 8
  %8 = alloca %struct.nvme_dev*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.nvme_command, align 4
  %11 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %12)
  store %struct.nvme_iod* %13, %struct.nvme_iod** %6, align 8
  %14 = load %struct.nvme_iod*, %struct.nvme_iod** %6, align 8
  %15 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %14, i32 0, i32 1
  %16 = load %struct.nvme_queue*, %struct.nvme_queue** %15, align 8
  store %struct.nvme_queue* %16, %struct.nvme_queue** %7, align 8
  %17 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %18 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %17, i32 0, i32 1
  %19 = load %struct.nvme_dev*, %struct.nvme_dev** %18, align 8
  store %struct.nvme_dev* %19, %struct.nvme_dev** %8, align 8
  %20 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %21 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NVME_REG_CSTS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = call i32 (...) @mb()
  %27 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %28 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @to_pci_dev(i32 %29)
  %31 = call i64 @pci_channel_offline(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %34, i32* %3, align 4
  br label %209

35:                                               ; preds = %2
  %36 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @nvme_should_reset(%struct.nvme_dev* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @nvme_warn_reset(%struct.nvme_dev* %41, i32 %42)
  %44 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %45 = call i32 @nvme_dev_disable(%struct.nvme_dev* %44, i32 0)
  %46 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %47 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %46, i32 0, i32 0
  %48 = call i32 @nvme_reset_ctrl(%struct.TYPE_6__* %47)
  %49 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %49, i32* %3, align 4
  br label %209

50:                                               ; preds = %35
  %51 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %52 = load %struct.request*, %struct.request** %4, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nvme_poll_irqdisable(%struct.nvme_queue* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %59 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.request*, %struct.request** %4, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %66 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %69, i32* %3, align 4
  br label %209

70:                                               ; preds = %50
  %71 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %72 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %102 [
    i32 130, label %75
    i32 129, label %79
    i32 128, label %100
  ]

75:                                               ; preds = %70
  %76 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %77 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %76, i32 0, i32 0
  %78 = call i32 @nvme_change_ctrl_state(%struct.TYPE_6__* %77, i32 129)
  br label %79

79:                                               ; preds = %70, %75
  %80 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %81 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.request*, %struct.request** %4, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %88 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_warn_ratelimited(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %92 = call i32 @nvme_dev_disable(%struct.nvme_dev* %91, i32 1)
  %93 = load i32, i32* @NVME_REQ_CANCELLED, align 4
  %94 = load %struct.request*, %struct.request** %4, align 8
  %95 = call %struct.TYPE_7__* @nvme_req(%struct.request* %94)
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %99, i32* %3, align 4
  br label %209

100:                                              ; preds = %70
  %101 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %101, i32* %3, align 4
  br label %209

102:                                              ; preds = %70
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %105 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.nvme_iod*, %struct.nvme_iod** %6, align 8
  %110 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %108, %103
  %114 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %115 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.request*, %struct.request** %4, align 8
  %119 = getelementptr inbounds %struct.request, %struct.request* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %122 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dev_warn(i32 %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %126 = call i32 @nvme_dev_disable(%struct.nvme_dev* %125, i32 0)
  %127 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %128 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %127, i32 0, i32 0
  %129 = call i32 @nvme_reset_ctrl(%struct.TYPE_6__* %128)
  %130 = load i32, i32* @NVME_REQ_CANCELLED, align 4
  %131 = load %struct.request*, %struct.request** %4, align 8
  %132 = call %struct.TYPE_7__* @nvme_req(%struct.request* %131)
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %130
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %136, i32* %3, align 4
  br label %209

137:                                              ; preds = %108
  %138 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %139 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = call i64 @atomic_dec_return(i32* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %145 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = call i32 @atomic_inc(i32* %146)
  %148 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %148, i32* %3, align 4
  br label %209

149:                                              ; preds = %137
  %150 = load %struct.nvme_iod*, %struct.nvme_iod** %6, align 8
  %151 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = call i32 @memset(%struct.nvme_command* %10, i32 0, i32 12)
  %153 = load i32, i32* @nvme_admin_abort_cmd, align 4
  %154 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.request*, %struct.request** %4, align 8
  %157 = getelementptr inbounds %struct.request, %struct.request* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %162 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @cpu_to_le16(i32 %163)
  %165 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %168 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %167, i32 0, i32 1
  %169 = load %struct.nvme_dev*, %struct.nvme_dev** %168, align 8
  %170 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.request*, %struct.request** %4, align 8
  %174 = getelementptr inbounds %struct.request, %struct.request* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %177 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @dev_warn(i32 %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %175, i32 %178)
  %180 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %181 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %185 = load i32, i32* @NVME_QID_ANY, align 4
  %186 = call %struct.request* @nvme_alloc_request(i32 %183, %struct.nvme_command* %10, i32 %184, i32 %185)
  store %struct.request* %186, %struct.request** %9, align 8
  %187 = load %struct.request*, %struct.request** %9, align 8
  %188 = call i64 @IS_ERR(%struct.request* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %149
  %191 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %192 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = call i32 @atomic_inc(i32* %193)
  %195 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %195, i32* %3, align 4
  br label %209

196:                                              ; preds = %149
  %197 = load i32, i32* @ADMIN_TIMEOUT, align 4
  %198 = load %struct.request*, %struct.request** %9, align 8
  %199 = getelementptr inbounds %struct.request, %struct.request* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load %struct.request*, %struct.request** %9, align 8
  %201 = getelementptr inbounds %struct.request, %struct.request* %200, i32 0, i32 1
  store i32* null, i32** %201, align 8
  %202 = load %struct.request*, %struct.request** %9, align 8
  %203 = getelementptr inbounds %struct.request, %struct.request* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.request*, %struct.request** %9, align 8
  %206 = load i32, i32* @abort_endio, align 4
  %207 = call i32 @blk_execute_rq_nowait(i32 %204, i32* null, %struct.request* %205, i32 0, i32 %206)
  %208 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %196, %190, %143, %113, %100, %79, %57, %40, %33
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i64 @nvme_should_reset(%struct.nvme_dev*, i32) #1

declare dso_local i32 @nvme_warn_reset(%struct.nvme_dev*, i32) #1

declare dso_local i32 @nvme_dev_disable(%struct.nvme_dev*, i32) #1

declare dso_local i32 @nvme_reset_ctrl(%struct.TYPE_6__*) #1

declare dso_local i64 @nvme_poll_irqdisable(%struct.nvme_queue*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @nvme_change_ctrl_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @nvme_req(%struct.request*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.request* @nvme_alloc_request(i32, %struct.nvme_command*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
