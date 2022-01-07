; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_setup_r2t_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_setup_r2t_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_cmd = type { %struct.nvmet_tcp_queue*, i64, %struct.TYPE_7__, i32, i64, %struct.nvme_tcp_r2t_pdu* }
%struct.nvmet_tcp_queue = type { i32, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvme_tcp_r2t_pdu = type { %struct.TYPE_8__, i8*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i64, i32 }

@NVMET_TCP_SEND_R2T = common dso_local global i32 0, align 4
@nvme_tcp_r2t = common dso_local global i32 0, align 4
@NVME_TCP_F_HDGST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_tcp_cmd*)* @nvmet_setup_r2t_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_setup_r2t_pdu(%struct.nvmet_tcp_cmd* %0) #0 {
  %2 = alloca %struct.nvmet_tcp_cmd*, align 8
  %3 = alloca %struct.nvme_tcp_r2t_pdu*, align 8
  %4 = alloca %struct.nvmet_tcp_queue*, align 8
  %5 = alloca i64, align 8
  store %struct.nvmet_tcp_cmd* %0, %struct.nvmet_tcp_cmd** %2, align 8
  %6 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %6, i32 0, i32 5
  %8 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %7, align 8
  store %struct.nvme_tcp_r2t_pdu* %8, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %9 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %9, i32 0, i32 0
  %11 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %10, align 8
  store %struct.nvmet_tcp_queue* %11, %struct.nvmet_tcp_queue** %4, align 8
  %12 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %12, i32 0, i32 0
  %14 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %13, align 8
  %15 = call i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue* %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @NVMET_TCP_SEND_R2T, align 4
  %19 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @nvme_tcp_r2t, align 4
  %22 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 8
  %25 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 56, i32* %30, align 8
  %31 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i8* @cpu_to_le32(i64 %40)
  %42 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %55 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %54, i32 0, i32 0
  %56 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %55, align 8
  %57 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %58 = call i32 @nvmet_tcp_cmd_tag(%struct.nvmet_tcp_queue* %56, %struct.nvmet_tcp_cmd* %57)
  %59 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %60 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %62 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %66 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = call i8* @cpu_to_le32(i64 %68)
  %70 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %71 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %73 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @cpu_to_le32(i64 %74)
  %76 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %77 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %79 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %78, i32 0, i32 0
  %80 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %79, align 8
  %81 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %1
  %85 = load i32, i32* @NVME_TCP_F_HDGST, align 4
  %86 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %87 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 4
  %91 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %92 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %3, align 8
  %95 = call i32 @nvmet_tcp_hdgst(i32 %93, %struct.nvme_tcp_r2t_pdu* %94, i32 56)
  br label %96

96:                                               ; preds = %84, %1
  ret void
}

declare dso_local i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @nvmet_tcp_cmd_tag(%struct.nvmet_tcp_queue*, %struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_tcp_hdgst(i32, %struct.nvme_tcp_r2t_pdu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
