; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_stat2inode_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_stat2inode_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_stat_dotl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v9fs_inode = type { i32 }

@P9_STATS_BASIC = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@V9FS_STAT2INODE_KEEP_ISIZE = common dso_local global i32 0, align 4
@P9_STATS_ATIME = common dso_local global i32 0, align 4
@P9_STATS_MTIME = common dso_local global i32 0, align 4
@P9_STATS_CTIME = common dso_local global i32 0, align 4
@P9_STATS_UID = common dso_local global i32 0, align 4
@P9_STATS_GID = common dso_local global i32 0, align 4
@P9_STATS_NLINK = common dso_local global i32 0, align 4
@P9_STATS_MODE = common dso_local global i32 0, align 4
@P9_STATS_RDEV = common dso_local global i32 0, align 4
@P9_STATS_SIZE = common dso_local global i32 0, align 4
@P9_STATS_BLOCKS = common dso_local global i32 0, align 4
@P9_STATS_GEN = common dso_local global i32 0, align 4
@V9FS_INO_INVALID_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_stat2inode_dotl(%struct.p9_stat_dotl* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.p9_stat_dotl*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v9fs_inode*, align 8
  store %struct.p9_stat_dotl* %0, %struct.p9_stat_dotl** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %9)
  store %struct.v9fs_inode* %10, %struct.v9fs_inode** %8, align 8
  %11 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %12 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @P9_STATS_BASIC, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @P9_STATS_BASIC, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %102

18:                                               ; preds = %3
  %19 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %20 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %26 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %32 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %38 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %44 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %50 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %56 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %61 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %67 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_nlink(%struct.inode* %65, i32 %68)
  %70 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %71 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @S_IALLUGO, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %7, align 4
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @S_IALLUGO, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @V9FS_STAT2INODE_KEEP_ISIZE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %18
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %93 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @v9fs_i_size_write(%struct.inode* %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %18
  %97 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %98 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %281

102:                                              ; preds = %3
  %103 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %104 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @P9_STATS_ATIME, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %111 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %110, i32 0, i32 14
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %117 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %116, i32 0, i32 13
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %109, %102
  %123 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %124 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @P9_STATS_MTIME, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %122
  %130 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %131 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %137 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.inode*, %struct.inode** %5, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %129, %122
  %143 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %144 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @P9_STATS_CTIME, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %142
  %150 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %151 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.inode*, %struct.inode** %5, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %157 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.inode*, %struct.inode** %5, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 4
  br label %162

162:                                              ; preds = %149, %142
  %163 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %164 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @P9_STATS_UID, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %171 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.inode*, %struct.inode** %5, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %169, %162
  %176 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %177 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @P9_STATS_GID, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %184 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.inode*, %struct.inode** %5, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %182, %175
  %189 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %190 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @P9_STATS_NLINK, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load %struct.inode*, %struct.inode** %5, align 8
  %197 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %198 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @set_nlink(%struct.inode* %196, i32 %199)
  br label %201

201:                                              ; preds = %195, %188
  %202 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %203 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @P9_STATS_MODE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %235

208:                                              ; preds = %201
  %209 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %210 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.inode*, %struct.inode** %5, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 4
  %214 = load %struct.inode*, %struct.inode** %5, align 8
  %215 = getelementptr inbounds %struct.inode, %struct.inode* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @S_ISBLK(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %208
  %220 = load %struct.inode*, %struct.inode** %5, align 8
  %221 = getelementptr inbounds %struct.inode, %struct.inode* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @S_ISCHR(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %219, %208
  %226 = load %struct.inode*, %struct.inode** %5, align 8
  %227 = load %struct.inode*, %struct.inode** %5, align 8
  %228 = getelementptr inbounds %struct.inode, %struct.inode* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.inode*, %struct.inode** %5, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @init_special_inode(%struct.inode* %226, i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %225, %219
  br label %235

235:                                              ; preds = %234, %201
  %236 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %237 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @P9_STATS_RDEV, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %235
  %243 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %244 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @new_decode_dev(i32 %245)
  %247 = load %struct.inode*, %struct.inode** %5, align 8
  %248 = getelementptr inbounds %struct.inode, %struct.inode* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  br label %249

249:                                              ; preds = %242, %235
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @V9FS_STAT2INODE_KEEP_ISIZE, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %267, label %254

254:                                              ; preds = %249
  %255 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %256 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @P9_STATS_SIZE, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %254
  %262 = load %struct.inode*, %struct.inode** %5, align 8
  %263 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %264 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @v9fs_i_size_write(%struct.inode* %262, i32 %265)
  br label %267

267:                                              ; preds = %261, %254, %249
  %268 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %269 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @P9_STATS_BLOCKS, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %267
  %275 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %276 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.inode*, %struct.inode** %5, align 8
  %279 = getelementptr inbounds %struct.inode, %struct.inode* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 4
  br label %280

280:                                              ; preds = %274, %267
  br label %281

281:                                              ; preds = %280, %96
  %282 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %283 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @P9_STATS_GEN, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %281
  %289 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %4, align 8
  %290 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.inode*, %struct.inode** %5, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %288, %281
  %295 = load i32, i32* @V9FS_INO_INVALID_ATTR, align 4
  %296 = xor i32 %295, -1
  %297 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %298 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %299, %296
  store i32 %300, i32* %298, align 4
  ret void
}

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @v9fs_i_size_write(%struct.inode*, i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
