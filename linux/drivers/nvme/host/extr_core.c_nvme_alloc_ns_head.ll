; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_alloc_ns_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_alloc_ns_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns_head = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nvme_ctrl = type { %struct.TYPE_2__*, i32 }
%struct.nvme_id_ns = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"duplicate IDs for nsid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_ns_head* (%struct.nvme_ctrl*, i32, %struct.nvme_id_ns*)* @nvme_alloc_ns_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_ns_head* @nvme_alloc_ns_head(%struct.nvme_ctrl* %0, i32 %1, %struct.nvme_id_ns* %2) #0 {
  %4 = alloca %struct.nvme_ns_head*, align 8
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_id_ns*, align 8
  %8 = alloca %struct.nvme_ns_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvme_id_ns* %2, %struct.nvme_id_ns** %7, align 8
  store i64 40, i64* %9, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nvme_ns_head* @kzalloc(i64 %13, i32 %14)
  store %struct.nvme_ns_head* %15, %struct.nvme_ns_head** %8, align 8
  %16 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %17 = icmp ne %struct.nvme_ns_head* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %114

19:                                               ; preds = %3
  %20 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @ida_simple_get(i32* %23, i32 1, i32 0, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %111

29:                                               ; preds = %19
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %32 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %34 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %33, i32 0, i32 7
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %37 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %36, i32 0, i32 2
  %38 = call i32 @init_srcu_struct(i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %102

42:                                               ; preds = %29
  %43 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %44 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %47 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %46, i32 0, i32 6
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %50 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %52 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %51, i32 0, i32 5
  %53 = call i32 @kref_init(i32* %52)
  %54 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %7, align 8
  %57 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %58 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %57, i32 0, i32 4
  %59 = call i32 @nvme_report_ns_ids(%struct.nvme_ctrl* %54, i32 %55, %struct.nvme_id_ns* %56, i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  br label %98

63:                                               ; preds = %42
  %64 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %65 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %68 = call i32 @__nvme_check_ids(%struct.TYPE_2__* %66, %struct.nvme_ns_head* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %73 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %98

77:                                               ; preds = %63
  %78 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %79 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %80 = call i32 @nvme_mpath_alloc_disk(%struct.nvme_ctrl* %78, %struct.nvme_ns_head* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %98

84:                                               ; preds = %77
  %85 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %86 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %85, i32 0, i32 3
  %87 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %88 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = call i32 @list_add_tail(i32* %86, i32* %90)
  %92 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %93 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = call i32 @kref_get(i32* %95)
  %97 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  store %struct.nvme_ns_head* %97, %struct.nvme_ns_head** %4, align 8
  br label %124

98:                                               ; preds = %83, %71, %62
  %99 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %100 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %99, i32 0, i32 2
  %101 = call i32 @cleanup_srcu_struct(i32* %100)
  br label %102

102:                                              ; preds = %98, %41
  %103 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %104 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %108 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ida_simple_remove(i32* %106, i32 %109)
  br label %111

111:                                              ; preds = %102, %28
  %112 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %113 = call i32 @kfree(%struct.nvme_ns_head* %112)
  br label %114

114:                                              ; preds = %111, %18
  %115 = load i32, i32* %10, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @nvme_error_status(i32 %118)
  %120 = call i32 @blk_status_to_errno(i32 %119)
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %10, align 4
  %123 = call %struct.nvme_ns_head* @ERR_PTR(i32 %122)
  store %struct.nvme_ns_head* %123, %struct.nvme_ns_head** %4, align 8
  br label %124

124:                                              ; preds = %121, %84
  %125 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %4, align 8
  ret %struct.nvme_ns_head* %125
}

declare dso_local %struct.nvme_ns_head* @kzalloc(i64, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_srcu_struct(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @nvme_report_ns_ids(%struct.nvme_ctrl*, i32, %struct.nvme_id_ns*, i32*) #1

declare dso_local i32 @__nvme_check_ids(%struct.TYPE_2__*, %struct.nvme_ns_head*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @nvme_mpath_alloc_disk(%struct.nvme_ctrl*, %struct.nvme_ns_head*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @cleanup_srcu_struct(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nvme_ns_head*) #1

declare dso_local i32 @blk_status_to_errno(i32) #1

declare dso_local i32 @nvme_error_status(i32) #1

declare dso_local %struct.nvme_ns_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
