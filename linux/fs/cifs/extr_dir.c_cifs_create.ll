; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (%struct.cifs_fid*)* }
%struct.cifs_fid = type { i32 }

@O_EXCL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"cifs_create parent inode = 0x%p name is: %pd and dentry = 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcon_link*, align 8
  %13 = alloca %struct.cifs_tcon*, align 8
  %14 = alloca %struct.TCP_Server_Info*, align 8
  %15 = alloca %struct.cifs_fid, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = call i32 (...) @get_xid()
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @O_EXCL, align 4
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @O_RDWR, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @FYI, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = call i32 @cifs_dbg(i32 %23, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.inode* %24, %struct.dentry* %25, %struct.dentry* %26)
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CIFS_SB(i32 %30)
  %32 = call %struct.tcon_link* @cifs_sb_tlink(i32 %31)
  store %struct.tcon_link* %32, %struct.tcon_link** %12, align 8
  %33 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %34 = call i32 @PTR_ERR(%struct.tcon_link* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %36 = call i64 @IS_ERR(%struct.tcon_link* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %89

39:                                               ; preds = %4
  %40 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %41 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %40)
  store %struct.cifs_tcon* %41, %struct.cifs_tcon** %13, align 8
  %42 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %43 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %45, align 8
  store %struct.TCP_Server_Info* %46, %struct.TCP_Server_Info** %14, align 8
  %47 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %48 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32 (%struct.cifs_fid*)*, i32 (%struct.cifs_fid*)** %50, align 8
  %52 = icmp ne i32 (%struct.cifs_fid*)* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32 (%struct.cifs_fid*)*, i32 (%struct.cifs_fid*)** %57, align 8
  %59 = call i32 %58(%struct.cifs_fid* %15)
  br label %60

60:                                               ; preds = %53, %39
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @cifs_do_create(%struct.inode* %61, %struct.dentry* %62, i32 %63, %struct.tcon_link* %64, i32 %65, i32 %66, i32* %16, %struct.cifs_fid* %15)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %60
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %72 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)** %74, align 8
  %76 = icmp ne i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %79 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %85 = call i32 %82(i32 %83, %struct.cifs_tcon* %84, %struct.cifs_fid* %15)
  br label %86

86:                                               ; preds = %77, %70, %60
  %87 = load %struct.tcon_link*, %struct.tcon_link** %12, align 8
  %88 = call i32 @cifs_put_tlink(%struct.tcon_link* %87)
  br label %89

89:                                               ; preds = %86, %38
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @free_xid(i32 %90)
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @cifs_dbg(i32, i8*, %struct.inode*, %struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(i32) #1

declare dso_local i32 @CIFS_SB(i32) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @cifs_do_create(%struct.inode*, %struct.dentry*, i32, %struct.tcon_link*, i32, i32, i32*, %struct.cifs_fid*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
