; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_recv_ddgst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_recv_ddgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32, %struct.TYPE_11__, i32, i64, i64, i32, %struct.nvmet_tcp_cmd* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nvmet_tcp_cmd = type { i64, i64, i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i8*, i64 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"queue %d: cmd %d pdu (%d) data digest error: recv %#x expected %#x\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@NVMET_TCP_F_INIT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*)* @nvmet_tcp_try_recv_ddgst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_try_recv_ddgst(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  %4 = alloca %struct.nvmet_tcp_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msghdr, align 4
  %7 = alloca %struct.kvec, align 8
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %3, align 8
  %8 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %9 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %8, i32 0, i32 6
  %10 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %9, align 8
  store %struct.nvmet_tcp_cmd* %10, %struct.nvmet_tcp_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %12 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %14 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %14, i32 0, i32 0
  %16 = bitcast i64* %15 to i8*
  %17 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %18 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %16, i64 %20
  store i8* %21, i8** %13, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  %23 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %24 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %22, align 8
  %26 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %27 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kernel_recvmsg(i32 %28, %struct.msghdr* %6, %struct.kvec* %7, i32 1, i64 %30, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %130

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %44 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %50 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %54 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %41
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %130

60:                                               ; preds = %41
  %61 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %62 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %60
  %66 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %65
  %74 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %75 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %85 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %91 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @le32_to_cpu(i64 %92)
  %94 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le32_to_cpu(i64 %96)
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %83, i32 %89, i32 %93, i32 %97)
  %99 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %100 = call i32 @nvmet_tcp_finish_cmd(%struct.nvmet_tcp_cmd* %99)
  %101 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %102 = call i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %101)
  %103 = load i32, i32* @EPROTO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %126

105:                                              ; preds = %65, %60
  %106 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %107 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @NVMET_TCP_F_INIT_FAILED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %105
  %113 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %114 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %115, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %123 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %122, i32 0, i32 4
  %124 = call i32 @nvmet_req_execute(%struct.TYPE_12__* %123)
  br label %125

125:                                              ; preds = %121, %112, %105
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %73
  %127 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %128 = call i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue* %127)
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %57, %39
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @kernel_recvmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @nvmet_tcp_finish_cmd(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @nvmet_req_execute(%struct.TYPE_12__*) #1

declare dso_local i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
