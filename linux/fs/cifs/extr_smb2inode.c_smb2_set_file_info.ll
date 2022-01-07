; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_smb2_set_file_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_smb2_set_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }

@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@ACL_NO_MODE = common dso_local global i32 0, align 4
@SMB2_OP_SET_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_set_file_info(%struct.inode* %0, i8* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca %struct.tcon_link*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cifs_sb_info* @CIFS_SB(i32 %15)
  store %struct.cifs_sb_info* %16, %struct.cifs_sb_info** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %66

42:                                               ; preds = %36, %31, %26, %21, %4
  %43 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %44 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %43)
  store %struct.tcon_link* %44, %struct.tcon_link** %11, align 8
  %45 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %46 = call i64 @IS_ERR(%struct.tcon_link* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %50 = call i32 @PTR_ERR(%struct.tcon_link* %49)
  store i32 %50, i32* %5, align 4
  br label %66

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %54 = call i32 @tlink_tcon(%struct.tcon_link* %53)
  %55 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %58 = load i32, i32* @FILE_OPEN, align 4
  %59 = load i32, i32* @ACL_NO_MODE, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = load i32, i32* @SMB2_OP_SET_INFO, align 4
  %62 = call i32 @smb2_compound_op(i32 %52, i32 %54, %struct.cifs_sb_info* %55, i8* %56, i32 %57, i32 %58, i32 0, i32 %59, %struct.TYPE_4__* %60, i32 %61, i32* null)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %64 = call i32 @cifs_put_tlink(%struct.tcon_link* %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %51, %48, %41
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local i32 @smb2_compound_op(i32, i32, %struct.cifs_sb_info*, i8*, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
