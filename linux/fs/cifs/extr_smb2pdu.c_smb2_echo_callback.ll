; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_echo_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_echo_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i64, i64, %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i32 }
%struct.smb2_echo_rsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cifs_credits = type { i32, i32 }

@MID_RESPONSE_RECEIVED = common dso_local global i64 0, align 8
@MID_RESPONSE_MALFORMED = common dso_local global i64 0, align 8
@CIFS_ECHO_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mid_q_entry*)* @smb2_echo_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb2_echo_callback(%struct.mid_q_entry* %0) #0 {
  %2 = alloca %struct.mid_q_entry*, align 8
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca %struct.smb2_echo_rsp*, align 8
  %5 = alloca %struct.cifs_credits, align 4
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %2, align 8
  %6 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %7 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %6, i32 0, i32 2
  %8 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  store %struct.TCP_Server_Info* %8, %struct.TCP_Server_Info** %3, align 8
  %9 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %10 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smb2_echo_rsp*
  store %struct.smb2_echo_rsp* %12, %struct.smb2_echo_rsp** %4, align 8
  %13 = bitcast %struct.cifs_credits* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %15 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MID_RESPONSE_RECEIVED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %21 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MID_RESPONSE_MALFORMED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19, %1
  %26 = load %struct.smb2_echo_rsp*, %struct.smb2_echo_rsp** %4, align 8
  %27 = getelementptr inbounds %struct.smb2_echo_rsp, %struct.smb2_echo_rsp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %33 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %25, %19
  %37 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %38 = call i32 @DeleteMidQEntry(%struct.mid_q_entry* %37)
  %39 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %40 = load i32, i32* @CIFS_ECHO_OP, align 4
  %41 = call i32 @add_credits(%struct.TCP_Server_Info* %39, %struct.cifs_credits* %5, i32 %40)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @DeleteMidQEntry(%struct.mid_q_entry*) #2

declare dso_local i32 @add_credits(%struct.TCP_Server_Info*, %struct.cifs_credits*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
