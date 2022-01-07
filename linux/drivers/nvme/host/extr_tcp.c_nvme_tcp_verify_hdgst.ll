; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_verify_hdgst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_verify_hdgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_tcp_hdr = type { i32, i32 }

@NVME_TCP_F_HDGST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"queue %d: header digest flag is cleared\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"header digest error: recv %#x expected %#x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_queue*, i8*, i64)* @nvme_tcp_verify_hdgst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_verify_hdgst(%struct.nvme_tcp_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_tcp_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvme_tcp_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.nvme_tcp_hdr*
  store %struct.nvme_tcp_hdr* %12, %struct.nvme_tcp_hdr** %8, align 8
  %13 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %8, align 8
  %14 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NVME_TCP_F_HDGST, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %5, align 8
  %25 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %5, align 8
  %31 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %30)
  %32 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EPROTO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %76

35:                                               ; preds = %3
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %8, align 8
  %38 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %36, i64 %40
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %5, align 8
  %45 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @nvme_tcp_hdgst(i32 %46, i8* %47, i64 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %8, align 8
  %52 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %50, i64 %54
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %35
  %62 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %5, align 8
  %63 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @le32_to_cpu(i64 %68)
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @le32_to_cpu(i64 %70)
  %72 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %61, %23
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @nvme_tcp_hdgst(i32, i8*, i64) #1

declare dso_local i32 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
