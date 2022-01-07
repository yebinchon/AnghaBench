; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_qfs_tcon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_qfs_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, i32 }
%struct.cifs_open_parms = type { i32, %struct.cifs_fid*, i64, i32, i32, %struct.cifs_tcon* }
%struct.cifs_fid = type { i32, i32 }

@SMB2_OPLOCK_LEVEL_NONE = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@FS_ATTRIBUTE_INFORMATION = common dso_local global i32 0, align 4
@FS_DEVICE_INFORMATION = common dso_local global i32 0, align 4
@FS_VOLUME_INFORMATION = common dso_local global i32 0, align 4
@FS_SECTOR_SIZE_INFORMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cifs_tcon*)* @smb3_qfs_tcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb3_qfs_tcon(i32 %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_open_parms, align 8
  %9 = alloca %struct.cifs_fid, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @SMB2_OPLOCK_LEVEL_NONE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %13 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %16 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 5
  store %struct.cifs_tcon* %15, %struct.cifs_tcon** %16, align 8
  %17 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %18 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @FILE_OPEN, align 4
  %20 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 1
  store %struct.cifs_fid* %9, %struct.cifs_fid** %22, align 8
  %23 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %8, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @SMB2_open(i32 %27, %struct.cifs_open_parms* %8, i32* %6, i32* %7, i32* null, i32* null, i32* null)
  store i32 %28, i32* %5, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %32 = call i32 @open_shroot(i32 %30, %struct.cifs_tcon* %31, %struct.cifs_fid* %9)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %87

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %40 = call i32 @SMB3_request_interfaces(i32 %38, %struct.cifs_tcon* %39)
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %43 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FS_ATTRIBUTE_INFORMATION, align 4
  %48 = call i32 @SMB2_QFS_attr(i32 %41, %struct.cifs_tcon* %42, i32 %44, i32 %46, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %51 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FS_DEVICE_INFORMATION, align 4
  %56 = call i32 @SMB2_QFS_attr(i32 %49, %struct.cifs_tcon* %50, i32 %52, i32 %54, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %59 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FS_VOLUME_INFORMATION, align 4
  %64 = call i32 @SMB2_QFS_attr(i32 %57, %struct.cifs_tcon* %58, i32 %60, i32 %62, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %67 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FS_SECTOR_SIZE_INFORMATION, align 4
  %72 = call i32 @SMB2_QFS_attr(i32 %65, %struct.cifs_tcon* %66, i32 %68, i32 %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %37
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %78 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @SMB2_close(i32 %76, %struct.cifs_tcon* %77, i32 %79, i32 %81)
  br label %87

83:                                               ; preds = %37
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %85 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %84, i32 0, i32 1
  %86 = call i32 @close_shroot(i32* %85)
  br label %87

87:                                               ; preds = %36, %83, %75
  ret void
}

declare dso_local i32 @SMB2_open(i32, %struct.cifs_open_parms*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @open_shroot(i32, %struct.cifs_tcon*, %struct.cifs_fid*) #1

declare dso_local i32 @SMB3_request_interfaces(i32, %struct.cifs_tcon*) #1

declare dso_local i32 @SMB2_QFS_attr(i32, %struct.cifs_tcon*, i32, i32, i32) #1

declare dso_local i32 @SMB2_close(i32, %struct.cifs_tcon*, i32, i32) #1

declare dso_local i32 @close_shroot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
