; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_10__*, i32, %struct.afs_vnode* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.afs_fid = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_fid*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSSymlink = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSSYMLINK = common dso_local global i64 0, align 8
@AFS_SET_MODE = common dso_local global i64 0, align 8
@AFS_SET_MTIME = common dso_local global i64 0, align 8
@S_IRWXUGO = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_symlink(%struct.afs_fs_cursor* %0, i8* %1, i8* %2, %struct.afs_status_cb* %3, %struct.afs_fid* %4, %struct.afs_status_cb* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_fs_cursor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.afs_status_cb*, align 8
  %12 = alloca %struct.afs_fid*, align 8
  %13 = alloca %struct.afs_status_cb*, align 8
  %14 = alloca %struct.afs_vnode*, align 8
  %15 = alloca %struct.afs_call*, align 8
  %16 = alloca %struct.afs_net*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.afs_status_cb* %3, %struct.afs_status_cb** %11, align 8
  store %struct.afs_fid* %4, %struct.afs_fid** %12, align 8
  store %struct.afs_status_cb* %5, %struct.afs_status_cb** %13, align 8
  %23 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %24 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %23, i32 0, i32 3
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %24, align 8
  store %struct.afs_vnode* %25, %struct.afs_vnode** %14, align 8
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %27 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %26)
  store %struct.afs_net* %27, %struct.afs_net** %16, align 8
  %28 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %29 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %30 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %28, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %6
  %38 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %42 = load %struct.afs_fid*, %struct.afs_fid** %12, align 8
  %43 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %44 = call i32 @yfs_fs_symlink(%struct.afs_fs_cursor* %38, i8* %39, i8* %40, %struct.afs_status_cb* %41, %struct.afs_fid* %42, %struct.afs_status_cb* %43)
  store i32 %44, i32* %7, align 4
  br label %224

45:                                               ; preds = %6
  %46 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = and i64 %49, 3
  %51 = sub i64 4, %50
  %52 = and i64 %51, 3
  store i64 %52, i64* %19, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @strlen(i8* %53)
  store i64 %54, i64* %20, align 8
  %55 = load i64, i64* %20, align 8
  %56 = and i64 %55, 3
  %57 = sub i64 4, %56
  %58 = and i64 %57, 3
  store i64 %58, i64* %21, align 8
  %59 = load i64, i64* %17, align 8
  %60 = add i64 24, %59
  %61 = load i64, i64* %19, align 8
  %62 = add i64 %60, %61
  %63 = load i64, i64* %20, align 8
  %64 = add i64 %62, %63
  %65 = load i64, i64* %21, align 8
  %66 = add i64 %64, %65
  %67 = add i64 %66, 24
  store i64 %67, i64* %18, align 8
  %68 = load %struct.afs_net*, %struct.afs_net** %16, align 8
  %69 = load i64, i64* %18, align 8
  %70 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %68, i32* @afs_RXFSSymlink, i64 %69, i32 204)
  store %struct.afs_call* %70, %struct.afs_call** %15, align 8
  %71 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %72 = icmp ne %struct.afs_call* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %45
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %224

