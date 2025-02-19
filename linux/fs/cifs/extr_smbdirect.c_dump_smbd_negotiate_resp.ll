; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_dump_smbd_negotiate_resp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_dump_smbd_negotiate_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_negotiate_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [204 x i8] c"resp message min_version %u max_version %u negotiated_version %u credits_requested %u credits_granted %u status %u max_readwrite_size %u preferred_send_size %u max_receive_size %u max_fragmented_size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbd_negotiate_resp*)* @dump_smbd_negotiate_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_smbd_negotiate_resp(%struct.smbd_negotiate_resp* %0) #0 {
  %2 = alloca %struct.smbd_negotiate_resp*, align 8
  store %struct.smbd_negotiate_resp* %0, %struct.smbd_negotiate_resp** %2, align 8
  %3 = load i32, i32* @INFO, align 4
  %4 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %5 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %4, i32 0, i32 9
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %8 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %11 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %14 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %17 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %20 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %23 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %26 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %29 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.smbd_negotiate_resp*, %struct.smbd_negotiate_resp** %2, align 8
  %32 = getelementptr inbounds %struct.smbd_negotiate_resp, %struct.smbd_negotiate_resp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @log_rdma_event(i32 %3, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  ret void
}

declare dso_local i32 @log_rdma_event(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
