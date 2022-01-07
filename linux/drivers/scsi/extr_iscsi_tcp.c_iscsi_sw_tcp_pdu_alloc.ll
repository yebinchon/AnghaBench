; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_pdu_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_pdu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i64, %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task* }
%struct.iscsi_tcp_task = type { i32 }

@ISCSI_DIGEST_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32)* @iscsi_sw_tcp_pdu_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_pdu_alloc(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_tcp_task*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %6, i32 0, i32 1
  %8 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  store %struct.iscsi_tcp_task* %8, %struct.iscsi_tcp_task** %5, align 8
  %9 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %9, i32 0, i32 1
  %11 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %10, align 8
  %12 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %11, i64 4
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 2
  store %struct.iscsi_tcp_task* %12, %struct.iscsi_tcp_task** %14, align 8
  %15 = load i64, i64* @ISCSI_DIGEST_SIZE, align 8
  %16 = sub i64 4, %15
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
