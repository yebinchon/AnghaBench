; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_handle_h2c_data_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_handle_h2c_data_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32, %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd*, %struct.TYPE_2__ }
%struct.nvmet_tcp_cmd = type { i64, i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.nvme_tcp_data_pdu }
%struct.nvme_tcp_data_pdu = type { i64, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"ttag %u unexpected data offset %u (expected %u)\0A\00", align 1
@NVME_SC_INVALID_FIELD = common dso_local global i32 0, align 4
@NVME_SC_DNR = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NVMET_TCP_RECV_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*)* @nvmet_tcp_handle_h2c_data_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_handle_h2c_data_pdu(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  %4 = alloca %struct.nvme_tcp_data_pdu*, align 8
  %5 = alloca %struct.nvmet_tcp_cmd*, align 8
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %3, align 8
  %6 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %7 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.nvme_tcp_data_pdu* %8, %struct.nvme_tcp_data_pdu** %4, align 8
  %9 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %10 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %9, i32 0, i32 2
  %11 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %10, align 8
  %12 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %11, i64 %14
  store %struct.nvmet_tcp_cmd* %15, %struct.nvmet_tcp_cmd** %5, align 8
  %16 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  %20 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %1
  %25 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  %32 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %31, i64 %34)
  %36 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %36, i32 0, i32 3
  %38 = load i32, i32* @NVME_SC_INVALID_FIELD, align 4
  %39 = load i32, i32* @NVME_SC_DNR, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @nvmet_req_complete(i32* %37, i32 %40)
  %42 = load i32, i32* @EPROTO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %61

44:                                               ; preds = %1
  %45 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %4, align 8
  %46 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %54 = call i32 @nvmet_tcp_map_pdu_iovec(%struct.nvmet_tcp_cmd* %53)
  %55 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %56 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %57 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %56, i32 0, i32 1
  store %struct.nvmet_tcp_cmd* %55, %struct.nvmet_tcp_cmd** %57, align 8
  %58 = load i32, i32* @NVMET_TCP_RECV_DATA, align 4
  %59 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %60 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %44, %24
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64, i64) #1

declare dso_local i32 @nvmet_req_complete(i32*, i32) #1

declare dso_local i32 @nvmet_tcp_map_pdu_iovec(%struct.nvmet_tcp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
