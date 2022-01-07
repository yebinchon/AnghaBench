; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_recv_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_recv_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32, i64, %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvme_tcp_hdr }
%struct.nvme_tcp_hdr = type { i64, i32 }
%struct.kvec = type { i64, i8* }
%struct.msghdr = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unexpected pdu type %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"pdu %d bad hlen %d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*)* @nvmet_tcp_try_recv_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_try_recv_pdu(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  %4 = alloca %struct.nvme_tcp_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvec, align 8
  %7 = alloca %struct.msghdr, align 4
  %8 = alloca i64, align 8
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %3, align 8
  %9 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %10 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.nvme_tcp_hdr* %12, %struct.nvme_tcp_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  %14 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %14, i32* %13, align 4
  br label %15

15:                                               ; preds = %112, %1
  %16 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %17 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %16, i32 0, i32 2
  %18 = bitcast %struct.TYPE_5__* %17 to i8*
  %19 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %20 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %18, i64 %22
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %26 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %30 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kernel_recvmsg(i32 %31, %struct.msghdr* %7, %struct.kvec* %6, i32 1, i64 %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %15
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %164

44:                                               ; preds = %15
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %47 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %53 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %57 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %164

63:                                               ; preds = %44
  %64 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %65 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %67, 16
  br i1 %68, label %69, label %125

69:                                               ; preds = %63
  %70 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %71 = call i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue* %70)
  store i64 %71, i64* %8, align 8
  %72 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %73 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @nvmet_tcp_pdu_valid(i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %69
  %82 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %83 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %87 = call i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %164

90:                                               ; preds = %69
  %91 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %92 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %95 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @nvmet_tcp_pdu_size(i32 %96)
  %98 = icmp ne i64 %93, %97
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %90
  %103 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %104 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %107 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %105, i64 %108)
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %164

112:                                              ; preds = %90
  %113 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %114 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %117 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %115, %119
  %121 = load i64, i64* %8, align 8
  %122 = add nsw i64 %120, %121
  %123 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %124 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %15

125:                                              ; preds = %63
  %126 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %127 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %132 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %133 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %132, i32 0, i32 2
  %134 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %135 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = call i64 @nvmet_tcp_verify_hdgst(%struct.nvmet_tcp_queue* %131, %struct.TYPE_5__* %133, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %142 = call i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %141)
  %143 = load i32, i32* @EPROTO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %164

145:                                              ; preds = %130, %125
  %146 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %147 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %152 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %153 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %152, i32 0, i32 2
  %154 = call i64 @nvmet_tcp_check_ddgst(%struct.nvmet_tcp_queue* %151, %struct.TYPE_5__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %158 = call i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %157)
  %159 = load i32, i32* @EPROTO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %164

161:                                              ; preds = %150, %145
  %162 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %163 = call i32 @nvmet_tcp_done_recv_pdu(%struct.nvmet_tcp_queue* %162)
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %161, %156, %140, %102, %81, %60, %42
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @kernel_recvmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @nvmet_tcp_pdu_valid(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue*) #1

declare dso_local i64 @nvmet_tcp_pdu_size(i32) #1

declare dso_local i64 @nvmet_tcp_verify_hdgst(%struct.nvmet_tcp_queue*, %struct.TYPE_5__*, i64) #1

declare dso_local i64 @nvmet_tcp_check_ddgst(%struct.nvmet_tcp_queue*, %struct.TYPE_5__*) #1

declare dso_local i32 @nvmet_tcp_done_recv_pdu(%struct.nvmet_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
