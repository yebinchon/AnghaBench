; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_do_dasd_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_do_dasd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.dasd_queue*, %struct.TYPE_3__* }
%struct.dasd_queue = type { i32 }
%struct.TYPE_3__ = type { %struct.dasd_block* }
%struct.dasd_block = type { i32, i32, %struct.dasd_device* }
%struct.dasd_device = type { i64, i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)* }
%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_queue*, i32, %struct.request* }
%struct.request = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }

@BLK_STS_OK = common dso_local global i32 0, align 4
@DASD_STATE_READY = common dso_local global i64 0, align 8
@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"device not ready for request %p\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@DASD_FEATURE_FAILFAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"device stopped request %p\00", align 1
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Rejecting write request %p\00", align 1
@DASD_FLAG_ABORTALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Rejecting failfast request %p\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"CCW creation failed (rc=%ld) on request %p\00", align 1
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @do_dasd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dasd_request(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.blk_mq_queue_data*, align 8
  %5 = alloca %struct.dasd_block*, align 8
  %6 = alloca %struct.dasd_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.dasd_device*, align 8
  %9 = alloca %struct.dasd_ccw_req*, align 8
  %10 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %4, align 8
  %11 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.dasd_block*, %struct.dasd_block** %14, align 8
  store %struct.dasd_block* %15, %struct.dasd_block** %5, align 8
  %16 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %16, i32 0, i32 0
  %18 = load %struct.dasd_queue*, %struct.dasd_queue** %17, align 8
  store %struct.dasd_queue* %18, %struct.dasd_queue** %6, align 8
  %19 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %4, align 8
  %20 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %19, i32 0, i32 0
  %21 = load %struct.request*, %struct.request** %20, align 8
  store %struct.request* %21, %struct.request** %7, align 8
  %22 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %24 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %23, i32 0, i32 2
  %25 = load %struct.dasd_device*, %struct.dasd_device** %24, align 8
  store %struct.dasd_device* %25, %struct.dasd_device** %8, align 8
  %26 = load %struct.dasd_queue*, %struct.dasd_queue** %6, align 8
  %27 = getelementptr inbounds %struct.dasd_queue, %struct.dasd_queue* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DASD_STATE_READY, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i32, i32* @DBF_ERR, align 4
  %36 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %37 = load %struct.request*, %struct.request** %7, align 8
  %38 = ptrtoint %struct.request* %37 to i32
  %39 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %35, %struct.dasd_device* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %40, i32* %10, align 4
  br label %176

41:                                               ; preds = %2
  %42 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %43 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %48 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DASD_FEATURE_FAILFAST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @DBF_ERR, align 4
  %55 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %56 = load %struct.request*, %struct.request** %7, align 8
  %57 = ptrtoint %struct.request* %56 to i32
  %58 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %54, %struct.dasd_device* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %59, i32* %10, align 4
  br label %176

60:                                               ; preds = %46, %41
  %61 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %62 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.request*, %struct.request** %7, align 8
  %69 = call i64 @rq_data_dir(%struct.request* %68)
  %70 = load i64, i64* @WRITE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @DBF_ERR, align 4
  %74 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %75 = load %struct.request*, %struct.request** %7, align 8
  %76 = ptrtoint %struct.request* %75 to i32
  %77 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %73, %struct.dasd_device* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %78, i32* %10, align 4
  br label %176

79:                                               ; preds = %67, %60
  %80 = load i32, i32* @DASD_FLAG_ABORTALL, align 4
  %81 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %82 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %81, i32 0, i32 3
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %79
  %86 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %87 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DASD_FEATURE_FAILFAST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load %struct.request*, %struct.request** %7, align 8
  %94 = call i64 @blk_noretry_request(%struct.request* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92, %85
  %97 = load i32, i32* @DBF_ERR, align 4
  %98 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %99 = load %struct.request*, %struct.request** %7, align 8
  %100 = ptrtoint %struct.request* %99 to i32
  %101 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %97, %struct.dasd_device* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %102, i32* %10, align 4
  br label %176

103:                                              ; preds = %92, %79
  %104 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %105 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)*, %struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)** %107, align 8
  %109 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %110 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %111 = load %struct.request*, %struct.request** %7, align 8
  %112 = call %struct.dasd_ccw_req* %108(%struct.dasd_device* %109, %struct.dasd_block* %110, %struct.request* %111)
  store %struct.dasd_ccw_req* %112, %struct.dasd_ccw_req** %9, align 8
  %113 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %114 = call i64 @IS_ERR(%struct.dasd_ccw_req* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %103
  %117 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %118 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %117)
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %116
  %123 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %124 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %123)
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %130 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %129)
  %131 = load i32, i32* @EAGAIN, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128, %122, %116
  %135 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %135, i32* %10, align 4
  br label %176

136:                                              ; preds = %128
  %137 = load i32, i32* @DBF_ERR, align 4
  %138 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %139 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %140 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %139)
  %141 = load %struct.request*, %struct.request** %7, align 8
  %142 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %137, %struct.dasd_device* %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %140, %struct.request* %141)
  %143 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %143, i32* %10, align 4
  br label %176

144:                                              ; preds = %103
  %145 = load %struct.request*, %struct.request** %7, align 8
  %146 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %147 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %146, i32 0, i32 4
  store %struct.request* %145, %struct.request** %147, align 8
  %148 = load i32, i32* @DASD_CQR_FILLED, align 4
  %149 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %150 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.dasd_queue*, %struct.dasd_queue** %6, align 8
  %152 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %153 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %152, i32 0, i32 2
  store %struct.dasd_queue* %151, %struct.dasd_queue** %153, align 8
  %154 = load %struct.request*, %struct.request** %7, align 8
  %155 = call i32 @blk_mq_start_request(%struct.request* %154)
  %156 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %157 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %156, i32 0, i32 0
  %158 = call i32 @spin_lock(i32* %157)
  %159 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %160 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %159, i32 0, i32 1
  %161 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %162 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %161, i32 0, i32 1
  %163 = call i32 @list_add_tail(i32* %160, i32* %162)
  %164 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %165 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %164, i32 0, i32 0
  %166 = call i32 @INIT_LIST_HEAD(i32* %165)
  %167 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %168 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %169 = load %struct.request*, %struct.request** %7, align 8
  %170 = call i32 @dasd_profile_start(%struct.dasd_block* %167, %struct.dasd_ccw_req* %168, %struct.request* %169)
  %171 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %172 = call i32 @dasd_schedule_block_bh(%struct.dasd_block* %171)
  %173 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %174 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %173, i32 0, i32 0
  %175 = call i32 @spin_unlock(i32* %174)
  br label %176

176:                                              ; preds = %144, %136, %134, %96, %72, %53, %34
  %177 = load %struct.dasd_queue*, %struct.dasd_queue** %6, align 8
  %178 = getelementptr inbounds %struct.dasd_queue, %struct.dasd_queue* %177, i32 0, i32 0
  %179 = call i32 @spin_unlock_irq(i32* %178)
  %180 = load i32, i32* %10, align 4
  ret i32 %180
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32, ...) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @blk_noretry_request(%struct.request*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dasd_profile_start(%struct.dasd_block*, %struct.dasd_ccw_req*, %struct.request*) #1

declare dso_local i32 @dasd_schedule_block_bh(%struct.dasd_block*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
