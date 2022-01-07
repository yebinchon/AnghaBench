; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_check_ddgst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_check_ddgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32 }
%struct.nvme_tcp_hdr = type { i32, i64, i32 }

@NVME_TCP_F_HDGST = common dso_local global i32 0, align 4
@NVME_TCP_F_DDGST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"queue %d: data digest flag is cleared\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*, i8*)* @nvmet_tcp_check_ddgst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_check_ddgst(%struct.nvmet_tcp_queue* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvmet_tcp_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvme_tcp_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nvme_tcp_hdr*
  store %struct.nvme_tcp_hdr* %10, %struct.nvme_tcp_hdr** %6, align 8
  %11 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %12 = call i32 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %6, align 8
  %14 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @le32_to_cpu(i32 %15)
  %17 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NVME_TCP_F_HDGST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %20, %32
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NVME_TCP_F_DDGST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %36, %30
  %45 = phi i1 [ false, %30 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %51 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EPROTO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
