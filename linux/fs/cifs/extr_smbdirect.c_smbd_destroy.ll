; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, %struct.smbd_connection* }
%struct.smbd_connection = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.smbd_response = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"rdma session already destroyed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"destroying rdma session\0A\00", align 1
@SMBD_DISCONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"wait for transport being disconnected\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"destroying qp\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"cancelling idle timer\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"cancelling send immediate work\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"wait for all send posted to IB to finish\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"drain the reassembly queue\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"free receive buffers\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"freeing mr list\0A\00", align 1
@SMBD_DESTROYED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smbd_destroy(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca %struct.TCP_Server_Info*, align 8
  %3 = alloca %struct.smbd_connection*, align 8
  %4 = alloca %struct.smbd_response*, align 8
  %5 = alloca i64, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %2, align 8
  %6 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %7 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %6, i32 0, i32 1
  %8 = load %struct.smbd_connection*, %struct.smbd_connection** %7, align 8
  store %struct.smbd_connection* %8, %struct.smbd_connection** %3, align 8
  %9 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %10 = icmp ne %struct.smbd_connection* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @INFO, align 4
  %13 = call i32 @log_rdma_event(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %200

14:                                               ; preds = %1
  %15 = load i32, i32* @INFO, align 4
  %16 = call i32 @log_rdma_event(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %18 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SMBD_DISCONNECTED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %24 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %23, i32 0, i32 1
  %25 = load %struct.smbd_connection*, %struct.smbd_connection** %24, align 8
  %26 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %25, i32 0, i32 9
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @rdma_disconnect(%struct.TYPE_4__* %27)
  %29 = load i32, i32* @INFO, align 4
  %30 = call i32 @log_rdma_event(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %32 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %31, i32 0, i32 24
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %35 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SMBD_DISCONNECTED, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event_interruptible(i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %22, %14
  %42 = load i32, i32* @INFO, align 4
  %43 = call i32 @log_rdma_event(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %45 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %44, i32 0, i32 9
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ib_drain_qp(i32 %48)
  %50 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %51 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %50, i32 0, i32 9
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @rdma_destroy_qp(%struct.TYPE_4__* %52)
  %54 = load i32, i32* @INFO, align 4
  %55 = call i32 @log_rdma_event(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %57 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %56, i32 0, i32 23
  %58 = call i32 @cancel_delayed_work_sync(i32* %57)
  %59 = load i32, i32* @INFO, align 4
  %60 = call i32 @log_rdma_event(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %62 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %61, i32 0, i32 22
  %63 = call i32 @cancel_delayed_work_sync(i32* %62)
  %64 = load i32, i32* @INFO, align 4
  %65 = call i32 @log_rdma_event(i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %66 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %67 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %66, i32 0, i32 21
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %70 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %69, i32 0, i32 20
  %71 = call i64 @atomic_read(i32* %70)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @wait_event(i32 %68, i32 %73)
  %75 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %76 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %75, i32 0, i32 19
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %79 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %78, i32 0, i32 18
  %80 = call i64 @atomic_read(i32* %79)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @wait_event(i32 %77, i32 %82)
  %84 = load i32, i32* @INFO, align 4
  %85 = call i32 @log_rdma_event(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %112, %41
  %87 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %88 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %87, i32 0, i32 17
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %92 = call %struct.smbd_response* @_get_first_reassembly(%struct.smbd_connection* %91)
  store %struct.smbd_response* %92, %struct.smbd_response** %4, align 8
  %93 = load %struct.smbd_response*, %struct.smbd_response** %4, align 8
  %94 = icmp ne %struct.smbd_response* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %86
  %96 = load %struct.smbd_response*, %struct.smbd_response** %4, align 8
  %97 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %96, i32 0, i32 0
  %98 = call i32 @list_del(i32* %97)
  %99 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %100 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %99, i32 0, i32 17
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %104 = load %struct.smbd_response*, %struct.smbd_response** %4, align 8
  %105 = call i32 @put_receive_buffer(%struct.smbd_connection* %103, %struct.smbd_response* %104)
  br label %111

106:                                              ; preds = %86
  %107 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %108 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %107, i32 0, i32 17
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  br label %111

111:                                              ; preds = %106, %95
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.smbd_response*, %struct.smbd_response** %4, align 8
  %114 = icmp ne %struct.smbd_response* %113, null
  br i1 %114, label %86, label %115

115:                                              ; preds = %112
  %116 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %117 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %116, i32 0, i32 16
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* @INFO, align 4
  %119 = call i32 @log_rdma_event(i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %120 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %121 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %120, i32 0, i32 15
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %124 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %127 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %131 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @wait_event(i32 %122, i32 %134)
  %136 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %137 = call i32 @destroy_receive_buffers(%struct.smbd_connection* %136)
  %138 = load i32, i32* @INFO, align 4
  %139 = call i32 @log_rdma_event(i32 %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %140 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %141 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %140, i32 0, i32 14
  %142 = call i32 @wake_up_interruptible_all(i32* %141)
  br label %143

143:                                              ; preds = %148, %115
  %144 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %145 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %144, i32 0, i32 13
  %146 = call i64 @atomic_read(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %150 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %149, i32 0, i32 0
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = call i32 @msleep(i32 1000)
  %153 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %154 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %153, i32 0, i32 0
  %155 = call i32 @mutex_lock(i32* %154)
  br label %143

156:                                              ; preds = %143
  %157 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %158 = call i32 @destroy_mr_list(%struct.smbd_connection* %157)
  %159 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %160 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ib_free_cq(i32 %161)
  %163 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %164 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %163, i32 0, i32 11
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ib_free_cq(i32 %165)
  %167 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %168 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @ib_dealloc_pd(i32 %169)
  %171 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %172 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %171, i32 0, i32 9
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = call i32 @rdma_destroy_id(%struct.TYPE_4__* %173)
  %175 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %176 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @mempool_destroy(i32 %177)
  %179 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %180 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @kmem_cache_destroy(i32 %181)
  %183 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %184 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @mempool_destroy(i32 %185)
  %187 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %188 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @kmem_cache_destroy(i32 %189)
  %191 = load i64, i64* @SMBD_DESTROYED, align 8
  %192 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %193 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %195 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @destroy_workqueue(i32 %196)
  %198 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %199 = call i32 @kfree(%struct.smbd_connection* %198)
  br label %200

200:                                              ; preds = %156, %11
  ret void
}

declare dso_local i32 @log_rdma_event(i32, i8*) #1

declare dso_local i32 @rdma_disconnect(%struct.TYPE_4__*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @ib_drain_qp(i32) #1

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_4__*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.smbd_response* @_get_first_reassembly(%struct.smbd_connection*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_receive_buffer(%struct.smbd_connection*, %struct.smbd_response*) #1

declare dso_local i32 @destroy_receive_buffers(%struct.smbd_connection*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @destroy_mr_list(%struct.smbd_connection*) #1

declare dso_local i32 @ib_free_cq(i32) #1

declare dso_local i32 @ib_dealloc_pd(i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_4__*) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.smbd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
