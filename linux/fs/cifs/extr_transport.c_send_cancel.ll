; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_send_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_send_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.smb_rqst = type { i32 }
%struct.mid_q_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*)* @send_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_cancel(%struct.TCP_Server_Info* %0, %struct.smb_rqst* %1, %struct.mid_q_entry* %2) #0 {
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca %struct.mid_q_entry*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %5, align 8
  store %struct.mid_q_entry* %2, %struct.mid_q_entry** %6, align 8
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %8 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*)**
  %12 = load i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*)*, i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*)** %11, align 8
  %13 = icmp ne i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*)* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %16 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*)**
  %20 = load i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*)*, i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*)** %19, align 8
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %22 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %23 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %24 = call i32 %20(%struct.TCP_Server_Info* %21, %struct.smb_rqst* %22, %struct.mid_q_entry* %23)
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %14
  %27 = phi i32 [ %24, %14 ], [ 0, %25 ]
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
