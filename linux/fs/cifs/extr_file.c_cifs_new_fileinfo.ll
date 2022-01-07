; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_new_fileinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_new_fileinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.cifsFileInfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.cifs_fid_locks* }
%struct.cifs_fid_locks = type { i32, %struct.cifsFileInfo*, i32 }
%struct.cifs_fid = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.file = type { i32, %struct.cifsFileInfo*, i32 }
%struct.tcon_link = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.cifsInodeInfo = type { i32, i32, i32, i32 }
%struct.cifs_tcon = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.cifsFileInfo*, %struct.cifs_fid*, i64)*, i64 (i64)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@cifs_oplock_break = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Reset oplock val from read to None due to mand locks\0A\00", align 1
@CIFS_OPLOCK_NO_CHANGE = common dso_local global i64 0, align 8
@FMODE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifsFileInfo* @cifs_new_fileinfo(%struct.cifs_fid* %0, %struct.file* %1, %struct.tcon_link* %2, i64 %3) #0 {
  %5 = alloca %struct.cifsFileInfo*, align 8
  %6 = alloca %struct.cifs_fid*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.tcon_link*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.cifsInodeInfo*, align 8
  %13 = alloca %struct.cifsFileInfo*, align 8
  %14 = alloca %struct.cifs_fid_locks*, align 8
  %15 = alloca %struct.cifs_tcon*, align 8
  %16 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.cifs_fid* %0, %struct.cifs_fid** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.tcon_link* %2, %struct.tcon_link** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = call %struct.dentry* @file_dentry(%struct.file* %17)
  store %struct.dentry* %18, %struct.dentry** %10, align 8
  %19 = load %struct.dentry*, %struct.dentry** %10, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %21)
  store %struct.cifsInodeInfo* %22, %struct.cifsInodeInfo** %12, align 8
  %23 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %24 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %23)
  store %struct.cifs_tcon* %24, %struct.cifs_tcon** %15, align 8
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %26 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %28, align 8
  store %struct.TCP_Server_Info* %29, %struct.TCP_Server_Info** %16, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 56, i32 %30)
  %32 = bitcast i8* %31 to %struct.cifsFileInfo*
  store %struct.cifsFileInfo* %32, %struct.cifsFileInfo** %13, align 8
  %33 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %34 = icmp eq %struct.cifsFileInfo* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  store %struct.cifsFileInfo* %36, %struct.cifsFileInfo** %5, align 8
  br label %206

37:                                               ; preds = %4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 24, i32 %38)
  %40 = bitcast i8* %39 to %struct.cifs_fid_locks*
  store %struct.cifs_fid_locks* %40, %struct.cifs_fid_locks** %14, align 8
  %41 = load %struct.cifs_fid_locks*, %struct.cifs_fid_locks** %14, align 8
  %42 = icmp ne %struct.cifs_fid_locks* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %45 = call i32 @kfree(%struct.cifsFileInfo* %44)
  store %struct.cifsFileInfo* null, %struct.cifsFileInfo** %5, align 8
  br label %206

