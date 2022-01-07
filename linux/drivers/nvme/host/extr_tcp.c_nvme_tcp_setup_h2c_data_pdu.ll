; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_setup_h2c_data_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_setup_h2c_data_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_request = type { i64, i64, i64, i64, %struct.nvme_tcp_queue*, %struct.nvme_tcp_data_pdu* }
%struct.nvme_tcp_queue = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvme_tcp_data_pdu = type { i8*, i8*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i64, i32, i32 }
%struct.nvme_tcp_r2t_pdu = type { i32, i32, i32 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"req %d r2t len %u exceeded data len %u (%zu sent)\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"req %d unexpected r2t offset %u (expected %zu)\0A\00", align 1
@nvme_tcp_h2c_data = common dso_local global i32 0, align 4
@NVME_TCP_F_DATA_LAST = common dso_local global i32 0, align 4
@NVME_TCP_F_HDGST = common dso_local global i32 0, align 4
@NVME_TCP_F_DDGST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_request*, %struct.nvme_tcp_r2t_pdu*)* @nvme_tcp_setup_h2c_data_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_setup_h2c_data_pdu(%struct.nvme_tcp_request* %0, %struct.nvme_tcp_r2t_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_tcp_request*, align 8
  %5 = alloca %struct.nvme_tcp_r2t_pdu*, align 8
  %6 = alloca %struct.nvme_tcp_data_pdu*, align 8
  %7 = alloca %struct.nvme_tcp_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nvme_tcp_request* %0, %struct.nvme_tcp_request** %4, align 8
  store %struct.nvme_tcp_r2t_pdu* %1, %struct.nvme_tcp_r2t_pdu** %5, align 8
  %11 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %12 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %11, i32 0, i32 5
  %13 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %12, align 8
  store %struct.nvme_tcp_data_pdu* %13, %struct.nvme_tcp_data_pdu** %6, align 8
  %14 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %15 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %14, i32 0, i32 4
  %16 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %15, align 8
  store %struct.nvme_tcp_queue* %16, %struct.nvme_tcp_queue** %7, align 8
  %17 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %18 = call %struct.request* @blk_mq_rq_from_pdu(%struct.nvme_tcp_request* %17)
  store %struct.request* %18, %struct.request** %8, align 8
  %19 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %7, align 8
  %20 = call i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue* %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %7, align 8
  %22 = call i64 @nvme_tcp_ddgst_len(%struct.nvme_tcp_queue* %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %5, align 8
  %24 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  %27 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %30 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %32 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %39 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %2
  %46 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %7, align 8
  %47 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.request*, %struct.request** %8, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %56 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %59 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %62 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, i32, i64, i64, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57, i64 %60, i64 %63)
  %65 = load i32, i32* @EPROTO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %186

67:                                               ; preds = %2
  %68 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %5, align 8
  %69 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le32_to_cpu(i32 %70)
  %72 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %73 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %67
  %80 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %7, align 8
  %81 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.request*, %struct.request** %8, align 8
  %87 = getelementptr inbounds %struct.request, %struct.request* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %5, align 8
  %90 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  %93 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %94 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, i32, i64, i64, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %88, i64 %92, i64 %95)
  %97 = load i32, i32* @EPROTO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %186

99:                                               ; preds = %67
  %100 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %101 = call i32 @memset(%struct.nvme_tcp_data_pdu* %100, i32 0, i32 56)
  %102 = load i32, i32* @nvme_tcp_h2c_data, align 4
  %103 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %104 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* @NVME_TCP_F_DATA_LAST, align 4
  %107 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %108 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 8
  %110 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %7, align 8
  %111 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %99
  %115 = load i32, i32* @NVME_TCP_F_HDGST, align 4
  %116 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %117 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %114, %99
  %122 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %7, align 8
  %123 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i32, i32* @NVME_TCP_F_DDGST, align 4
  %128 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %129 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %126, %121
  %134 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %135 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 56, i32* %136, align 8
  %137 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %138 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %9, align 8
  %143 = add nsw i64 %141, %142
  %144 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %145 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store i64 %143, i64* %146, align 8
  %147 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %148 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %9, align 8
  %153 = add nsw i64 %151, %152
  %154 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %155 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = load i64, i64* %10, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i8* @cpu_to_le32(i64 %159)
  %161 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %162 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %5, align 8
  %165 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %168 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.request*, %struct.request** %8, align 8
  %170 = getelementptr inbounds %struct.request, %struct.request* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %173 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %175 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i8* @cpu_to_le32(i64 %176)
  %178 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %179 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  %180 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %4, align 8
  %181 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i8* @cpu_to_le32(i64 %182)
  %184 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %6, align 8
  %185 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %133, %79, %45
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.request* @blk_mq_rq_from_pdu(%struct.nvme_tcp_request*) #1

declare dso_local i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i64 @nvme_tcp_ddgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i64, ...) #1

declare dso_local i32 @memset(%struct.nvme_tcp_data_pdu*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
