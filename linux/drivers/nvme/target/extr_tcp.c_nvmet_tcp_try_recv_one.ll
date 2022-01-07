; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_recv_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_recv_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i64 }

@NVMET_TCP_RECV_ERR = common dso_local global i64 0, align 8
@NVMET_TCP_RECV_PDU = common dso_local global i64 0, align 8
@NVMET_TCP_RECV_DATA = common dso_local global i64 0, align 8
@NVMET_TCP_RECV_DDGST = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*)* @nvmet_tcp_try_recv_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_try_recv_one(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %6 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NVMET_TCP_RECV_ERR, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %16 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NVMET_TCP_RECV_PDU, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %22 = call i32 @nvmet_tcp_try_recv_pdu(%struct.nvmet_tcp_queue* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %54

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %14
  %28 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %29 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NVMET_TCP_RECV_DATA, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %35 = call i32 @nvmet_tcp_try_recv_data(%struct.nvmet_tcp_queue* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %54

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %42 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NVMET_TCP_RECV_DDGST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %48 = call i32 @nvmet_tcp_try_recv_ddgst(%struct.nvmet_tcp_queue* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %54

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %51, %38, %25
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %63, %62, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvmet_tcp_try_recv_pdu(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @nvmet_tcp_try_recv_data(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @nvmet_tcp_try_recv_ddgst(%struct.nvmet_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