76:                                               ; preds = %45
  %77 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %78 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %81 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %83 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %84 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %83, i32 0, i32 3
  store %struct.afs_status_cb* %82, %struct.afs_status_cb** %84, align 8
  %85 = load %struct.afs_fid*, %struct.afs_fid** %12, align 8
  %86 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %87 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %86, i32 0, i32 2
  store %struct.afs_fid* %85, %struct.afs_fid** %87, align 8
  %88 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %89 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %90 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %89, i32 0, i32 1
  store %struct.afs_status_cb* %88, %struct.afs_status_cb** %90, align 8
  %91 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %92 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %22, align 8
  %94 = load i64, i64* @FSSYMLINK, align 8
  %95 = call i8* @htonl(i64 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32*, i32** %22, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %22, align 8
  store i32 %96, i32* %97, align 4
  %99 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %100 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @htonl(i64 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32*, i32** %22, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %22, align 8
  store i32 %104, i32* %105, align 4
  %107 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %108 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @htonl(i64 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load i32*, i32** %22, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %22, align 8
  store i32 %112, i32* %113, align 4
  %115 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %116 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i8* @htonl(i64 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load i32*, i32** %22, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %22, align 8
  store i32 %120, i32* %121, align 4
  %123 = load i64, i64* %17, align 8
  %124 = call i8* @htonl(i64 %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load i32*, i32** %22, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %22, align 8
  store i32 %125, i32* %126, align 4
  %128 = load i32*, i32** %22, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i64, i64* %17, align 8
  %131 = call i32 @memcpy(i32* %128, i8* %129, i64 %130)
  %132 = load i32*, i32** %22, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = load i64, i64* %17, align 8
  %135 = getelementptr i8, i8* %133, i64 %134
  %136 = bitcast i8* %135 to i32*
  store i32* %136, i32** %22, align 8
  %137 = load i64, i64* %19, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %76
  %140 = load i32*, i32** %22, align 8
  %141 = load i64, i64* %19, align 8
  %142 = call i32 @memset(i32* %140, i32 0, i64 %141)
  %143 = load i32*, i32** %22, align 8
  %144 = bitcast i32* %143 to i8*
  %145 = load i64, i64* %19, align 8
  %146 = getelementptr i8, i8* %144, i64 %145
  %147 = bitcast i8* %146 to i32*
  store i32* %147, i32** %22, align 8
  br label %148

148:                                              ; preds = %139, %76
  %149 = load i64, i64* %20, align 8
  %150 = call i8* @htonl(i64 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load i32*, i32** %22, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %22, align 8
  store i32 %151, i32* %152, align 4
  %154 = load i32*, i32** %22, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = load i64, i64* %20, align 8
  %157 = call i32 @memcpy(i32* %154, i8* %155, i64 %156)
  %158 = load i32*, i32** %22, align 8
  %159 = bitcast i32* %158 to i8*
  %160 = load i64, i64* %20, align 8
  %161 = getelementptr i8, i8* %159, i64 %160
  %162 = bitcast i8* %161 to i32*
  store i32* %162, i32** %22, align 8
  %163 = load i64, i64* %21, align 8
  %164 = icmp ugt i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %148
  %166 = load i32*, i32** %22, align 8
  %167 = load i64, i64* %21, align 8
  %168 = call i32 @memset(i32* %166, i32 0, i64 %167)
  %169 = load i32*, i32** %22, align 8
  %170 = bitcast i32* %169 to i8*
  %171 = load i64, i64* %21, align 8
  %172 = getelementptr i8, i8* %170, i64 %171
  %173 = bitcast i8* %172 to i32*
  store i32* %173, i32** %22, align 8
  br label %174

174:                                              ; preds = %165, %148
  %175 = load i64, i64* @AFS_SET_MODE, align 8
  %176 = load i64, i64* @AFS_SET_MTIME, align 8
  %177 = or i64 %175, %176
  %178 = call i8* @htonl(i64 %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load i32*, i32** %22, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %22, align 8
  store i32 %179, i32* %180, align 4
  %182 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %183 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i8* @htonl(i64 %186)
  %188 = ptrtoint i8* %187 to i32
  %189 = load i32*, i32** %22, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %22, align 8
  store i32 %188, i32* %189, align 4
  %191 = load i32*, i32** %22, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %22, align 8
  store i32 0, i32* %191, align 4
  %193 = load i32*, i32** %22, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %22, align 8
  store i32 0, i32* %193, align 4
  %195 = load i64, i64* @S_IRWXUGO, align 8
  %196 = call i8* @htonl(i64 %195)
  %197 = ptrtoint i8* %196 to i32
  %198 = load i32*, i32** %22, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %22, align 8
  store i32 %197, i32* %198, align 4
  %200 = load i32*, i32** %22, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %22, align 8
  store i32 0, i32* %200, align 4
  %202 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %203 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %204 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %203, i32 0, i32 1
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = call i32 @afs_use_fs_server(%struct.afs_call* %202, %struct.TYPE_10__* %205)
  %207 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %208 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %209 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %208, i32 0, i32 0
  %210 = load i8*, i8** %9, align 8
  %211 = call i32 @trace_afs_make_fs_call1(%struct.afs_call* %207, %struct.TYPE_9__* %209, i8* %210)
  %212 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %213 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %214 = call i32 @afs_set_fc_call(%struct.afs_call* %212, %struct.afs_fs_cursor* %213)
  %215 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %216 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %215, i32 0, i32 0
  %217 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %218 = load i32, i32* @GFP_NOFS, align 4
  %219 = call i32 @afs_make_call(i32* %216, %struct.afs_call* %217, i32 %218)
  %220 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %221 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %222 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %221, i32 0, i32 0
  %223 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %220, i32* %222)
  store i32 %223, i32* %7, align 4
  br label %224

224:                                              ; preds = %174, %73, %37
  %225 = load i32, i32* %7, align 4
  ret i32 %225
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_symlink(%struct.afs_fs_cursor*, i8*, i8*, %struct.afs_status_cb*, %struct.afs_fid*, %struct.afs_status_cb*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i64, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_10__*) #1

declare dso_local i32 @trace_afs_make_fs_call1(%struct.afs_call*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
