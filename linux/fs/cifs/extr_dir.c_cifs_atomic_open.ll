; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_atomic_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_atomic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type opaque
%struct.file = type { i32, i32*, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (%struct.cifs_fid*)* }
%struct.cifs_fid = type { i32 }
%struct.cifs_pending_open = type { i32 }
%struct.cifsFileInfo = type { i32 }
%struct.TYPE_7__ = type { i32 }

@O_CREAT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"parent inode = 0x%p name is: %pd and dentry = 0x%p\0A\00", align 1
@O_EXCL = common dso_local global i32 0, align 4
@FMODE_CREATED = common dso_local global i32 0, align 4
@generic_file_open = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@CIFS_MOUNT_STRICT_IO = common dso_local global i32 0, align 4
@CIFS_MOUNT_NO_BRL = common dso_local global i32 0, align 4
@cifs_file_direct_nobrl_ops = common dso_local global i32 0, align 4
@cifs_file_direct_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_atomic_open(%struct.inode* %0, %struct.dentry* %1, %struct.file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcon_link*, align 8
  %15 = alloca %struct.cifs_tcon*, align 8
  %16 = alloca %struct.TCP_Server_Info*, align 8
  %17 = alloca %struct.cifs_fid, align 4
  %18 = alloca %struct.cifs_pending_open, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.cifsFileInfo*, align 8
  %21 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @O_CREAT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %5
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = bitcast %struct.dentry* %27 to %struct.tcon_link*
  %29 = call i32 @d_in_lookup(%struct.tcon_link* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %230

34:                                               ; preds = %26
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = bitcast %struct.dentry* %36 to %struct.tcon_link*
  %38 = call %struct.tcon_link* @cifs_lookup(%struct.inode* %35, %struct.tcon_link* %37, i32 0)
  %39 = bitcast %struct.tcon_link* %38 to %struct.dentry*
  store %struct.dentry* %39, %struct.dentry** %21, align 8
  %40 = load %struct.dentry*, %struct.dentry** %21, align 8
  %41 = bitcast %struct.dentry* %40 to %struct.tcon_link*
  %42 = call i64 @IS_ERR(%struct.tcon_link* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.dentry*, %struct.dentry** %21, align 8
  %46 = bitcast %struct.dentry* %45 to %struct.tcon_link*
  %47 = call i32 @PTR_ERR(%struct.tcon_link* %46)
  store i32 %47, i32* %6, align 4
  br label %230

48:                                               ; preds = %34
  %49 = load %struct.file*, %struct.file** %9, align 8
  %50 = load %struct.dentry*, %struct.dentry** %21, align 8
  %51 = bitcast %struct.dentry* %50 to %struct.tcon_link*
  %52 = call i32 @finish_no_open(%struct.file* %49, %struct.tcon_link* %51)
  store i32 %52, i32* %6, align 4
  br label %230

53:                                               ; preds = %5
  %54 = call i32 (...) @get_xid()
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* @FYI, align 4
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = bitcast %struct.dentry* %57 to %struct.tcon_link*
  %59 = load %struct.dentry*, %struct.dentry** %8, align 8
  %60 = bitcast %struct.dentry* %59 to %struct.tcon_link*
  %61 = call i32 @cifs_dbg(i32 %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.inode* %56, %struct.tcon_link* %58, %struct.tcon_link* %60)
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_7__* @CIFS_SB(i32 %64)
  %66 = call %struct.tcon_link* @cifs_sb_tlink(%struct.TYPE_7__* %65)
  store %struct.tcon_link* %66, %struct.tcon_link** %14, align 8
  %67 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %68 = call i64 @IS_ERR(%struct.tcon_link* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %72 = call i32 @PTR_ERR(%struct.tcon_link* %71)
  store i32 %72, i32* %12, align 4
  br label %226

73:                                               ; preds = %53
  %74 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %75 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %74)
  store %struct.cifs_tcon* %75, %struct.cifs_tcon** %15, align 8
  %76 = load %struct.dentry*, %struct.dentry** %8, align 8
  %77 = bitcast %struct.dentry* %76 to %struct.tcon_link*
  %78 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %79 = call i32 @check_name(%struct.tcon_link* %77, %struct.cifs_tcon* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %223

83:                                               ; preds = %73
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %85 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %87, align 8
  store %struct.TCP_Server_Info* %88, %struct.TCP_Server_Info** %16, align 8
  %89 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %90 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32 (%struct.cifs_fid*)*, i32 (%struct.cifs_fid*)** %92, align 8
  %94 = icmp ne i32 (%struct.cifs_fid*)* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %83
  %96 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %97 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32 (%struct.cifs_fid*)*, i32 (%struct.cifs_fid*)** %99, align 8
  %101 = call i32 %100(%struct.cifs_fid* %17)
  br label %102

102:                                              ; preds = %95, %83
  %103 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %104 = call i32 @cifs_add_pending_open(%struct.cifs_fid* %17, %struct.tcon_link* %103, %struct.cifs_pending_open* %18)
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = load %struct.dentry*, %struct.dentry** %8, align 8
  %107 = bitcast %struct.dentry* %106 to %struct.tcon_link*
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @cifs_do_create(%struct.inode* %105, %struct.tcon_link* %107, i32 %108, %struct.tcon_link* %109, i32 %110, i32 %111, i32* %19, %struct.cifs_fid* %17)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = call i32 @cifs_del_pending_open(%struct.cifs_pending_open* %18)
  br label %223

117:                                              ; preds = %102
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @O_CREAT, align 4
  %120 = load i32, i32* @O_EXCL, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %118, %121
  %123 = load i32, i32* @O_CREAT, align 4
  %124 = load i32, i32* @O_EXCL, align 4
  %125 = or i32 %123, %124
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %117
  %128 = load i32, i32* @FMODE_CREATED, align 4
  %129 = load %struct.file*, %struct.file** %9, align 8
  %130 = getelementptr inbounds %struct.file, %struct.file* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %127, %117
  %134 = load %struct.file*, %struct.file** %9, align 8
  %135 = load %struct.dentry*, %struct.dentry** %8, align 8
  %136 = bitcast %struct.dentry* %135 to %struct.tcon_link*
  %137 = load i32, i32* @generic_file_open, align 4
  %138 = call i32 @finish_open(%struct.file* %134, %struct.tcon_link* %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %133
  %142 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %143 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)** %145, align 8
  %147 = icmp ne i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %141
  %149 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %150 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %156 = call i32 %153(i32 %154, %struct.cifs_tcon* %155, %struct.cifs_fid* %17)
  br label %157

157:                                              ; preds = %148, %141
  %158 = call i32 @cifs_del_pending_open(%struct.cifs_pending_open* %18)
  br label %223

159:                                              ; preds = %133
  %160 = load %struct.file*, %struct.file** %9, align 8
  %161 = getelementptr inbounds %struct.file, %struct.file* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @O_DIRECT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %193

166:                                              ; preds = %159
  %167 = load %struct.inode*, %struct.inode** %7, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call %struct.TYPE_7__* @CIFS_SB(i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @CIFS_MOUNT_STRICT_IO, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %166
  %177 = load %struct.inode*, %struct.inode** %7, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call %struct.TYPE_7__* @CIFS_SB(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @CIFS_MOUNT_NO_BRL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %176
  %187 = load %struct.file*, %struct.file** %9, align 8
  %188 = getelementptr inbounds %struct.file, %struct.file* %187, i32 0, i32 1
  store i32* @cifs_file_direct_nobrl_ops, i32** %188, align 8
  br label %192

189:                                              ; preds = %176
  %190 = load %struct.file*, %struct.file** %9, align 8
  %191 = getelementptr inbounds %struct.file, %struct.file* %190, i32 0, i32 1
  store i32* @cifs_file_direct_ops, i32** %191, align 8
  br label %192

192:                                              ; preds = %189, %186
  br label %193

193:                                              ; preds = %192, %166, %159
  %194 = load %struct.file*, %struct.file** %9, align 8
  %195 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %196 = load i32, i32* %19, align 4
  %197 = call %struct.cifsFileInfo* @cifs_new_fileinfo(%struct.cifs_fid* %17, %struct.file* %194, %struct.tcon_link* %195, i32 %196)
  store %struct.cifsFileInfo* %197, %struct.cifsFileInfo** %20, align 8
  %198 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %20, align 8
  %199 = icmp eq %struct.cifsFileInfo* %198, null
  br i1 %199, label %200, label %222

200:                                              ; preds = %193
  %201 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %202 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %201, i32 0, i32 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)** %204, align 8
  %206 = icmp ne i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)* %205, null
  br i1 %206, label %207, label %216

207:                                              ; preds = %200
  %208 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %209 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %208, i32 0, i32 0
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)** %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %215 = call i32 %212(i32 %213, %struct.cifs_tcon* %214, %struct.cifs_fid* %17)
  br label %216

216:                                              ; preds = %207, %200
  %217 = call i32 @cifs_del_pending_open(%struct.cifs_pending_open* %18)
  %218 = load %struct.file*, %struct.file** %9, align 8
  %219 = call i32 @fput(%struct.file* %218)
  %220 = load i32, i32* @ENOMEM, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %12, align 4
  br label %222

222:                                              ; preds = %216, %193
  br label %223

223:                                              ; preds = %222, %157, %115, %82
  %224 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %225 = call i32 @cifs_put_tlink(%struct.tcon_link* %224)
  br label %226

226:                                              ; preds = %223, %70
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @free_xid(i32 %227)
  %229 = load i32, i32* %12, align 4
  store i32 %229, i32* %6, align 4
  br label %230

230:                                              ; preds = %226, %48, %44, %31
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @d_in_lookup(%struct.tcon_link*) #1

declare dso_local %struct.tcon_link* @cifs_lookup(%struct.inode*, %struct.tcon_link*, i32) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local i32 @finish_no_open(%struct.file*, %struct.tcon_link*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @cifs_dbg(i32, i8*, %struct.inode*, %struct.tcon_link*, %struct.tcon_link*) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @check_name(%struct.tcon_link*, %struct.cifs_tcon*) #1

declare dso_local i32 @cifs_add_pending_open(%struct.cifs_fid*, %struct.tcon_link*, %struct.cifs_pending_open*) #1

declare dso_local i32 @cifs_do_create(%struct.inode*, %struct.tcon_link*, i32, %struct.tcon_link*, i32, i32, i32*, %struct.cifs_fid*) #1

declare dso_local i32 @cifs_del_pending_open(%struct.cifs_pending_open*) #1

declare dso_local i32 @finish_open(%struct.file*, %struct.tcon_link*, i32) #1

declare dso_local %struct.cifsFileInfo* @cifs_new_fileinfo(%struct.cifs_fid*, %struct.file*, %struct.tcon_link*, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
