; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32*, i32, %struct.iscsi_tcp_task* }
%struct.iscsi_tcp_task = type { %struct.cxgbi_task_data* }
%struct.cxgbi_task_data = type { i32* }

@.str = private unnamed_addr constant [49 x i8] c"task 0x%p,0x%p, tcp_task 0x%p, tdata 0x%p/0x%p.\0A\00", align 1
@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"task 0x%p, skb 0x%p, itt 0x%x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_cleanup_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_tcp_task*, align 8
  %4 = alloca %struct.cxgbi_task_data*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %5 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %5, i32 0, i32 3
  %7 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %6, align 8
  store %struct.iscsi_tcp_task* %7, %struct.iscsi_tcp_task** %3, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %9 = call %struct.cxgbi_task_data* @iscsi_task_cxgbi_data(%struct.iscsi_task* %8)
  store %struct.cxgbi_task_data* %9, %struct.cxgbi_task_data** %4, align 8
  %10 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %11 = icmp ne %struct.iscsi_tcp_task* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %4, align 8
  %14 = icmp ne %struct.cxgbi_task_data* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %16, i32 0, i32 0
  %18 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %17, align 8
  %19 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %4, align 8
  %20 = icmp ne %struct.cxgbi_task_data* %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15, %12, %1
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %23 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %24 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %27 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %28 = icmp ne %struct.iscsi_tcp_task* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %30, i32 0, i32 0
  %32 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %31, align 8
  br label %34

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi %struct.cxgbi_task_data* [ %32, %29 ], [ null, %33 ]
  %36 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %4, align 8
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.iscsi_task* %22, i32 %25, %struct.iscsi_tcp_task* %26, %struct.cxgbi_task_data* %35, %struct.cxgbi_task_data* %36)
  br label %84

38:                                               ; preds = %15
  %39 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %42 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %4, align 8
  %43 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %46 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @log_debug(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_task* %41, i32* %44, i32 %47)
  %49 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %50 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %49, i32 0, i32 0
  store %struct.cxgbi_task_data* null, %struct.cxgbi_task_data** %50, align 8
  %51 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %52 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %38
  %56 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %57 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  br label %60

60:                                               ; preds = %55, %38
  %61 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %62 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %4, align 8
  %64 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %4, align 8
  %69 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @__kfree_skb(i32* %70)
  %72 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %4, align 8
  %73 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %76 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %77 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @task_release_itt(%struct.iscsi_task* %75, i32 %78)
  %80 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %4, align 8
  %81 = call i32 @memset(%struct.cxgbi_task_data* %80, i32 0, i32 8)
  %82 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %83 = call i32 @iscsi_tcp_cleanup_task(%struct.iscsi_task* %82)
  br label %84

84:                                               ; preds = %74, %34
  ret void
}

declare dso_local %struct.cxgbi_task_data* @iscsi_task_cxgbi_data(%struct.iscsi_task*) #1

declare dso_local i32 @pr_info(i8*, %struct.iscsi_task*, i32, %struct.iscsi_tcp_task*, %struct.cxgbi_task_data*, %struct.cxgbi_task_data*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_task*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @__kfree_skb(i32*) #1

declare dso_local i32 @task_release_itt(%struct.iscsi_task*, i32) #1

declare dso_local i32 @memset(%struct.cxgbi_task_data*, i32, i32) #1

declare dso_local i32 @iscsi_tcp_cleanup_task(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
