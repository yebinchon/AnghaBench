; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send_data_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send_data_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_request = type { i32, i32, i32, %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_queue* }
%struct.nvme_tcp_data_pdu = type { i32 }
%struct.nvme_tcp_queue = type { i32, i64, i32, i64 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@NVME_TCP_SEND_DATA = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_request*)* @nvme_tcp_try_send_data_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_try_send_data_pdu(%struct.nvme_tcp_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_tcp_request*, align 8
  %4 = alloca %struct.nvme_tcp_queue*, align 8
  %5 = alloca %struct.nvme_tcp_data_pdu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvme_tcp_request* %0, %struct.nvme_tcp_request** %3, align 8
  %9 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %9, i32 0, i32 4
  %11 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %10, align 8
  store %struct.nvme_tcp_queue* %11, %struct.nvme_tcp_queue** %4, align 8
  %12 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %12, i32 0, i32 3
  %14 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %13, align 8
  store %struct.nvme_tcp_data_pdu* %14, %struct.nvme_tcp_data_pdu** %5, align 8
  %15 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %16 = call i32 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub i64 4, %20
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %27 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %5, align 8
  %40 = call i32 @nvme_tcp_hdgst(i32 %38, %struct.nvme_tcp_data_pdu* %39, i32 4)
  br label %41

41:                                               ; preds = %35, %30, %1
  %42 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %5, align 8
  %46 = call i32 @virt_to_page(%struct.nvme_tcp_data_pdu* %45)
  %47 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %5, align 8
  %48 = call i64 @offset_in_page(%struct.nvme_tcp_data_pdu* %47)
  %49 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %50 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MSG_DONTWAIT, align 4
  %56 = load i32, i32* @MSG_MORE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @kernel_sendpage(i32 %44, i32 %46, i64 %53, i32 %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sle i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %41
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %103

66:                                               ; preds = %41
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @NVME_TCP_SEND_DATA, align 4
  %74 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %75 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %77 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %82 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @crypto_ahash_init(i32 %83)
  br label %85

85:                                               ; preds = %80, %72
  %86 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %87 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %92 = load i32, i32* @WRITE, align 4
  %93 = call i32 @nvme_tcp_init_iter(%struct.nvme_tcp_request* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %85
  store i32 1, i32* %2, align 4
  br label %103

95:                                               ; preds = %66
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %98 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @EAGAIN, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %95, %94, %64
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @nvme_tcp_hdgst(i32, %struct.nvme_tcp_data_pdu*, i32) #1

declare dso_local i32 @kernel_sendpage(i32, i32, i64, i32, i32) #1

declare dso_local i32 @virt_to_page(%struct.nvme_tcp_data_pdu*) #1

declare dso_local i64 @offset_in_page(%struct.nvme_tcp_data_pdu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypto_ahash_init(i32) #1

declare dso_local i32 @nvme_tcp_init_iter(%struct.nvme_tcp_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
