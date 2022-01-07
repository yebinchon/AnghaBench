; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_seq_num_into_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_seq_num_into_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.smb2_sync_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TCP_Server_Info*, %struct.smb2_sync_hdr*)* @smb2_seq_num_into_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb2_seq_num_into_buf(%struct.TCP_Server_Info* %0, %struct.smb2_sync_hdr* %1) #0 {
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca %struct.smb2_sync_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store %struct.smb2_sync_hdr* %1, %struct.smb2_sync_hdr** %4, align 8
  %7 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %8 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = call i32 @get_next_mid64(%struct.TCP_Server_Info* %11)
  %13 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %22, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %21 = call i32 @get_next_mid(%struct.TCP_Server_Info* %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %15

25:                                               ; preds = %15
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @get_next_mid64(%struct.TCP_Server_Info*) #1

declare dso_local i32 @get_next_mid(%struct.TCP_Server_Info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
