; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_smb_set_file_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_smb_set_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cifs_fid = type { i32 }
%struct.cifs_open_parms = type { i32, i8*, i32, %struct.cifs_fid*, i32, i32, %struct.cifs_sb_info*, %struct.cifs_tcon* }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifsFileInfo = type { %struct.tcon_link*, i32, %struct.TYPE_7__ }
%struct.tcon_link = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cifsInodeInfo = type { i8* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"calling SetFileInfo since SetPathInfo for times not supported by this server\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, %struct.TYPE_8__*, i32)* @smb_set_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_set_file_info(%struct.inode* %0, i8* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cifs_fid, align 4
  %13 = alloca %struct.cifs_open_parms, align 8
  %14 = alloca %struct.cifsFileInfo*, align 8
  %15 = alloca %struct.cifsInodeInfo*, align 8
  %16 = alloca %struct.cifs_sb_info*, align 8
  %17 = alloca %struct.tcon_link*, align 8
  %18 = alloca %struct.cifs_tcon*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %19)
  store %struct.cifsInodeInfo* %20, %struct.cifsInodeInfo** %15, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cifs_sb_info* @CIFS_SB(i32 %23)
  store %struct.cifs_sb_info* %24, %struct.cifs_sb_info** %16, align 8
  store %struct.tcon_link* null, %struct.tcon_link** %17, align 8
  %25 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %15, align 8
  %26 = call %struct.cifsFileInfo* @find_writable_file(%struct.cifsInodeInfo* %25, i32 1)
  store %struct.cifsFileInfo* %26, %struct.cifsFileInfo** %14, align 8
  %27 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %28 = icmp ne %struct.cifsFileInfo* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %4
  %30 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %31 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %12, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %36 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %39 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %38, i32 0, i32 0
  %40 = load %struct.tcon_link*, %struct.tcon_link** %39, align 8
  %41 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %40)
  store %struct.cifs_tcon* %41, %struct.cifs_tcon** %18, align 8
  br label %121

42:                                               ; preds = %4
  %43 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %16, align 8
  %44 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %43)
  store %struct.tcon_link* %44, %struct.tcon_link** %17, align 8
  %45 = load %struct.tcon_link*, %struct.tcon_link** %17, align 8
  %46 = call i64 @IS_ERR(%struct.tcon_link* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.tcon_link*, %struct.tcon_link** %17, align 8
  %50 = call i32 @PTR_ERR(%struct.tcon_link* %49)
  store i32 %50, i32* %10, align 4
  store %struct.tcon_link* null, %struct.tcon_link** %17, align 8
  br label %151

51:                                               ; preds = %42
  %52 = load %struct.tcon_link*, %struct.tcon_link** %17, align 8
  %53 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %52)
  store %struct.cifs_tcon* %53, %struct.cifs_tcon** %18, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.cifs_tcon*, %struct.cifs_tcon** %18, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %16, align 8
  %59 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %16, align 8
  %62 = call i32 @cifs_remap(%struct.cifs_sb_info* %61)
  %63 = call i32 @CIFSSMBSetPathInfo(i32 %54, %struct.cifs_tcon* %55, i8* %56, %struct.TYPE_8__* %57, i32 %60, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %51
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %15, align 8
  %72 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %151

73:                                               ; preds = %51
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %151

84:                                               ; preds = %78, %73
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.cifs_tcon*, %struct.cifs_tcon** %18, align 8
  %87 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 7
  store %struct.cifs_tcon* %86, %struct.cifs_tcon** %87, align 8
  %88 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %16, align 8
  %89 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 6
  store %struct.cifs_sb_info* %88, %struct.cifs_sb_info** %89, align 8
  %90 = load i32, i32* @SYNCHRONIZE, align 4
  %91 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %92 = or i32 %90, %91
  %93 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load i32, i32* @CREATE_NOT_DIR, align 4
  %95 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 5
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @FILE_OPEN, align 4
  %97 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 4
  store i32 %96, i32* %97, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 3
  store %struct.cifs_fid* %12, %struct.cifs_fid** %100, align 8
  %101 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %13, i32 0, i32 2
  store i32 0, i32* %101, align 8
  %102 = load i32, i32* @FYI, align 4
  %103 = call i32 @cifs_dbg(i32 %102, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @CIFS_open(i32 %104, %struct.cifs_open_parms* %13, i32* %9, i32* null)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %85
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %108
  br label %151

117:                                              ; preds = %85
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %29
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.cifs_tcon*, %struct.cifs_tcon** %18, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %12, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @CIFSSMBSetFileInfo(i32 %122, %struct.cifs_tcon* %123, %struct.TYPE_8__* %124, i32 %126, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %121
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @le32_to_cpu(i32 %134)
  %136 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %15, align 8
  %137 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %131, %121
  %139 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %140 = icmp eq %struct.cifsFileInfo* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.cifs_tcon*, %struct.cifs_tcon** %18, align 8
  %144 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %12, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @CIFSSMBClose(i32 %142, %struct.cifs_tcon* %143, i32 %145)
  br label %150

147:                                              ; preds = %138
  %148 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %149 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %148)
  br label %150

150:                                              ; preds = %147, %141
  br label %151

151:                                              ; preds = %150, %116, %83, %66, %48
  %152 = load %struct.tcon_link*, %struct.tcon_link** %17, align 8
  %153 = icmp ne %struct.tcon_link* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.tcon_link*, %struct.tcon_link** %17, align 8
  %156 = call i32 @cifs_put_tlink(%struct.tcon_link* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifsFileInfo* @find_writable_file(%struct.cifsInodeInfo*, i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBSetPathInfo(i32, %struct.cifs_tcon*, i8*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @CIFS_open(i32, %struct.cifs_open_parms*, i32*, i32*) #1

declare dso_local i32 @CIFSSMBSetFileInfo(i32, %struct.cifs_tcon*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifsFileInfo_put(%struct.cifsFileInfo*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
