; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.smbd_request = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_send_wr = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32* }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rdma_request sge[%d] addr=%llu length=%u\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@send_done = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ib_post_send failed rc=%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbd_connection*, %struct.smbd_request*, i32)* @smbd_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbd_post_send(%struct.smbd_connection* %0, %struct.smbd_request* %1, i32 %2) #0 {
  %4 = alloca %struct.smbd_connection*, align 8
  %5 = alloca %struct.smbd_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_send_wr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smbd_connection* %0, %struct.smbd_connection** %4, align 8
  store %struct.smbd_request* %1, %struct.smbd_request** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %59, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %13 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %10
  %17 = load i32, i32* @INFO, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %20 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %28 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, ...) @log_rdma_send(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %26, i32 %34)
  %36 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %37 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %36, i32 0, i32 7
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %42 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %50 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @ib_dma_sync_single_for_device(i32 %40, i32 %48, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %16
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %10

62:                                               ; preds = %10
  %63 = load i32, i32* @send_done, align 4
  %64 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %65 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 5
  store i32* null, i32** %67, align 8
  %68 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %69 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 4
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %72 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 3
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %74, align 8
  %75 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %76 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* @IB_WR_SEND, align 4
  %80 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %82 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %62
  %86 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %87 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %89 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %88, i32 0, i32 6
  %90 = call i32 @atomic_inc(i32* %89)
  br label %97

91:                                               ; preds = %62
  %92 = load %struct.smbd_request*, %struct.smbd_request** %5, align 8
  %93 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %95 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %94, i32 0, i32 4
  %96 = call i32 @atomic_inc(i32* %95)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %99 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %98, i32 0, i32 7
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ib_post_send(i32 %102, %struct.ib_send_wr* %7, i32* null)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %97
  %107 = load i32, i32* @ERR, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i32, i8*, i32, ...) @log_rdma_send(i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %114 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %113, i32 0, i32 6
  %115 = call i64 @atomic_dec_and_test(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %119 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %118, i32 0, i32 5
  %120 = call i32 @wake_up(i32* %119)
  br label %121

121:                                              ; preds = %117, %112
  br label %132

122:                                              ; preds = %106
  %123 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %124 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %123, i32 0, i32 4
  %125 = call i64 @atomic_dec_and_test(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %129 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %128, i32 0, i32 3
  %130 = call i32 @wake_up(i32* %129)
  br label %131

131:                                              ; preds = %127, %122
  br label %132

132:                                              ; preds = %131, %121
  %133 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %134 = call i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection* %133)
  %135 = load i32, i32* @EAGAIN, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %8, align 4
  br label %149

137:                                              ; preds = %97
  %138 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %139 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %142 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %141, i32 0, i32 1
  %143 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %144 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @HZ, align 4
  %147 = mul nsw i32 %145, %146
  %148 = call i32 @mod_delayed_work(i32 %140, i32* %142, i32 %147)
  br label %149

149:                                              ; preds = %137, %132
  %150 = load i32, i32* %8, align 4
  ret i32 %150
}

declare dso_local i32 @log_rdma_send(i32, i8*, i32, ...) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