46:                                               ; preds = %37
  %47 = load %struct.cifs_fid_locks*, %struct.cifs_fid_locks** %14, align 8
  %48 = getelementptr inbounds %struct.cifs_fid_locks, %struct.cifs_fid_locks* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %51 = load %struct.cifs_fid_locks*, %struct.cifs_fid_locks** %14, align 8
  %52 = getelementptr inbounds %struct.cifs_fid_locks, %struct.cifs_fid_locks* %51, i32 0, i32 1
  store %struct.cifsFileInfo* %50, %struct.cifsFileInfo** %52, align 8
  %53 = load %struct.cifs_fid_locks*, %struct.cifs_fid_locks** %14, align 8
  %54 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %55 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %54, i32 0, i32 12
  store %struct.cifs_fid_locks* %53, %struct.cifs_fid_locks** %55, align 8
  %56 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %57 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %56, i32 0, i32 2
  %58 = call i32 @cifs_down_write(i32* %57)
  %59 = load %struct.cifs_fid_locks*, %struct.cifs_fid_locks** %14, align 8
  %60 = getelementptr inbounds %struct.cifs_fid_locks, %struct.cifs_fid_locks* %59, i32 0, i32 0
  %61 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %62 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %61, i32 0, i32 3
  %63 = call i32 @list_add(i32* %60, i32* %62)
  %64 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %65 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %64, i32 0, i32 2
  %66 = call i32 @up_write(i32* %65)
  %67 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %68 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %73 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 4
  %74 = call i32 (...) @current_fsuid()
  %75 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %76 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load %struct.dentry*, %struct.dentry** %10, align 8
  %78 = call i32 @dget(%struct.dentry* %77)
  %79 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %80 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  %81 = load %struct.file*, %struct.file** %7, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %85 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 8
  %86 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %87 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %89 = call i32 @cifs_get_tlink(%struct.tcon_link* %88)
  %90 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %91 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %93 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %92, i32 0, i32 6
  %94 = load i32, i32* @cifs_oplock_break, align 4
  %95 = call i32 @INIT_WORK(i32* %93, i32 %94)
  %96 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %97 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %96, i32 0, i32 5
  %98 = call i32 @mutex_init(i32* %97)
  %99 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %100 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %99, i32 0, i32 4
  %101 = call i32 @spin_lock_init(i32* %100)
  %102 = load %struct.inode*, %struct.inode** %11, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cifs_sb_active(i32 %104)
  %106 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %107 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i64 (i64)*, i64 (i64)** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i64 %110(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %46
  %115 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %116 = call i64 @cifs_has_mand_locks(%struct.cifsInodeInfo* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* @FYI, align 4
  %120 = call i32 @cifs_dbg(i32 %119, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %121

121:                                              ; preds = %118, %114, %46
  %122 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %123 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %122, i32 0, i32 0
  %124 = call i32 @spin_lock(i32* %123)
  %125 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %126 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @CIFS_OPLOCK_NO_CHANGE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %121
  %133 = load i64, i64* %9, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %137 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  br label %141

141:                                              ; preds = %135, %132, %121
  %142 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %143 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = call i32 @list_del(i32* %145)
  %147 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %148 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %150 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32 (%struct.cifsFileInfo*, %struct.cifs_fid*, i64)*, i32 (%struct.cifsFileInfo*, %struct.cifs_fid*, i64)** %152, align 8
  %154 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %155 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 %153(%struct.cifsFileInfo* %154, %struct.cifs_fid* %155, i64 %156)
  %158 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %159 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %158, i32 0, i32 3
  %160 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %161 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %160, i32 0, i32 2
  %162 = call i32 @list_add(i32* %159, i32* %161)
  %163 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %164 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %163, i32 0, i32 1
  %165 = call i32 @atomic_inc(i32* %164)
  %166 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %167 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %166, i32 0, i32 0
  %168 = call i32 @spin_lock(i32* %167)
  %169 = load %struct.file*, %struct.file** %7, align 8
  %170 = getelementptr inbounds %struct.file, %struct.file* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @FMODE_READ, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %141
  %176 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %177 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %176, i32 0, i32 2
  %178 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %179 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %178, i32 0, i32 1
  %180 = call i32 @list_add(i32* %177, i32* %179)
  br label %187

181:                                              ; preds = %141
  %182 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %183 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %182, i32 0, i32 2
  %184 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %185 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %184, i32 0, i32 1
  %186 = call i32 @list_add_tail(i32* %183, i32* %185)
  br label %187

187:                                              ; preds = %181, %175
  %188 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %189 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %188, i32 0, i32 0
  %190 = call i32 @spin_unlock(i32* %189)
  %191 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %192 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %191, i32 0, i32 0
  %193 = call i32 @spin_unlock(i32* %192)
  %194 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %195 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %187
  %199 = load %struct.inode*, %struct.inode** %11, align 8
  %200 = call i32 @cifs_zap_mapping(%struct.inode* %199)
  br label %201

201:                                              ; preds = %198, %187
  %202 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %203 = load %struct.file*, %struct.file** %7, align 8
  %204 = getelementptr inbounds %struct.file, %struct.file* %203, i32 0, i32 1
  store %struct.cifsFileInfo* %202, %struct.cifsFileInfo** %204, align 8
  %205 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  store %struct.cifsFileInfo* %205, %struct.cifsFileInfo** %5, align 8
  br label %206

206:                                              ; preds = %201, %43, %35
  %207 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  ret %struct.cifsFileInfo* %207
}

declare dso_local %struct.dentry* @file_dentry(%struct.file*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cifsFileInfo*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cifs_down_write(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @cifs_get_tlink(%struct.tcon_link*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cifs_sb_active(i32) #1

declare dso_local i64 @cifs_has_mand_locks(%struct.cifsInodeInfo*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_zap_mapping(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
