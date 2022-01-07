; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_deregister_mr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_deregister_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_mr = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.ib_send_wr, %struct.smbd_connection* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_send_wr = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.smbd_connection = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@IB_WR_LOCAL_INV = common dso_local global i32 0, align 4
@local_inv_done = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ib_post_send failed rc=%x\0A\00", align 1
@MR_INVALIDATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbd_deregister_mr(%struct.smbd_mr* %0) #0 {
  %2 = alloca %struct.smbd_mr*, align 8
  %3 = alloca %struct.ib_send_wr*, align 8
  %4 = alloca %struct.smbd_connection*, align 8
  %5 = alloca i32, align 4
  store %struct.smbd_mr* %0, %struct.smbd_mr** %2, align 8
  %6 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %7 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %6, i32 0, i32 6
  %8 = load %struct.smbd_connection*, %struct.smbd_connection** %7, align 8
  store %struct.smbd_connection* %8, %struct.smbd_connection** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %10 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %1
  %14 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %15 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %14, i32 0, i32 5
  store %struct.ib_send_wr* %15, %struct.ib_send_wr** %3, align 8
  %16 = load i32, i32* @IB_WR_LOCAL_INV, align 4
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %18 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @local_inv_done, align 4
  %20 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %21 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %24 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %23, i32 0, i32 4
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %25, i32 0, i32 3
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %28 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %30 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %35 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %39 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %41 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %40, i32 0, i32 2
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %44 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %43, i32 0, i32 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %49 = call i32 @ib_post_send(i32 %47, %struct.ib_send_wr* %48, i32* null)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %13
  %53 = load i32, i32* @ERR, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @log_rdma_mr(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %57 = call i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection* %56)
  br label %75

58:                                               ; preds = %13
  %59 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %60 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %59, i32 0, i32 2
  %61 = call i32 @wait_for_completion(i32* %60)
  %62 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %63 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %68

64:                                               ; preds = %1
  %65 = load i32, i32* @MR_INVALIDATED, align 4
  %66 = load %struct.smbd_mr*, %struct.smbd_mr** %2, align 8
  %67 = getelementptr inbounds %struct.smbd_mr, %struct.smbd_mr* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %70 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %73 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %72, i32 0, i32 2
  %74 = call i32 @queue_work(i32 %71, i32* %73)
  br label %75

75:                                               ; preds = %68, %52
  %76 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %77 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %76, i32 0, i32 1
  %78 = call i64 @atomic_dec_and_test(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %82 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %81, i32 0, i32 0
  %83 = call i32 @wake_up(i32* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #1

declare dso_local i32 @log_rdma_mr(i32, i8*, i32) #1

declare dso_local i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
