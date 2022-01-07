; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_do_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_do_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)* }
%struct.cifs_fid = type { i32 }
%struct.cifs_open_parms = type { i8*, i32, %struct.cifs_fid*, i32, i32, i32, %struct.cifs_sb_info*, %struct.cifs_tcon* }

@ENOSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dentry*, i8*, %struct.dentry*, i8*)* @cifs_do_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_do_rename(i32 %0, %struct.dentry* %1, i8* %2, %struct.dentry* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.tcon_link*, align 8
  %14 = alloca %struct.cifs_tcon*, align 8
  %15 = alloca %struct.TCP_Server_Info*, align 8
  %16 = alloca %struct.cifs_fid, align 4
  %17 = alloca %struct.cifs_open_parms, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = load %struct.dentry*, %struct.dentry** %8, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.cifs_sb_info* @CIFS_SB(i32 %22)
  store %struct.cifs_sb_info* %23, %struct.cifs_sb_info** %12, align 8
  %24 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %25 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %24)
  store %struct.tcon_link* %25, %struct.tcon_link** %13, align 8
  %26 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %27 = call i64 @IS_ERR(%struct.tcon_link* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %31 = call i32 @PTR_ERR(%struct.tcon_link* %30)
  store i32 %31, i32* %6, align 4
  br label %131

32:                                               ; preds = %5
  %33 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %34 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %33)
  store %struct.cifs_tcon* %34, %struct.cifs_tcon** %14, align 8
  %35 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %36 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %38, align 8
  store %struct.TCP_Server_Info* %39, %struct.TCP_Server_Info** %15, align 8
  %40 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %41 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)** %43, align 8
  %45 = icmp ne i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* @ENOSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %131

49:                                               ; preds = %32
  %50 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %51 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %60 = call i32 %54(i32 %55, %struct.cifs_tcon* %56, i8* %57, i8* %58, %struct.cifs_sb_info* %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %49
  br label %127

69:                                               ; preds = %63
  %70 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %71 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %127

77:                                               ; preds = %69
  %78 = load %struct.dentry*, %struct.dentry** %10, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dentry*, %struct.dentry** %8, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %127

86:                                               ; preds = %77
  %87 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %88 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 7
  store %struct.cifs_tcon* %87, %struct.cifs_tcon** %88, align 8
  %89 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %90 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 6
  store %struct.cifs_sb_info* %89, %struct.cifs_sb_info** %90, align 8
  %91 = load i32, i32* @DELETE, align 4
  %92 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 5
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* @CREATE_NOT_DIR, align 4
  %94 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 4
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @FILE_OPEN, align 4
  %96 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 3
  store i32 %95, i32* %96, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 0
  store i8* %97, i8** %98, align 8
  %99 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 2
  store %struct.cifs_fid* %16, %struct.cifs_fid** %99, align 8
  %100 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %17, i32 0, i32 1
  store i32 0, i32* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @CIFS_open(i32 %101, %struct.cifs_open_parms* %17, i32* %18, i32* null)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %86
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %108 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %16, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dentry*, %struct.dentry** %10, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %116 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %119 = call i32 @cifs_remap(%struct.cifs_sb_info* %118)
  %120 = call i32 @CIFSSMBRenameOpenFile(i32 %106, %struct.cifs_tcon* %107, i32 %109, i8* %114, i32 %117, i32 %119)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %123 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %16, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @CIFSSMBClose(i32 %121, %struct.cifs_tcon* %122, i32 %124)
  br label %126

126:                                              ; preds = %105, %86
  br label %127

127:                                              ; preds = %126, %85, %76, %68
  %128 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %129 = call i32 @cifs_put_tlink(%struct.tcon_link* %128)
  %130 = load i32, i32* %19, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %127, %46, %29
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @CIFS_open(i32, %struct.cifs_open_parms*, i32*, i32*) #1

declare dso_local i32 @CIFSSMBRenameOpenFile(i32, %struct.cifs_tcon*, i32, i8*, i32, i32) #1

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
