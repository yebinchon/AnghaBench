; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_request = type { i64, i32, i32, %struct.nvme_tcp_queue* }
%struct.nvme_tcp_queue = type { i32, i64, i32 }
%struct.page = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@NVME_TCP_SEND_DDGST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_request*)* @nvme_tcp_try_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_try_send_data(%struct.nvme_tcp_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_tcp_request*, align 8
  %4 = alloca %struct.nvme_tcp_queue*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_tcp_request* %0, %struct.nvme_tcp_request** %3, align 8
  %11 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %11, i32 0, i32 3
  %13 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %12, align 8
  store %struct.nvme_tcp_queue* %13, %struct.nvme_tcp_queue** %4, align 8
  br label %14

14:                                               ; preds = %1, %113
  %15 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %16 = call %struct.page* @nvme_tcp_req_cur_page(%struct.nvme_tcp_request* %15)
  store %struct.page* %16, %struct.page** %5, align 8
  %17 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %18 = call i64 @nvme_tcp_req_cur_offset(%struct.nvme_tcp_request* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %20 = call i64 @nvme_tcp_req_cur_length(%struct.nvme_tcp_request* %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @nvme_tcp_pdu_last_send(%struct.nvme_tcp_request* %21, i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %14
  %28 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @MSG_EOR, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %40

36:                                               ; preds = %27, %14
  %37 = load i32, i32* @MSG_MORE, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.page*, %struct.page** %5, align 8
  %42 = call i32 @PageSlab(%struct.page* %41)
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %47 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @sock_no_sendpage(i32 %48, %struct.page* %49, i64 %50, i64 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  br label %63

54:                                               ; preds = %40
  %55 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %56 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @kernel_sendpage(i32 %57, %struct.page* %58, i64 %59, i64 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %54, %45
  %64 = load i32, i32* %9, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %114

68:                                               ; preds = %63
  %69 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @nvme_tcp_advance_req(%struct.nvme_tcp_request* %69, i32 %70)
  %72 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %73 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %78 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.page*, %struct.page** %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @nvme_tcp_ddgst_update(i32 %79, %struct.page* %80, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %68
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %7, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %87
  %93 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %94 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %99 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %102 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %101, i32 0, i32 2
  %103 = call i32 @nvme_tcp_ddgst_final(i32 %100, i32* %102)
  %104 = load i32, i32* @NVME_TCP_SEND_DDGST, align 4
  %105 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %106 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %108 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %112

109:                                              ; preds = %92
  %110 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %111 = call i32 @nvme_tcp_done_send_req(%struct.nvme_tcp_queue* %110)
  br label %112

112:                                              ; preds = %109, %97
  store i32 1, i32* %2, align 4
  br label %114

113:                                              ; preds = %87, %84
  br label %14

114:                                              ; preds = %112, %66
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.page* @nvme_tcp_req_cur_page(%struct.nvme_tcp_request*) #1

declare dso_local i64 @nvme_tcp_req_cur_offset(%struct.nvme_tcp_request*) #1

declare dso_local i64 @nvme_tcp_req_cur_length(%struct.nvme_tcp_request*) #1

declare dso_local i32 @nvme_tcp_pdu_last_send(%struct.nvme_tcp_request*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @sock_no_sendpage(i32, %struct.page*, i64, i64, i32) #1

declare dso_local i32 @kernel_sendpage(i32, %struct.page*, i64, i64, i32) #1

declare dso_local i32 @nvme_tcp_advance_req(%struct.nvme_tcp_request*, i32) #1

declare dso_local i32 @nvme_tcp_ddgst_update(i32, %struct.page*, i64, i32) #1

declare dso_local i32 @nvme_tcp_ddgst_final(i32, i32*) #1

declare dso_local i32 @nvme_tcp_done_send_req(%struct.nvme_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
