; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send_cmd_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send_cmd_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_request = type { i32, i32, %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_queue* }
%struct.nvme_tcp_cmd_pdu = type { i32 }
%struct.nvme_tcp_queue = type { i32, i64, i32, i64 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@NVME_TCP_SEND_DATA = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_request*)* @nvme_tcp_try_send_cmd_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_try_send_cmd_pdu(%struct.nvme_tcp_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_tcp_request*, align 8
  %4 = alloca %struct.nvme_tcp_queue*, align 8
  %5 = alloca %struct.nvme_tcp_cmd_pdu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_tcp_request* %0, %struct.nvme_tcp_request** %3, align 8
  %11 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %11, i32 0, i32 3
  %13 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %12, align 8
  store %struct.nvme_tcp_queue* %13, %struct.nvme_tcp_queue** %4, align 8
  %14 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %14, i32 0, i32 2
  %16 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %15, align 8
  store %struct.nvme_tcp_cmd_pdu* %16, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %17 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %18 = call i32 @nvme_tcp_has_inline_data(%struct.nvme_tcp_request* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MSG_DONTWAIT, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @MSG_MORE, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @MSG_EOR, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = or i32 %19, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %30 = call i32 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 4, %32
  %34 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = sub i64 %33, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %26
  %45 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %51 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %54 = call i32 @nvme_tcp_hdgst(i32 %52, %struct.nvme_tcp_cmd_pdu* %53, i32 4)
  br label %55

55:                                               ; preds = %49, %44, %26
  %56 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %57 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %60 = call i32 @virt_to_page(%struct.nvme_tcp_cmd_pdu* %59)
  %61 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %62 = call i32 @offset_in_page(%struct.nvme_tcp_cmd_pdu* %61)
  %63 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %64 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %62, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @kernel_sendpage(i32 %58, i32 %60, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sle i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %2, align 4
  br label %115

77:                                               ; preds = %55
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %107, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load i32, i32* @NVME_TCP_SEND_DATA, align 4
  %88 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %89 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %91 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %96 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @crypto_ahash_init(i32 %97)
  br label %99

99:                                               ; preds = %94, %86
  %100 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %101 = load i32, i32* @WRITE, align 4
  %102 = call i32 @nvme_tcp_init_iter(%struct.nvme_tcp_request* %100, i32 %101)
  br label %106

103:                                              ; preds = %83
  %104 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %105 = call i32 @nvme_tcp_done_send_req(%struct.nvme_tcp_queue* %104)
  br label %106

106:                                              ; preds = %103, %99
  store i32 1, i32* %2, align 4
  br label %115

107:                                              ; preds = %77
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %110 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %107, %106, %75
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @nvme_tcp_has_inline_data(%struct.nvme_tcp_request*) #1

declare dso_local i32 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @nvme_tcp_hdgst(i32, %struct.nvme_tcp_cmd_pdu*, i32) #1

declare dso_local i32 @kernel_sendpage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(%struct.nvme_tcp_cmd_pdu*) #1

declare dso_local i32 @offset_in_page(%struct.nvme_tcp_cmd_pdu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypto_ahash_init(i32) #1

declare dso_local i32 @nvme_tcp_init_iter(%struct.nvme_tcp_request*, i32) #1

declare dso_local i32 @nvme_tcp_done_send_req(%struct.nvme_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
