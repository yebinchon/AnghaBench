; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_initiate_cifs_search.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_initiate_cifs_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32, %struct.TYPE_8__, i32, %struct.tcon_link*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*, i32*, i32, %struct.TYPE_8__*)* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Full path: %s start at: %lld\0A\00", align 1
@SMB_FIND_FILE_UNIX = common dso_local global i32 0, align 4
@SMB_FIND_FILE_INFO_STANDARD = common dso_local global i32 0, align 4
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@SMB_FIND_FILE_ID_FULL_DIR_INFO = common dso_local global i32 0, align 4
@SMB_FIND_FILE_DIRECTORY_INFO = common dso_local global i32 0, align 4
@CIFS_SEARCH_CLOSE_AT_END = common dso_local global i32 0, align 4
@CIFS_SEARCH_RETURN_RESUME = common dso_local global i32 0, align 4
@CIFS_SEARCH_BACKUP_SEARCH = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*)* @initiate_cifs_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initiate_cifs_search(i32 %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cifsFileInfo*, align 8
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca %struct.tcon_link*, align 8
  %12 = alloca %struct.cifs_tcon*, align 8
  %13 = alloca %struct.TCP_Server_Info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file* %14)
  store %struct.cifs_sb_info* %15, %struct.cifs_sb_info** %10, align 8
  store %struct.tcon_link* null, %struct.tcon_link** %11, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %19 = icmp eq %struct.cifsFileInfo* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %2
  %21 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %22 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %21)
  store %struct.tcon_link* %22, %struct.tcon_link** %11, align 8
  %23 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %24 = call i64 @IS_ERR(%struct.tcon_link* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %28 = call i32 @PTR_ERR(%struct.tcon_link* %27)
  store i32 %28, i32* %3, align 4
  br label %204

29:                                               ; preds = %20
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.cifsFileInfo* @kzalloc(i32 32, i32 %30)
  store %struct.cifsFileInfo* %31, %struct.cifsFileInfo** %9, align 8
  %32 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %33 = icmp eq %struct.cifsFileInfo* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %198

37:                                               ; preds = %29
  %38 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %39 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %38, i32 0, i32 4
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 1
  store %struct.cifsFileInfo* %41, %struct.cifsFileInfo** %43, align 8
  %44 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %45 = call %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link* %44)
  %46 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %47 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %46, i32 0, i32 3
  store %struct.tcon_link* %45, %struct.tcon_link** %47, align 8
  %48 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %49 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %48)
  store %struct.cifs_tcon* %49, %struct.cifs_tcon** %12, align 8
  br label %58

50:                                               ; preds = %2
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 1
  %53 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %52, align 8
  store %struct.cifsFileInfo* %53, %struct.cifsFileInfo** %9, align 8
  %54 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %55 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %54, i32 0, i32 3
  %56 = load %struct.tcon_link*, %struct.tcon_link** %55, align 8
  %57 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %56)
  store %struct.cifs_tcon* %57, %struct.cifs_tcon** %12, align 8
  br label %58

58:                                               ; preds = %50, %37
  %59 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %60 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %62, align 8
  store %struct.TCP_Server_Info* %63, %struct.TCP_Server_Info** %13, align 8
  %64 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %13, align 8
  %65 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*, i32*, i32, %struct.TYPE_8__*)*, i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*, i32*, i32, %struct.TYPE_8__*)** %67, align 8
  %69 = icmp ne i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*, i32*, i32, %struct.TYPE_8__*)* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @ENOSYS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %198

73:                                               ; preds = %58
  %74 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %75 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %77 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = call i32 @file_dentry(%struct.file* %79)
  %81 = call i8* @build_path_from_dentry(i32 %80)
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %198

87:                                               ; preds = %73
  %88 = load i32, i32* @FYI, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.file*, %struct.file** %5, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @cifs_dbg(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %189, %87
  %95 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %96 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* @SMB_FIND_FILE_UNIX, align 4
  %101 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %102 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  br label %145

104:                                              ; preds = %94
  %105 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %106 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %111 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %113, align 8
  %115 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %109, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %104
  %122 = load i32, i32* @SMB_FIND_FILE_INFO_STANDARD, align 4
  %123 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %124 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  br label %144

126:                                              ; preds = %104
  %127 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %128 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load i32, i32* @SMB_FIND_FILE_ID_FULL_DIR_INFO, align 4
  %135 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %136 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  br label %143

138:                                              ; preds = %126
  %139 = load i32, i32* @SMB_FIND_FILE_DIRECTORY_INFO, align 4
  %140 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %141 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %121
  br label %145

145:                                              ; preds = %144, %99
  %146 = load i32, i32* @CIFS_SEARCH_CLOSE_AT_END, align 4
  %147 = load i32, i32* @CIFS_SEARCH_RETURN_RESUME, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %6, align 4
  %149 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %150 = call i64 @backup_cred(%struct.cifs_sb_info* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i32, i32* @CIFS_SEARCH_BACKUP_SEARCH, align 4
  %154 = load i32, i32* %6, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %152, %145
  %157 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %13, align 8
  %158 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*, i32*, i32, %struct.TYPE_8__*)*, i32 (i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*, i32*, i32, %struct.TYPE_8__*)** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %166 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %167 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %166, i32 0, i32 2
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %170 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %169, i32 0, i32 1
  %171 = call i32 %161(i32 %162, %struct.cifs_tcon* %163, i8* %164, %struct.cifs_sb_info* %165, i32* %167, i32 %168, %struct.TYPE_8__* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %156
  %175 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %176 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  br label %197

177:                                              ; preds = %156
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @EOPNOTSUPP, align 4
  %180 = sub nsw i32 0, %179
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %184 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %193 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %94

196:                                              ; preds = %182, %177
  br label %197

197:                                              ; preds = %196, %174
  br label %198

198:                                              ; preds = %197, %84, %70, %34
  %199 = load i8*, i8** %8, align 8
  %200 = call i32 @kfree(i8* %199)
  %201 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %202 = call i32 @cifs_put_tlink(%struct.tcon_link* %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %198, %26
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file*) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifsFileInfo* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i8* @build_path_from_dentry(i32) #1

declare dso_local i32 @file_dentry(%struct.file*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i8*, i32) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
