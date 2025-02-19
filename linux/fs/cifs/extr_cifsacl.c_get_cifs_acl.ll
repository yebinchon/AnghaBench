; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_get_cifs_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_get_cifs_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ntsd = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.inode = type { i32 }
%struct.cifsFileInfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifs_ntsd* @get_cifs_acl(%struct.cifs_sb_info* %0, %struct.inode* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.cifs_ntsd*, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cifs_ntsd*, align 8
  %11 = alloca %struct.cifsFileInfo*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.cifs_ntsd* null, %struct.cifs_ntsd** %10, align 8
  store %struct.cifsFileInfo* null, %struct.cifsFileInfo** %11, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call i32 @CIFS_I(%struct.inode* %15)
  %17 = call %struct.cifsFileInfo* @find_readable_file(i32 %16, i32 1)
  store %struct.cifsFileInfo* %17, %struct.cifsFileInfo** %11, align 8
  br label %18

18:                                               ; preds = %14, %4
  %19 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %20 = icmp ne %struct.cifsFileInfo* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call %struct.cifs_ntsd* @get_cifs_acl_by_path(%struct.cifs_sb_info* %22, i8* %23, i32* %24)
  store %struct.cifs_ntsd* %25, %struct.cifs_ntsd** %5, align 8
  br label %35

26:                                               ; preds = %18
  %27 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %28 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %29 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %28, i32 0, i32 0
  %30 = load i32*, i32** %9, align 8
  %31 = call %struct.cifs_ntsd* @get_cifs_acl_by_fid(%struct.cifs_sb_info* %27, i32* %29, i32* %30)
  store %struct.cifs_ntsd* %31, %struct.cifs_ntsd** %10, align 8
  %32 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %33 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %32)
  %34 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %10, align 8
  store %struct.cifs_ntsd* %34, %struct.cifs_ntsd** %5, align 8
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %5, align 8
  ret %struct.cifs_ntsd* %36
}

declare dso_local %struct.cifsFileInfo* @find_readable_file(i32, i32) #1

declare dso_local i32 @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_ntsd* @get_cifs_acl_by_path(%struct.cifs_sb_info*, i8*, i32*) #1

declare dso_local %struct.cifs_ntsd* @get_cifs_acl_by_fid(%struct.cifs_sb_info*, i32*, i32*) #1

declare dso_local i32 @cifsFileInfo_put(%struct.cifsFileInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
