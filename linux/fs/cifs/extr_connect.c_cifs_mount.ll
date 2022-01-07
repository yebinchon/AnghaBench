; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32 }
%struct.smb_vol = type { i32 }
%struct.cifs_ses = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.TCP_Server_Info = type { i32 }

@EREMOTE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_mount(%struct.cifs_sb_info* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_sb_info*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_ses*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %12 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %13 = call i32 @mount_get_conns(%struct.smb_vol* %11, %struct.cifs_sb_info* %12, i32* %7, %struct.TCP_Server_Info** %10, %struct.cifs_ses** %8, %struct.cifs_tcon** %9)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %19 = icmp ne %struct.cifs_tcon* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %22 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %26 = call i32 @is_path_remote(%struct.cifs_sb_info* %21, %struct.smb_vol* %22, i32 %23, %struct.TCP_Server_Info* %24, %struct.cifs_tcon* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EREMOTE, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %20
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %46

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %17
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @free_xid(i32 %40)
  %42 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %43 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %44 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %45 = call i32 @mount_setup_tlink(%struct.cifs_sb_info* %42, %struct.cifs_ses* %43, %struct.cifs_tcon* %44)
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %37, %16
  %47 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  %50 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %51 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %52 = call i32 @mount_put_conns(%struct.cifs_sb_info* %47, i32 %48, %struct.TCP_Server_Info* %49, %struct.cifs_ses* %50, %struct.cifs_tcon* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %39
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mount_get_conns(%struct.smb_vol*, %struct.cifs_sb_info*, i32*, %struct.TCP_Server_Info**, %struct.cifs_ses**, %struct.cifs_tcon**) #1

declare dso_local i32 @is_path_remote(%struct.cifs_sb_info*, %struct.smb_vol*, i32, %struct.TCP_Server_Info*, %struct.cifs_tcon*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @mount_setup_tlink(%struct.cifs_sb_info*, %struct.cifs_ses*, %struct.cifs_tcon*) #1

declare dso_local i32 @mount_put_conns(%struct.cifs_sb_info*, i32, %struct.TCP_Server_Info*, %struct.cifs_ses*, %struct.cifs_tcon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
