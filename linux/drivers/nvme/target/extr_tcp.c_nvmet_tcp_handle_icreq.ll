; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_handle_icreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_handle_icreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icreq_pdu }
%struct.nvme_tcp_icresp_pdu = type { i32, i64, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i64, i32 }
%struct.nvme_tcp_icreq_pdu = type { i64, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i32, %struct.nvme_tcp_icresp_pdu* }

@.str = private unnamed_addr constant [30 x i8] c"bad nvme-tcp pdu length (%d)\0A\00", align 1
@NVME_TCP_PFV_1_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"queue %d: bad pfv %d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"queue %d: unsupported hpda %d\0A\00", align 1
@NVME_TCP_HDR_DIGEST_ENABLE = common dso_local global i32 0, align 4
@NVME_TCP_DATA_DIGEST_ENABLE = common dso_local global i32 0, align 4
@nvme_tcp_icresp = common dso_local global i32 0, align 4
@NVMET_TCP_Q_LIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*)* @nvmet_tcp_handle_icreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_handle_icreq(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  %4 = alloca %struct.nvme_tcp_icreq_pdu*, align 8
  %5 = alloca %struct.nvme_tcp_icresp_pdu*, align 8
  %6 = alloca %struct.msghdr, align 4
  %7 = alloca %struct.kvec, align 8
  %8 = alloca i32, align 4
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %3, align 8
  %9 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %10 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store %struct.nvme_tcp_icreq_pdu* %11, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %12 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %13 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.nvme_tcp_icresp_pdu* %14, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %15 = bitcast %struct.msghdr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 24
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %31 = call i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %34 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NVME_TCP_PFV_1_0, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %40 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 %44)
  %46 = load i32, i32* @EPROTO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %188

48:                                               ; preds = %32
  %49 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %55 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %58 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %56, i64 %59)
  %61 = load i32, i32* @EPROTO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %188

63:                                               ; preds = %48
  %64 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %65 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NVME_TCP_HDR_DIGEST_ENABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %74 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %76 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @NVME_TCP_DATA_DIGEST_ENABLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %85 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %87 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %63
  %91 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %92 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90, %63
  %96 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %97 = call i32 @nvmet_tcp_alloc_crypto(%struct.nvmet_tcp_queue* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %188

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %90
  %104 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %105 = call i32 @memset(%struct.nvme_tcp_icresp_pdu* %104, i32 0, i32 64)
  %106 = load i32, i32* @nvme_tcp_icresp, align 4
  %107 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %108 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 8
  %110 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %111 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 64, i32* %112, align 8
  %113 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %114 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %117 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @cpu_to_le32(i32 %119)
  %121 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %122 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i8* %120, i8** %123, align 8
  %124 = load i64, i64* @NVME_TCP_PFV_1_0, align 8
  %125 = call i32 @cpu_to_le16(i64 %124)
  %126 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %127 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = call i8* @cpu_to_le32(i32 65535)
  %129 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %130 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %132 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %134 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %103
  %138 = load i32, i32* @NVME_TCP_HDR_DIGEST_ENABLE, align 4
  %139 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %140 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %103
  %144 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %145 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32, i32* @NVME_TCP_DATA_DIGEST_ENABLE, align 4
  %150 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %151 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %148, %143
  %155 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %156 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  store %struct.nvme_tcp_icresp_pdu* %155, %struct.nvme_tcp_icresp_pdu** %156, align 8
  %157 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  store i32 64, i32* %157, align 8
  %158 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %159 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @kernel_sendmsg(i32 %160, %struct.msghdr* %6, %struct.kvec* %7, i32 1, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %154
  br label %173

167:                                              ; preds = %154
  %168 = load i32, i32* @NVMET_TCP_Q_LIVE, align 4
  %169 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %170 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %172 = call i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue* %171)
  store i32 0, i32* %2, align 4
  br label %188

173:                                              ; preds = %166
  %174 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %175 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %180 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178, %173
  %184 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %185 = call i32 @nvmet_tcp_free_crypto(%struct.nvmet_tcp_queue* %184)
  br label %186

186:                                              ; preds = %183, %178
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %186, %167, %100, %53, %38
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @pr_err(i8*, i32, ...) #2

declare dso_local i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue*) #2

declare dso_local i32 @nvmet_tcp_alloc_crypto(%struct.nvmet_tcp_queue*) #2

declare dso_local i32 @memset(%struct.nvme_tcp_icresp_pdu*, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le16(i64) #2

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i32) #2

declare dso_local i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue*) #2

declare dso_local i32 @nvmet_tcp_free_crypto(%struct.nvmet_tcp_queue*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
