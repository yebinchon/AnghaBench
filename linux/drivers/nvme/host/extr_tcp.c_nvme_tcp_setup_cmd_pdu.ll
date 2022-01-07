; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_setup_cmd_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_setup_cmd_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.request = type { i64 }
%struct.nvme_tcp_request = type { i64, i64, i64, i64, i64, i64, i32, %struct.nvme_tcp_queue*, %struct.nvme_tcp_cmd_pdu* }
%struct.nvme_tcp_queue = type { %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvme_tcp_cmd_pdu = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }

@NVME_TCP_SEND_CMD_PDU = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@READ = common dso_local global i32 0, align 4
@nvme_tcp_cmd = common dso_local global i32 0, align 4
@NVME_TCP_F_HDGST = common dso_local global i32 0, align 4
@NVME_TCP_F_DDGST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to map data (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvme_ns*, %struct.request*)* @nvme_tcp_setup_cmd_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvme_tcp_setup_cmd_pdu(%struct.nvme_ns* %0, %struct.request* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.nvme_tcp_request*, align 8
  %7 = alloca %struct.nvme_tcp_cmd_pdu*, align 8
  %8 = alloca %struct.nvme_tcp_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = call %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request* %12)
  store %struct.nvme_tcp_request* %13, %struct.nvme_tcp_request** %6, align 8
  %14 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %15 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %14, i32 0, i32 8
  %16 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %15, align 8
  store %struct.nvme_tcp_cmd_pdu* %16, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %17 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %18 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %17, i32 0, i32 7
  %19 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %18, align 8
  store %struct.nvme_tcp_queue* %19, %struct.nvme_tcp_queue** %8, align 8
  %20 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %8, align 8
  %21 = call i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue* %20)
  store i64 %21, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %22 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %25 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %24, i32 0, i32 1
  %26 = call i64 @nvme_setup_cmd(%struct.nvme_ns* %22, %struct.request* %23, i32* %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %3, align 8
  br label %175

31:                                               ; preds = %2
  %32 = load i32, i32* @NVME_TCP_SEND_CMD_PDU, align 4
  %33 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %34 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %36 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %38 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %40 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %42 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.request*, %struct.request** %5, align 8
  %44 = call i64 @blk_rq_payload_bytes(%struct.request* %43)
  %45 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %46 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.request*, %struct.request** %5, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %51 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.request*, %struct.request** %5, align 8
  %53 = call i64 @rq_data_dir(%struct.request* %52)
  %54 = load i64, i64* @WRITE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %31
  %57 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %58 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %8, align 8
  %61 = call i64 @nvme_tcp_inline_data_size(%struct.nvme_tcp_queue* %60)
  %62 = icmp sle i64 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %65 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %68 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %79

69:                                               ; preds = %56, %31
  %70 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %71 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %76 = load i32, i32* @READ, align 4
  %77 = call i32 @nvme_tcp_init_iter(%struct.nvme_tcp_request* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %69
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, i32* @nvme_tcp_cmd, align 4
  %81 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %82 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 8
  %84 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %85 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i32 0, i32* %86, align 4
  %87 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %8, align 8
  %88 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load i32, i32* @NVME_TCP_F_HDGST, align 4
  %93 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %94 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %79
  %99 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %8, align 8
  %100 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %105 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i32, i32* @NVME_TCP_F_DDGST, align 4
  %110 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %111 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 4
  %115 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %8, align 8
  %116 = call i64 @nvme_tcp_ddgst_len(%struct.nvme_tcp_queue* %115)
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %108, %103, %98
  %118 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %119 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 40, i32* %120, align 8
  %121 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %122 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %117
  %126 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %127 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %9, align 8
  %132 = add nsw i64 %130, %131
  br label %134

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %125
  %135 = phi i64 [ %132, %125 ], [ 0, %133 ]
  %136 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %137 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  store i64 %135, i64* %138, align 8
  %139 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %140 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %9, align 8
  %145 = add nsw i64 %143, %144
  %146 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %147 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %145, %148
  %150 = load i64, i64* %10, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @cpu_to_le32(i64 %151)
  %153 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %7, align 8
  %154 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  %156 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %8, align 8
  %157 = load %struct.request*, %struct.request** %5, align 8
  %158 = call i64 @nvme_tcp_map_data(%struct.nvme_tcp_queue* %156, %struct.request* %157)
  store i64 %158, i64* %11, align 8
  %159 = load i64, i64* %11, align 8
  %160 = call i64 @unlikely(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %134
  %163 = load %struct.request*, %struct.request** %5, align 8
  %164 = call i32 @nvme_cleanup_cmd(%struct.request* %163)
  %165 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %8, align 8
  %166 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %11, align 8
  %172 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %171)
  %173 = load i64, i64* %11, align 8
  store i64 %173, i64* %3, align 8
  br label %175

174:                                              ; preds = %134
  store i64 0, i64* %3, align 8
  br label %175

175:                                              ; preds = %174, %162, %29
  %176 = load i64, i64* %3, align 8
  ret i64 %176
}

declare dso_local %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i64 @nvme_setup_cmd(%struct.nvme_ns*, %struct.request*, i32*) #1

declare dso_local i64 @blk_rq_payload_bytes(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @nvme_tcp_inline_data_size(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @nvme_tcp_init_iter(%struct.nvme_tcp_request*, i32) #1

declare dso_local i64 @nvme_tcp_ddgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @nvme_tcp_map_data(%struct.nvme_tcp_queue*, %struct.request*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @nvme_cleanup_cmd(%struct.request*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
