; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_find_smb_tcon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_find_smb_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.TCP_Server_Info = type { i32 }
%struct.cifs_ses = type { i32 }

@cifs_tcp_ses_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifs_tcon* @smb2_find_smb_tcon(%struct.TCP_Server_Info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_ses*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.cifs_ses* @smb2_find_smb_ses_unlocked(%struct.TCP_Server_Info* %11, i32 %12)
  store %struct.cifs_ses* %13, %struct.cifs_ses** %8, align 8
  %14 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %15 = icmp ne %struct.cifs_ses* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  store %struct.cifs_tcon* null, %struct.cifs_tcon** %4, align 8
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.cifs_tcon* @smb2_find_smb_sess_tcon_unlocked(%struct.cifs_ses* %19, i32 %20)
  store %struct.cifs_tcon* %21, %struct.cifs_tcon** %9, align 8
  %22 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %23 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  store %struct.cifs_tcon* %23, %struct.cifs_tcon** %4, align 8
  br label %24

24:                                               ; preds = %18, %16
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  ret %struct.cifs_tcon* %25
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.cifs_ses* @smb2_find_smb_ses_unlocked(%struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.cifs_tcon* @smb2_find_smb_sess_tcon_unlocked(%struct.cifs_ses*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
