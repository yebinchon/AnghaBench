; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_uninit_data_in_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_uninit_data_in_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32, %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* }
%struct.nvmet_tcp_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_tcp_queue*)* @nvmet_tcp_uninit_data_in_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_tcp_uninit_data_in_cmds(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca %struct.nvmet_tcp_queue*, align 8
  %3 = alloca %struct.nvmet_tcp_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %2, align 8
  %5 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %6 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %5, i32 0, i32 2
  %7 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  store %struct.nvmet_tcp_cmd* %7, %struct.nvmet_tcp_cmd** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %11 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %16 = call i64 @nvmet_tcp_need_data_in(%struct.nvmet_tcp_cmd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %20 = call i32 @nvmet_tcp_finish_cmd(%struct.nvmet_tcp_cmd* %19)
  br label %21

21:                                               ; preds = %18, %14
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %25, i32 1
  store %struct.nvmet_tcp_cmd* %26, %struct.nvmet_tcp_cmd** %3, align 8
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %29 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %34 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %33, i32 0, i32 1
  %35 = call i64 @nvmet_tcp_need_data_in(%struct.nvmet_tcp_cmd* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %39 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %38, i32 0, i32 1
  %40 = call i32 @nvmet_tcp_finish_cmd(%struct.nvmet_tcp_cmd* %39)
  br label %41

41:                                               ; preds = %37, %32, %27
  ret void
}

declare dso_local i64 @nvmet_tcp_need_data_in(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_tcp_finish_cmd(%struct.nvmet_tcp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
