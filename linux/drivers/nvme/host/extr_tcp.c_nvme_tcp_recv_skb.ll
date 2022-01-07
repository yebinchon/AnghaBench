; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_recv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_recv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvme_tcp_queue* }
%struct.nvme_tcp_queue = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"receive failed:  %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.sk_buff*, i32, i64)* @nvme_tcp_recv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_recv_skb(%struct.TYPE_8__* %0, %struct.sk_buff* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvme_tcp_queue*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %15, align 8
  store %struct.nvme_tcp_queue* %16, %struct.nvme_tcp_queue** %10, align 8
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %11, align 8
  br label %18

18:                                               ; preds = %59, %4
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %18
  %22 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %10, align 8
  %23 = call i32 @nvme_tcp_recv_state(%struct.nvme_tcp_queue* %22)
  switch i32 %23, label %36 [
    i32 128, label %24
    i32 130, label %28
    i32 129, label %32
  ]

24:                                               ; preds = %21
  %25 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i32 @nvme_tcp_recv_pdu(%struct.nvme_tcp_queue* %25, %struct.sk_buff* %26, i32* %8, i64* %9)
  store i32 %27, i32* %12, align 4
  br label %39

28:                                               ; preds = %21
  %29 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @nvme_tcp_recv_data(%struct.nvme_tcp_queue* %29, %struct.sk_buff* %30, i32* %8, i64* %9)
  store i32 %31, i32* %12, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %10, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @nvme_tcp_recv_ddgst(%struct.nvme_tcp_queue* %33, %struct.sk_buff* %34, i32* %8, i64* %9)
  store i32 %35, i32* %12, align 4
  br label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %32, %28, %24
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %10, align 8
  %44 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %10, align 8
  %52 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %10, align 8
  %54 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @nvme_tcp_error_recovery(%struct.TYPE_9__* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %63

59:                                               ; preds = %39
  br label %18

60:                                               ; preds = %18
  %61 = load i64, i64* %11, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %42
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @nvme_tcp_recv_state(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @nvme_tcp_recv_pdu(%struct.nvme_tcp_queue*, %struct.sk_buff*, i32*, i64*) #1

declare dso_local i32 @nvme_tcp_recv_data(%struct.nvme_tcp_queue*, %struct.sk_buff*, i32*, i64*) #1

declare dso_local i32 @nvme_tcp_recv_ddgst(%struct.nvme_tcp_queue*, %struct.sk_buff*, i32*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @nvme_tcp_error_recovery(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
