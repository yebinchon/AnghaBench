; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_recreate_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_recreate_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.nvmf_ctrl_options* }
%struct.nvmf_ctrl_options = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"set_queue_count failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Fail Reconnect: At least 1 io queue required (was %d)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"reconnect: revising io queue count from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*)* @nvme_fc_recreate_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_recreate_io_queues(%struct.nvme_fc_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_fc_ctrl*, align 8
  %4 = alloca %struct.nvmf_ctrl_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %3, align 8
  %8 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %11 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %10, align 8
  store %struct.nvmf_ctrl_options* %11, %struct.nvmf_ctrl_options** %4, align 8
  %12 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %18 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (...) @num_online_cpus()
  %21 = call i32 @min(i32 %19, i32 %20)
  %22 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @min(i32 %21, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %30, i32 0, i32 1
  %32 = call i32 @nvme_set_queue_count(%struct.TYPE_6__* %31, i32* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %116

43:                                               ; preds = %1
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %51 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENOSPC, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %116

58:                                               ; preds = %46, %43
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  %61 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %62 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %65 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %116

70:                                               ; preds = %58
  %71 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %72 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %73 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @nvme_fc_create_hw_io_queues(%struct.nvme_fc_ctrl* %71, i64 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %112

81:                                               ; preds = %70
  %82 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %83 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %84 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  %88 = call i32 @nvme_fc_connect_io_queues(%struct.nvme_fc_ctrl* %82, i64 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %109

92:                                               ; preds = %81
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %98 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %92
  %105 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %106 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %105, i32 0, i32 0
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @blk_mq_update_nr_hw_queues(i32* %106, i32 %107)
  store i32 0, i32* %2, align 4
  br label %116

109:                                              ; preds = %91
  %110 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %111 = call i32 @nvme_fc_delete_hw_io_queues(%struct.nvme_fc_ctrl* %110)
  br label %112

112:                                              ; preds = %109, %80
  %113 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %114 = call i32 @nvme_fc_free_io_queues(%struct.nvme_fc_ctrl* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %104, %69, %49, %35
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @nvme_set_queue_count(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @nvme_fc_create_hw_io_queues(%struct.nvme_fc_ctrl*, i64) #1

declare dso_local i32 @nvme_fc_connect_io_queues(%struct.nvme_fc_ctrl*, i64) #1

declare dso_local i32 @blk_mq_update_nr_hw_queues(i32*, i32) #1

declare dso_local i32 @nvme_fc_delete_hw_io_queues(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @nvme_fc_free_io_queues(%struct.nvme_fc_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
