; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_qfs_tcon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_qfs_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifs_open_parms = type { i32, %struct.cifs_fid*, i64, i32, i32, %struct.cifs_tcon* }
%struct.cifs_fid = type { i32, i32 }

@SMB2_OPLOCK_LEVEL_NONE = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@FS_ATTRIBUTE_INFORMATION = common dso_local global i32 0, align 4
@FS_DEVICE_INFORMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cifs_tcon*)* @smb2_qfs_tcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb2_qfs_tcon(i32 %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_open_parms, align 8
  %9 = alloca %struct.cifs_fid, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @SMB2_OPLOCK_LEVEL_NONE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %12 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 5
  store %struct.cifs_tcon* %11, %struct.cifs_tcon** %12, align 8
  %13 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %14 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @FILE_OPEN, align 4
  %16 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 1
  store %struct.cifs_fid* %9, %struct.cifs_fid** %18, align 8
  %19 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @SMB2_open(i32 %20, %struct.cifs_open_parms* %8, i32* %6, i32* %7, i32* null, i32* null, i32* null)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %49

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %28 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FS_ATTRIBUTE_INFORMATION, align 4
  %33 = call i32 @SMB2_QFS_attr(i32 %26, %struct.cifs_tcon* %27, i32 %29, i32 %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %36 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FS_DEVICE_INFORMATION, align 4
  %41 = call i32 @SMB2_QFS_attr(i32 %34, %struct.cifs_tcon* %35, i32 %37, i32 %39, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %44 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SMB2_close(i32 %42, %struct.cifs_tcon* %43, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @SMB2_open(i32, %struct.cifs_open_parms*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SMB2_QFS_attr(i32, %struct.cifs_tcon*, i32, i32, i32) #1

declare dso_local i32 @SMB2_close(i32, %struct.cifs_tcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
