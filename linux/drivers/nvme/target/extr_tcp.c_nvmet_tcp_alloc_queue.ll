; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_port = type { i32 }
%struct.socket = type { i32 }
%struct.nvmet_tcp_queue = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.nvmet_tcp_port*, %struct.socket*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvmet_tcp_release_queue_work = common dso_local global i32 0, align 4
@nvmet_tcp_io_work = common dso_local global i32 0, align 4
@NVMET_TCP_Q_CONNECTING = common dso_local global i32 0, align 4
@nvmet_tcp_queue_ida = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@nvmet_tcp_queue_mutex = common dso_local global i32 0, align 4
@nvmet_tcp_queue_list = common dso_local global i32 0, align 4
@nvmet_tcp_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_port*, %struct.socket*)* @nvmet_tcp_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_alloc_queue(%struct.nvmet_tcp_port* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvmet_tcp_port*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.nvmet_tcp_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.nvmet_tcp_port* %0, %struct.nvmet_tcp_port** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nvmet_tcp_queue* @kzalloc(i32 80, i32 %8)
  store %struct.nvmet_tcp_queue* %9, %struct.nvmet_tcp_queue** %6, align 8
  %10 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %11 = icmp ne %struct.nvmet_tcp_queue* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %129

15:                                               ; preds = %2
  %16 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %17 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %16, i32 0, i32 14
  %18 = load i32, i32* @nvmet_tcp_release_queue_work, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %21 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %20, i32 0, i32 4
  %22 = load i32, i32* @nvmet_tcp_io_work, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %26 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %25, i32 0, i32 13
  store %struct.socket* %24, %struct.socket** %26, align 8
  %27 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %28 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %29 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %28, i32 0, i32 12
  store %struct.nvmet_tcp_port* %27, %struct.nvmet_tcp_port** %29, align 8
  %30 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %31 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %30, i32 0, i32 11
  store i64 0, i64* %31, align 8
  %32 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %33 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %32, i32 0, i32 10
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load i32, i32* @NVMET_TCP_Q_CONNECTING, align 4
  %36 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %37 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %39 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %38, i32 0, i32 8
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %42 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %41, i32 0, i32 7
  %43 = call i32 @init_llist_head(i32* %42)
  %44 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %45 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %44, i32 0, i32 6
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @ida_simple_get(i32* @nvmet_tcp_queue_ida, i32 0, i32 0, i32 %47)
  %49 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %50 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %52 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %15
  %56 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %57 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %7, align 4
  br label %125

59:                                               ; preds = %15
  %60 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %61 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %62 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %61, i32 0, i32 1
  %63 = call i32 @nvmet_tcp_alloc_cmd(%struct.nvmet_tcp_queue* %60, i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %120

67:                                               ; preds = %59
  %68 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %69 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %68, i32 0, i32 2
  %70 = call i32 @nvmet_sq_init(i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %116

74:                                               ; preds = %67
  %75 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %76 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @cpu_online_mask, align 4
  %79 = call i32 @cpumask_next_wrap(i32 %77, i32 %78, i32 -1, i32 0)
  %80 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %81 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %83 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %86 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %88 = call i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue* %87)
  %89 = call i32 @mutex_lock(i32* @nvmet_tcp_queue_mutex)
  %90 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %91 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %90, i32 0, i32 3
  %92 = call i32 @list_add_tail(i32* %91, i32* @nvmet_tcp_queue_list)
  %93 = call i32 @mutex_unlock(i32* @nvmet_tcp_queue_mutex)
  %94 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %95 = call i32 @nvmet_tcp_set_queue_sock(%struct.nvmet_tcp_queue* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %74
  br label %107

99:                                               ; preds = %74
  %100 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %101 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @nvmet_tcp_wq, align 4
  %104 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %105 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %104, i32 0, i32 4
  %106 = call i32 @queue_work_on(i32 %102, i32 %103, i32* %105)
  store i32 0, i32* %3, align 4
  br label %129

107:                                              ; preds = %98
  %108 = call i32 @mutex_lock(i32* @nvmet_tcp_queue_mutex)
  %109 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %110 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %109, i32 0, i32 3
  %111 = call i32 @list_del_init(i32* %110)
  %112 = call i32 @mutex_unlock(i32* @nvmet_tcp_queue_mutex)
  %113 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %114 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %113, i32 0, i32 2
  %115 = call i32 @nvmet_sq_destroy(i32* %114)
  br label %116

116:                                              ; preds = %107, %73
  %117 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %118 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %117, i32 0, i32 1
  %119 = call i32 @nvmet_tcp_free_cmd(i32* %118)
  br label %120

120:                                              ; preds = %116, %66
  %121 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %122 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ida_simple_remove(i32* @nvmet_tcp_queue_ida, i32 %123)
  br label %125

125:                                              ; preds = %120, %55
  %126 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %6, align 8
  %127 = call i32 @kfree(%struct.nvmet_tcp_queue* %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %99, %12
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.nvmet_tcp_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @nvmet_tcp_alloc_cmd(%struct.nvmet_tcp_queue*, i32*) #1

declare dso_local i32 @nvmet_sq_init(i32*) #1

declare dso_local i32 @cpumask_next_wrap(i32, i32, i32, i32) #1

declare dso_local i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvmet_tcp_set_queue_sock(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @nvmet_sq_destroy(i32*) #1

declare dso_local i32 @nvmet_tcp_free_cmd(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nvmet_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
