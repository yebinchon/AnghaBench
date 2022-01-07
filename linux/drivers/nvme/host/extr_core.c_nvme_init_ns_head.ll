; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_init_ns_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_init_ns_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.nvme_ns_head*, i32, %struct.nvme_ctrl* }
%struct.nvme_ns_head = type { i32, i32 }
%struct.nvme_ctrl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_id_ns = type { i32 }
%struct.nvme_ns_ids = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"IDs don't match for shared namespace %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, i32, %struct.nvme_id_ns*)* @nvme_init_ns_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_init_ns_head(%struct.nvme_ns* %0, i32 %1, %struct.nvme_id_ns* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_id_ns*, align 8
  %7 = alloca %struct.nvme_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_ns_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvme_ns_ids, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvme_id_ns* %2, %struct.nvme_id_ns** %6, align 8
  %12 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %12, i32 0, i32 2
  %14 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %13, align 8
  store %struct.nvme_ctrl* %14, %struct.nvme_ctrl** %7, align 8
  %15 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %16 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  store i32 %18, i32* %8, align 4
  store %struct.nvme_ns_head* null, %struct.nvme_ns_head** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %20 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %28 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.nvme_ns_head* @__nvme_find_ns_head(%struct.TYPE_2__* %29, i32 %30)
  store %struct.nvme_ns_head* %31, %struct.nvme_ns_head** %9, align 8
  br label %32

32:                                               ; preds = %26, %3
  %33 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %9, align 8
  %34 = icmp ne %struct.nvme_ns_head* %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %39 = call %struct.nvme_ns_head* @nvme_alloc_ns_head(%struct.nvme_ctrl* %36, i32 %37, %struct.nvme_id_ns* %38)
  store %struct.nvme_ns_head* %39, %struct.nvme_ns_head** %9, align 8
  %40 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %9, align 8
  %41 = call i64 @IS_ERR(%struct.nvme_ns_head* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %9, align 8
  %45 = call i32 @PTR_ERR(%struct.nvme_ns_head* %44)
  store i32 %45, i32* %10, align 4
  br label %78

46:                                               ; preds = %35
  br label %69

47:                                               ; preds = %32
  %48 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %51 = call i32 @nvme_report_ns_ids(%struct.nvme_ctrl* %48, i32 %49, %struct.nvme_id_ns* %50, %struct.nvme_ns_ids* %11)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %78

55:                                               ; preds = %47
  %56 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %9, align 8
  %57 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %56, i32 0, i32 1
  %58 = call i32 @nvme_ns_ids_equal(i32* %57, %struct.nvme_ns_ids* %11)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %62 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %78

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %71 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %70, i32 0, i32 1
  %72 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %9, align 8
  %73 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %72, i32 0, i32 0
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  %75 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %9, align 8
  %76 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %77 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %76, i32 0, i32 0
  store %struct.nvme_ns_head* %75, %struct.nvme_ns_head** %77, align 8
  br label %78

78:                                               ; preds = %69, %60, %54, %43
  %79 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %80 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @nvme_error_status(i32 %87)
  %89 = call i32 @blk_status_to_errno(i32 %88)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %78
  %91 = load i32, i32* %10, align 4
  ret i32 %91
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nvme_ns_head* @__nvme_find_ns_head(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.nvme_ns_head* @nvme_alloc_ns_head(%struct.nvme_ctrl*, i32, %struct.nvme_id_ns*) #1

declare dso_local i64 @IS_ERR(%struct.nvme_ns_head*) #1

declare dso_local i32 @PTR_ERR(%struct.nvme_ns_head*) #1

declare dso_local i32 @nvme_report_ns_ids(%struct.nvme_ctrl*, i32, %struct.nvme_id_ns*, %struct.nvme_ns_ids*) #1

declare dso_local i32 @nvme_ns_ids_equal(i32*, %struct.nvme_ns_ids*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blk_status_to_errno(i32) #1

declare dso_local i32 @nvme_error_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
