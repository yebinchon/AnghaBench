; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_init_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_init_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_loop_ctrl = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, %struct.nvmf_ctrl_options* }
%struct.nvmf_ctrl_options = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.nvme_loop_ctrl* }

@.str = private unnamed_addr constant [25 x i8] c"creating %d I/O queues.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_loop_ctrl*)* @nvme_loop_init_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_loop_init_io_queues(%struct.nvme_loop_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_loop_ctrl*, align 8
  %4 = alloca %struct.nvmf_ctrl_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvme_loop_ctrl* %0, %struct.nvme_loop_ctrl** %3, align 8
  %8 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %10, align 8
  store %struct.nvmf_ctrl_options* %11, %struct.nvmf_ctrl_options** %4, align 8
  %12 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %13 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (...) @num_online_cpus()
  %16 = call i32 @min(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %17, i32 0, i32 0
  %19 = call i32 @nvme_set_queue_count(%struct.TYPE_4__* %18, i32* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %72

27:                                               ; preds = %22
  %28 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_info(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %64, %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ule i32 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %40 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store %struct.nvme_loop_ctrl* %39, %struct.nvme_loop_ctrl** %46, align 8
  %47 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %48 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @nvmet_sq_init(i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  br label %68

58:                                               ; preds = %38
  %59 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %34

67:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %72

68:                                               ; preds = %57
  %69 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %70 = call i32 @nvme_loop_destroy_io_queues(%struct.nvme_loop_ctrl* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %67, %25
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @nvme_set_queue_count(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @nvmet_sq_init(i32*) #1

declare dso_local i32 @nvme_loop_destroy_io_queues(%struct.nvme_loop_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
