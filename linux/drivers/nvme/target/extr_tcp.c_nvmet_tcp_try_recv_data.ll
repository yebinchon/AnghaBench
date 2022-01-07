; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_recv_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_recv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i64, %struct.nvmet_tcp_cmd* }
%struct.nvmet_tcp_cmd = type { i32, i64, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NVMET_TCP_F_INIT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*)* @nvmet_tcp_try_recv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_try_recv_data(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  %4 = alloca %struct.nvmet_tcp_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %3, align 8
  %6 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %7 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %6, i32 0, i32 1
  %8 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %7, align 8
  store %struct.nvmet_tcp_cmd* %8, %struct.nvmet_tcp_cmd** %4, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %10, i32 0, i32 4
  %12 = call i64 @msg_data_left(%struct.TYPE_6__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %15, i32 0, i32 5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %20, i32 0, i32 4
  %22 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sock_recvmsg(i32 %19, %struct.TYPE_6__* %21, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %76

31:                                               ; preds = %14
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  br label %9

43:                                               ; preds = %9
  %44 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %45 = call i32 @nvmet_tcp_unmap_pdu_iovec(%struct.nvmet_tcp_cmd* %44)
  %46 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NVMET_TCP_F_INIT_FAILED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %43
  %53 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %63 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %68 = call i32 @nvmet_tcp_prep_recv_ddgst(%struct.nvmet_tcp_cmd* %67)
  store i32 0, i32* %2, align 4
  br label %76

69:                                               ; preds = %61
  %70 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %70, i32 0, i32 3
  %72 = call i32 @nvmet_req_execute(%struct.TYPE_7__* %71)
  br label %73

73:                                               ; preds = %69, %52, %43
  %74 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %75 = call i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %66, %29
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @msg_data_left(%struct.TYPE_6__*) #1

declare dso_local i32 @sock_recvmsg(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @nvmet_tcp_unmap_pdu_iovec(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_tcp_prep_recv_ddgst(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_req_execute(%struct.TYPE_7__*) #1

declare dso_local i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
