; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_mount_put_conns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_mount_put_conns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32 }
%struct.TCP_Server_Info = type { i32 }
%struct.cifs_ses = type { i32 }
%struct.cifs_tcon = type { i32 }

@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_sb_info*, i32, %struct.TCP_Server_Info*, %struct.cifs_ses*, %struct.cifs_tcon*)* @mount_put_conns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mount_put_conns(%struct.cifs_sb_info* %0, i32 %1, %struct.TCP_Server_Info* %2, %struct.cifs_ses* %3, %struct.cifs_tcon* %4) #0 {
  %6 = alloca %struct.cifs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TCP_Server_Info*, align 8
  %9 = alloca %struct.cifs_ses*, align 8
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca i32, align 4
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TCP_Server_Info* %2, %struct.TCP_Server_Info** %8, align 8
  store %struct.cifs_ses* %3, %struct.cifs_ses** %9, align 8
  store %struct.cifs_tcon* %4, %struct.cifs_tcon** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %13 = icmp ne %struct.cifs_tcon* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %16 = call i32 @cifs_put_tcon(%struct.cifs_tcon* %15)
  br label %31

17:                                               ; preds = %5
  %18 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %19 = icmp ne %struct.cifs_ses* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %22 = call i32 @cifs_put_smb_ses(%struct.cifs_ses* %21)
  br label %30

23:                                               ; preds = %17
  %24 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %25 = icmp ne %struct.TCP_Server_Info* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %28 = call i32 @cifs_put_tcp_session(%struct.TCP_Server_Info* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %20
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %35 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @free_xid(i32 %38)
  ret void
}

declare dso_local i32 @cifs_put_tcon(%struct.cifs_tcon*) #1

declare dso_local i32 @cifs_put_smb_ses(%struct.cifs_ses*) #1

declare dso_local i32 @cifs_put_tcp_session(%struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
