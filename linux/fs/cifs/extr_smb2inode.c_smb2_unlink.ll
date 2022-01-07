; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_smb2_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_smb2_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }

@DELETE = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@CREATE_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@OPEN_REPARSE_POINT = common dso_local global i32 0, align 4
@ACL_NO_MODE = common dso_local global i32 0, align 4
@SMB2_OP_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_unlink(i32 %0, %struct.cifs_tcon* %1, i8* %2, %struct.cifs_sb_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.cifs_sb_info* %3, %struct.cifs_sb_info** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %11 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @DELETE, align 4
  %14 = load i32, i32* @FILE_OPEN, align 4
  %15 = load i32, i32* @CREATE_DELETE_ON_CLOSE, align 4
  %16 = load i32, i32* @OPEN_REPARSE_POINT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ACL_NO_MODE, align 4
  %19 = load i32, i32* @SMB2_OP_DELETE, align 4
  %20 = call i32 @smb2_compound_op(i32 %9, %struct.cifs_tcon* %10, %struct.cifs_sb_info* %11, i8* %12, i32 %13, i32 %14, i32 %17, i32 %18, i32* null, i32 %19, i32* null)
  ret i32 %20
}

declare dso_local i32 @smb2_compound_op(i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, i32, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
