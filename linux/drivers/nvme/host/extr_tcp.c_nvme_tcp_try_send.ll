; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { %struct.nvme_tcp_request* }
%struct.nvme_tcp_request = type { i64 }

@NVME_TCP_SEND_CMD_PDU = common dso_local global i64 0, align 8
@NVME_TCP_SEND_H2C_PDU = common dso_local global i64 0, align 8
@NVME_TCP_SEND_DATA = common dso_local global i64 0, align 8
@NVME_TCP_SEND_DDGST = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_queue*)* @nvme_tcp_try_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_try_send(%struct.nvme_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_tcp_queue*, align 8
  %4 = alloca %struct.nvme_tcp_request*, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %6, i32 0, i32 0
  %8 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %7, align 8
  %9 = icmp ne %struct.nvme_tcp_request* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %12 = call %struct.nvme_tcp_request* @nvme_tcp_fetch_request(%struct.nvme_tcp_queue* %11)
  %13 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %13, i32 0, i32 0
  store %struct.nvme_tcp_request* %12, %struct.nvme_tcp_request** %14, align 8
  %15 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %15, i32 0, i32 0
  %17 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %16, align 8
  %18 = icmp ne %struct.nvme_tcp_request* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %87

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %22, i32 0, i32 0
  %24 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %23, align 8
  store %struct.nvme_tcp_request* %24, %struct.nvme_tcp_request** %4, align 8
  %25 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NVME_TCP_SEND_CMD_PDU, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %32 = call i32 @nvme_tcp_try_send_cmd_pdu(%struct.nvme_tcp_request* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %79

36:                                               ; preds = %30
  %37 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %38 = call i32 @nvme_tcp_has_inline_data(%struct.nvme_tcp_request* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %87

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %45 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NVME_TCP_SEND_H2C_PDU, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %51 = call i32 @nvme_tcp_try_send_data_pdu(%struct.nvme_tcp_request* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %79

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %58 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NVME_TCP_SEND_DATA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %64 = call i32 @nvme_tcp_try_send_data(%struct.nvme_tcp_request* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %79

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %71 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NVME_TCP_SEND_DDGST, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %77 = call i32 @nvme_tcp_try_send_ddgst(%struct.nvme_tcp_request* %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %67, %54, %35
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %40, %19
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.nvme_tcp_request* @nvme_tcp_fetch_request(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @nvme_tcp_try_send_cmd_pdu(%struct.nvme_tcp_request*) #1

declare dso_local i32 @nvme_tcp_has_inline_data(%struct.nvme_tcp_request*) #1

declare dso_local i32 @nvme_tcp_try_send_data_pdu(%struct.nvme_tcp_request*) #1

declare dso_local i32 @nvme_tcp_try_send_data(%struct.nvme_tcp_request*) #1

declare dso_local i32 @nvme_tcp_try_send_ddgst(%struct.nvme_tcp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
