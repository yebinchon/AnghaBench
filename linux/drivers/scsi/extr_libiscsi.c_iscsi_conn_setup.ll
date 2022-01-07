; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_conn_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_conn_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i8*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.iscsi_cls_conn*, %struct.iscsi_session*, %struct.iscsi_conn* }
%struct.TYPE_4__ = type { i8* }
%struct.iscsi_session = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }

@ISCSI_CONN_INITIAL_STAGE = common dso_local global i32 0, align 4
@TMF_INITIAL = common dso_local global i32 0, align 4
@iscsi_check_transport_timeouts = common dso_local global i32 0, align 4
@iscsi_xmitworker = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@iscsi_tmf_timedout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_cls_conn*, align 8
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_session*, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_cls_conn*, align 8
  %11 = alloca i8*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %12, i32 0, i32 0
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %13, align 8
  store %struct.iscsi_session* %14, %struct.iscsi_session** %8, align 8
  %15 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 96, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.iscsi_cls_conn* @iscsi_create_conn(%struct.iscsi_cls_session* %15, i32 %19, i32 %20)
  store %struct.iscsi_cls_conn* %21, %struct.iscsi_cls_conn** %10, align 8
  %22 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %23 = icmp ne %struct.iscsi_cls_conn* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %4, align 8
  br label %132

25:                                               ; preds = %3
  %26 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %27 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %26, i32 0, i32 0
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %27, align 8
  store %struct.iscsi_conn* %28, %struct.iscsi_conn** %9, align 8
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 96, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(%struct.iscsi_conn* %29, i32 0, i32 %33)
  %35 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %36 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %35, i32 0, i32 0
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %36, align 8
  %38 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %37, i64 96
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 16
  store %struct.iscsi_conn* %38, %struct.iscsi_conn** %40, align 8
  %41 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 15
  store %struct.iscsi_session* %41, %struct.iscsi_session** %43, align 8
  %44 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 14
  store %struct.iscsi_cls_conn* %44, %struct.iscsi_cls_conn** %46, align 8
  %47 = load i32, i32* @ISCSI_CONN_INITIAL_STAGE, align 4
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %54 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %53, i32 0, i32 11
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @TMF_INITIAL, align 4
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %59 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %58, i32 0, i32 9
  %60 = load i32, i32* @iscsi_check_transport_timeouts, align 4
  %61 = call i32 @timer_setup(i32* %59, i32 %60, i32 0)
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %63 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %62, i32 0, i32 8
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %66 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %65, i32 0, i32 7
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %69 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %68, i32 0, i32 6
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %72 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %71, i32 0, i32 5
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %75 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %74, i32 0, i32 4
  %76 = load i32, i32* @iscsi_xmitworker, align 4
  %77 = call i32 @INIT_WORK(i32* %75, i32 %76)
  %78 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %79 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %78, i32 0, i32 1
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %82 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %85 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %84, i32 0, i32 1
  %86 = bitcast %struct.TYPE_4__** %85 to i8*
  %87 = call i32 @kfifo_out(i32* %83, i8* %86, i32 8)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %25
  %90 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %91 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock_bh(i32* %91)
  br label %129

93:                                               ; preds = %25
  %94 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %95 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock_bh(i32* %95)
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %99 = call i32 @get_order(i32 %98)
  %100 = call i64 @__get_free_pages(i32 %97, i32 %99)
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  br label %121

105:                                              ; preds = %93
  %106 = load i8*, i8** %11, align 8
  %107 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %108 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %110 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i8* %106, i8** %112, align 8
  %113 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %114 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %113, i32 0, i32 3
  %115 = load i32, i32* @iscsi_tmf_timedout, align 4
  %116 = call i32 @timer_setup(i32* %114, i32 %115, i32 0)
  %117 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %118 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %117, i32 0, i32 2
  %119 = call i32 @init_waitqueue_head(i32* %118)
  %120 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  store %struct.iscsi_cls_conn* %120, %struct.iscsi_cls_conn** %4, align 8
  br label %132

121:                                              ; preds = %104
  %122 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %123 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %126 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %125, i32 0, i32 1
  %127 = bitcast %struct.TYPE_4__** %126 to i8*
  %128 = call i32 @kfifo_in(i32* %124, i8* %127, i32 8)
  br label %129

129:                                              ; preds = %121, %89
  %130 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %10, align 8
  %131 = call i32 @iscsi_destroy_conn(%struct.iscsi_cls_conn* %130)
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %4, align 8
  br label %132

132:                                              ; preds = %129, %105, %24
  %133 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %4, align 8
  ret %struct.iscsi_cls_conn* %133
}

declare dso_local %struct.iscsi_cls_conn* @iscsi_create_conn(%struct.iscsi_cls_session*, i32, i32) #1

declare dso_local i32 @memset(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kfifo_out(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @iscsi_destroy_conn(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
