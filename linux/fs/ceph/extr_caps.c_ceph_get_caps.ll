; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_get_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ceph_file_info* }
%struct.ceph_file_info = type { i32, i64, i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i64, i32 }
%struct.ceph_fs_client = type { i32 }

@CEPH_FILE_MODE_WR = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@CHECK_FILELOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@NON_BLOCKING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@CEPH_INLINE_NONE = common dso_local global i64 0, align 8
@CEPH_CAP_FILE_CACHE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4
@CEPH_STAT_CAP_INLINE_DATA = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_get_caps(%struct.file* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.page** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.page**, align 8
  %14 = alloca %struct.ceph_file_info*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.ceph_inode_info*, align 8
  %17 = alloca %struct.ceph_fs_client*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.page*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.page** %5, %struct.page*** %13, align 8
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.ceph_file_info*, %struct.ceph_file_info** %23, align 8
  store %struct.ceph_file_info* %24, %struct.ceph_file_info** %14, align 8
  %25 = load %struct.file*, %struct.file** %8, align 8
  %26 = call %struct.inode* @file_inode(%struct.file* %25)
  store %struct.inode* %26, %struct.inode** %15, align 8
  %27 = load %struct.inode*, %struct.inode** %15, align 8
  %28 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %27)
  store %struct.ceph_inode_info* %28, %struct.ceph_inode_info** %16, align 8
  %29 = load %struct.inode*, %struct.inode** %15, align 8
  %30 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %29)
  store %struct.ceph_fs_client* %30, %struct.ceph_fs_client** %17, align 8
  %31 = load %struct.inode*, %struct.inode** %15, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ceph_pool_perm_check(%struct.inode* %31, i32 %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* %18, align 4
  store i32 %37, i32* %7, align 4
  br label %238

38:                                               ; preds = %6
  %39 = load %struct.ceph_file_info*, %struct.ceph_file_info** %14, align 8
  %40 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CEPH_FILE_MODE_WR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.ceph_file_info*, %struct.ceph_file_info** %14, align 8
  %47 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %17, align 8
  %50 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @READ_ONCE(i32 %51)
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EBADF, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %238

57:                                               ; preds = %45, %38
  br label %58

58:                                               ; preds = %57, %85, %127, %171, %220
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %15, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @check_max_size(%struct.inode* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.ceph_file_info*, %struct.ceph_file_info** %14, align 8
  %67 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %66, i32 0, i32 2
  %68 = call i64 @atomic_read(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @CHECK_FILELOCK, align 4
  br label %73

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  store i32 %74, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %75 = load %struct.inode*, %struct.inode** %15, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @try_get_cap_refs(%struct.inode* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32* %19)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %58

86:                                               ; preds = %73
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %129, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @wait, align 4
  %91 = load i32, i32* @woken_wake_function, align 4
  %92 = call i32 @DEFINE_WAIT_FUNC(i32 %90, i32 %91)
  %93 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %94 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %93, i32 0, i32 1
  %95 = call i32 @add_wait_queue(i32* %94, i32* @wait)
  %96 = load i32, i32* @NON_BLOCKING, align 4
  %97 = load i32, i32* %20, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %20, align 4
  br label %99

99:                                               ; preds = %115, %89
  %100 = load %struct.inode*, %struct.inode** %15, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %20, align 4
  %105 = call i32 @try_get_cap_refs(%struct.inode* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32* %19)
  store i32 %105, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load i32, i32* @current, align 4
  %110 = call i64 @signal_pending(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @ERESTARTSYS, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %18, align 4
  br label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %117 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %118 = call i32 @wait_woken(i32* @wait, i32 %116, i32 %117)
  br label %99

119:                                              ; preds = %112, %99
  %120 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %121 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %120, i32 0, i32 1
  %122 = call i32 @remove_wait_queue(i32* %121, i32* @wait)
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %58

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %86
  %130 = load %struct.ceph_file_info*, %struct.ceph_file_info** %14, align 8
  %131 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CEPH_FILE_MODE_WR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %129
  %137 = load %struct.ceph_file_info*, %struct.ceph_file_info** %14, align 8
  %138 = getelementptr inbounds %struct.ceph_file_info, %struct.ceph_file_info* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %17, align 8
  %141 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @READ_ONCE(i32 %142)
  %144 = icmp ne i64 %139, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %136
  %146 = load i32, i32* %18, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %153 = load i32, i32* %19, align 4
  %154 = call i32 @ceph_put_cap_refs(%struct.ceph_inode_info* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %148, %145
  %156 = load i32, i32* @EBADF, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %7, align 4
  br label %238

158:                                              ; preds = %136, %129
  %159 = load i32, i32* %18, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %158
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* @ESTALE, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load %struct.inode*, %struct.inode** %15, align 8
  %168 = call i32 @ceph_renew_caps(%struct.inode* %167)
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %18, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %58

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %161
  %174 = load i32, i32* %18, align 4
  store i32 %174, i32* %7, align 4
  br label %238

175:                                              ; preds = %158
  %176 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %177 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %221

181:                                              ; preds = %175
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %184 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %185 = or i32 %183, %184
  %186 = and i32 %182, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %221

188:                                              ; preds = %181
  %189 = load %struct.inode*, %struct.inode** %15, align 8
  %190 = call i64 @i_size_read(%struct.inode* %189)
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %221

192:                                              ; preds = %188
  %193 = load %struct.inode*, %struct.inode** %15, align 8
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call %struct.page* @find_get_page(i32 %195, i32 0)
  store %struct.page* %196, %struct.page** %21, align 8
  %197 = load %struct.page*, %struct.page** %21, align 8
  %198 = icmp ne %struct.page* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %192
  %200 = load %struct.page*, %struct.page** %21, align 8
  %201 = call i64 @PageUptodate(%struct.page* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load %struct.page*, %struct.page** %21, align 8
  %205 = load %struct.page**, %struct.page*** %13, align 8
  store %struct.page* %204, %struct.page** %205, align 8
  br label %222

206:                                              ; preds = %199
  %207 = load %struct.page*, %struct.page** %21, align 8
  %208 = call i32 @put_page(%struct.page* %207)
  br label %209

209:                                              ; preds = %206, %192
  %210 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @ceph_put_cap_refs(%struct.ceph_inode_info* %210, i32 %211)
  store i32 0, i32* %19, align 4
  %213 = load %struct.inode*, %struct.inode** %15, align 8
  %214 = load i32, i32* @CEPH_STAT_CAP_INLINE_DATA, align 4
  %215 = call i32 @__ceph_do_getattr(%struct.inode* %213, i32* null, i32 %214, i32 1)
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %18, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = load i32, i32* %18, align 4
  store i32 %219, i32* %7, align 4
  br label %238

220:                                              ; preds = %209
  br label %58

221:                                              ; preds = %188, %181, %175
  br label %222

222:                                              ; preds = %221, %203
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %222
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %234 = call i32 @ceph_fscache_revalidate_cookie(%struct.ceph_inode_info* %233)
  br label %235

235:                                              ; preds = %232, %227, %222
  %236 = load i32, i32* %19, align 4
  %237 = load i32*, i32** %12, align 8
  store i32 %236, i32* %237, align 4
  store i32 0, i32* %7, align 4
  br label %238

238:                                              ; preds = %235, %218, %173, %155, %54, %36
  %239 = load i32, i32* %7, align 4
  ret i32 %239
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @ceph_pool_perm_check(%struct.inode*, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @check_max_size(%struct.inode*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @try_get_cap_refs(%struct.inode*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @wait_woken(i32*, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @ceph_put_cap_refs(%struct.ceph_inode_info*, i32) #1

declare dso_local i32 @ceph_renew_caps(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.page* @find_get_page(i32, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @__ceph_do_getattr(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @ceph_fscache_revalidate_cookie(%struct.ceph_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
