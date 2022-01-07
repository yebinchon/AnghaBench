; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_queue_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_queue_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.qedi_conn** }
%struct.qedi_conn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%union.iscsi_cqe = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.qedi_percpu_s = type { i32 }
%struct.qedi_work = type { i32, i32, i8*, i32, %struct.qedi_ctx* }
%struct.qedi_cmd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i8*, i32, %struct.qedi_ctx* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Session no longer exists for cid=0x%x!!\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"FW Error cqe.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, %union.iscsi_cqe*, i8*, %struct.qedi_percpu_s*)* @qedi_queue_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_queue_cqe(%struct.qedi_ctx* %0, %union.iscsi_cqe* %1, i8* %2, %struct.qedi_percpu_s* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedi_ctx*, align 8
  %7 = alloca %union.iscsi_cqe*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qedi_percpu_s*, align 8
  %10 = alloca %struct.qedi_work*, align 8
  %11 = alloca %struct.qedi_conn*, align 8
  %12 = alloca %struct.iscsi_conn*, align 8
  %13 = alloca %struct.qedi_cmd*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %6, align 8
  store %union.iscsi_cqe* %1, %union.iscsi_cqe** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.qedi_percpu_s* %3, %struct.qedi_percpu_s** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %17 = bitcast %union.iscsi_cqe* %16 to %struct.TYPE_8__*
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %14, align 8
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.qedi_conn**, %struct.qedi_conn*** %22, align 8
  %24 = load i64, i64* %14, align 8
  %25 = getelementptr inbounds %struct.qedi_conn*, %struct.qedi_conn** %23, i64 %24
  %26 = load %struct.qedi_conn*, %struct.qedi_conn** %25, align 8
  store %struct.qedi_conn* %26, %struct.qedi_conn** %11, align 8
  %27 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %28 = icmp ne %struct.qedi_conn* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %4
  %30 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @QEDI_WARN(i32* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %32)
  store i32 -1, i32* %5, align 4
  br label %114

34:                                               ; preds = %4
  %35 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %36 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %38, align 8
  store %struct.iscsi_conn* %39, %struct.iscsi_conn** %12, align 8
  %40 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %41 = bitcast %union.iscsi_cqe* %40 to %struct.TYPE_8__*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %108 [
    i32 131, label %44
    i32 130, label %44
    i32 128, label %81
    i32 132, label %81
    i32 129, label %81
  ]

44:                                               ; preds = %34, %34
  %45 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %46 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %47 = bitcast %union.iscsi_cqe* %46 to %struct.TYPE_9__*
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.qedi_cmd* @qedi_get_cmd_from_tid(%struct.qedi_ctx* %45, i32 %49)
  store %struct.qedi_cmd* %50, %struct.qedi_cmd** %13, align 8
  %51 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %52 = icmp ne %struct.qedi_cmd* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  store i32 -1, i32* %15, align 4
  br label %112

54:                                               ; preds = %44
  %55 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %56 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %60 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %61 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  store %struct.qedi_ctx* %59, %struct.qedi_ctx** %62, align 8
  %63 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %64 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %67 = call i32 @memcpy(i32* %65, %union.iscsi_cqe* %66, i32 16)
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %70 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i8* %68, i8** %71, align 8
  %72 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %73 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %76 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.qedi_percpu_s*, %struct.qedi_percpu_s** %9, align 8
  %79 = getelementptr inbounds %struct.qedi_percpu_s, %struct.qedi_percpu_s* %78, i32 0, i32 0
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  br label %112

81:                                               ; preds = %34, %34, %34
  %82 = load i32, i32* @GFP_ATOMIC, align 4
  %83 = call %struct.qedi_work* @kzalloc(i32 32, i32 %82)
  store %struct.qedi_work* %83, %struct.qedi_work** %10, align 8
  %84 = load %struct.qedi_work*, %struct.qedi_work** %10, align 8
  %85 = icmp ne %struct.qedi_work* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 -1, i32* %15, align 4
  br label %112

87:                                               ; preds = %81
  %88 = load %struct.qedi_work*, %struct.qedi_work** %10, align 8
  %89 = getelementptr inbounds %struct.qedi_work, %struct.qedi_work* %88, i32 0, i32 1
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %92 = load %struct.qedi_work*, %struct.qedi_work** %10, align 8
  %93 = getelementptr inbounds %struct.qedi_work, %struct.qedi_work* %92, i32 0, i32 4
  store %struct.qedi_ctx* %91, %struct.qedi_ctx** %93, align 8
  %94 = load %struct.qedi_work*, %struct.qedi_work** %10, align 8
  %95 = getelementptr inbounds %struct.qedi_work, %struct.qedi_work* %94, i32 0, i32 3
  %96 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %97 = call i32 @memcpy(i32* %95, %union.iscsi_cqe* %96, i32 16)
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.qedi_work*, %struct.qedi_work** %10, align 8
  %100 = getelementptr inbounds %struct.qedi_work, %struct.qedi_work* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.qedi_work*, %struct.qedi_work** %10, align 8
  %102 = getelementptr inbounds %struct.qedi_work, %struct.qedi_work* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.qedi_work*, %struct.qedi_work** %10, align 8
  %104 = getelementptr inbounds %struct.qedi_work, %struct.qedi_work* %103, i32 0, i32 1
  %105 = load %struct.qedi_percpu_s*, %struct.qedi_percpu_s** %9, align 8
  %106 = getelementptr inbounds %struct.qedi_percpu_s, %struct.qedi_percpu_s* %105, i32 0, i32 0
  %107 = call i32 @list_add_tail(i32* %104, i32* %106)
  br label %112

108:                                              ; preds = %34
  store i32 -1, i32* %15, align 4
  %109 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %109, i32 0, i32 0
  %111 = call i32 @QEDI_ERR(i32* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %87, %86, %54, %53
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %29
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @QEDI_WARN(i32*, i8*, i64) #1

declare dso_local %struct.qedi_cmd* @qedi_get_cmd_from_tid(%struct.qedi_ctx*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, %union.iscsi_cqe*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.qedi_work* @kzalloc(i32, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
