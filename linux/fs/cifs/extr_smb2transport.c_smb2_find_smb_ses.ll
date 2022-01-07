; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_find_smb_ses.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_find_smb_ses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32 }
%struct.TCP_Server_Info = type { i32 }

@cifs_tcp_ses_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifs_ses* @smb2_find_smb_ses(%struct.TCP_Server_Info* %0, i32 %1) #0 {
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.cifs_ses* @smb2_find_smb_ses_unlocked(%struct.TCP_Server_Info* %7, i32 %8)
  store %struct.cifs_ses* %9, %struct.cifs_ses** %5, align 8
  %10 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %11 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  ret %struct.cifs_ses* %11
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.cifs_ses* @smb2_find_smb_ses_unlocked(%struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
