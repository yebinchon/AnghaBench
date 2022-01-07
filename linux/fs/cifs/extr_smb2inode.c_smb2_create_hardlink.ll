; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_smb2_create_hardlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2inode.c_smb2_create_hardlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }

@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@SMB2_OP_HARDLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_create_hardlink(i32 %0, %struct.cifs_tcon* %1, i8* %2, i8* %3, %struct.cifs_sb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cifs_sb_info*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.cifs_sb_info* %4, %struct.cifs_sb_info** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %16 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %17 = load i32, i32* @SMB2_OP_HARDLINK, align 4
  %18 = call i32 @smb2_set_path_attr(i32 %11, %struct.cifs_tcon* %12, i8* %13, i8* %14, %struct.cifs_sb_info* %15, i32 %16, i32 %17, i32* null)
  ret i32 %18
}

declare dso_local i32 @smb2_set_path_attr(i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
