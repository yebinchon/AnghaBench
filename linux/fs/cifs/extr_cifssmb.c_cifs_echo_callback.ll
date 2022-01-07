; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_echo_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_echo_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_credits = type { i32, i32 }
%struct.mid_q_entry = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i32 }

@__const.cifs_echo_callback.credits = private unnamed_addr constant %struct.cifs_credits { i32 1, i32 0 }, align 4
@CIFS_ECHO_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mid_q_entry*)* @cifs_echo_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_echo_callback(%struct.mid_q_entry* %0) #0 {
  %2 = alloca %struct.mid_q_entry*, align 8
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca %struct.cifs_credits, align 4
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %2, align 8
  %5 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %6 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %5, i32 0, i32 0
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  store %struct.TCP_Server_Info* %7, %struct.TCP_Server_Info** %3, align 8
  %8 = bitcast %struct.cifs_credits* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.cifs_credits* @__const.cifs_echo_callback.credits to i8*), i64 8, i1 false)
  %9 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %10 = call i32 @DeleteMidQEntry(%struct.mid_q_entry* %9)
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = load i32, i32* @CIFS_ECHO_OP, align 4
  %13 = call i32 @add_credits(%struct.TCP_Server_Info* %11, %struct.cifs_credits* %4, i32 %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DeleteMidQEntry(%struct.mid_q_entry*) #2

declare dso_local i32 @add_credits(%struct.TCP_Server_Info*, %struct.cifs_credits*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
