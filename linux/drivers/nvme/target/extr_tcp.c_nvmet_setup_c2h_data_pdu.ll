; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_setup_c2h_data_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_setup_c2h_data_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_cmd = type { %struct.nvmet_tcp_queue*, i64, %struct.TYPE_7__, i32, i64, %struct.nvme_tcp_data_pdu* }
%struct.nvmet_tcp_queue = type { i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nvme_tcp_data_pdu = type { %struct.TYPE_8__, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i64, i32 }

@NVMET_TCP_SEND_DATA_PDU = common dso_local global i32 0, align 4
@nvme_tcp_c2h_data = common dso_local global i32 0, align 4
@NVME_TCP_F_DATA_LAST = common dso_local global i32 0, align 4
@NVME_TCP_F_DATA_SUCCESS = common dso_local global i32 0, align 4
@NVME_TCP_F_DDGST = common dso_local global i32 0, align 4
@NVME_TCP_F_HDGST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_tcp_cmd*)* @nvmet_setup_c2h_data_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_setup_c2h_data_pdu(%struct.nvmet_tcp_cmd* %0) #0 {
  %2 = alloca %struct.nvmet_tcp_cmd*, align 8
  %3 = alloca %struct.nvme_tcp_data_pdu*, align 8
  %4 = alloca %struct.nvmet_tcp_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nvmet_tcp_cmd* %0, %struct.nvmet_tcp_cmd** %2, align 8
  %7 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %7, i32 0, i32 5
  %9 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %8, align 8
  store %struct.nvme_tcp_data_pdu* %9, %struct.nvme_tcp_data_pdu** %3, align 8
  %10 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %10, i32 0, i32 0
  %12 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %11, align 8
  store %struct.nvmet_tcp_queue* %12, %struct.nvmet_tcp_queue** %4, align 8
  %13 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %13, i32 0, i32 0
  %15 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %14, align 8
  %16 = call i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue* %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %17, i32 0, i32 0
  %19 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %18, align 8
  %20 = call i64 @nvmet_tcp_ddgst_len(%struct.nvmet_tcp_queue* %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @NVMET_TCP_SEND_DATA_PDU, align 4
  %24 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @nvme_tcp_c2h_data, align 4
  %27 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @NVME_TCP_F_DATA_LAST, align 4
  %31 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %32 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @NVME_TCP_F_DATA_SUCCESS, align 4
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = or i32 %30, %40
  %42 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 56, i32* %47, align 4
  %48 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i64 %54, i64* %57, align 8
  %58 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %59 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %5, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %66 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %64, %68
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i8* @cpu_to_le32(i64 %71)
  %73 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %74 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %77 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %83 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %85 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @cpu_to_le32(i64 %87)
  %89 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %90 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %92 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @cpu_to_le32(i64 %93)
  %95 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %96 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %98 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %39
  %102 = load i32, i32* @NVME_TCP_F_DDGST, align 4
  %103 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %104 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 8
  %108 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %109 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %112 = call i32 @nvmet_tcp_ddgst(i32 %110, %struct.nvmet_tcp_cmd* %111)
  br label %113

113:                                              ; preds = %101, %39
  %114 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %115 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %114, i32 0, i32 0
  %116 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %115, align 8
  %117 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %113
  %121 = load i32, i32* @NVME_TCP_F_HDGST, align 4
  %122 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %123 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 8
  %127 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %128 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %3, align 8
  %131 = call i32 @nvmet_tcp_hdgst(i32 %129, %struct.nvme_tcp_data_pdu* %130, i32 56)
  br label %132

132:                                              ; preds = %120, %113
  ret void
}

declare dso_local i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue*) #1

declare dso_local i64 @nvmet_tcp_ddgst_len(%struct.nvmet_tcp_queue*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @nvmet_tcp_ddgst(i32, %struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_tcp_hdgst(i32, %struct.nvme_tcp_data_pdu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
