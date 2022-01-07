; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_create.c"
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
@afs_RXFSMakeDir = common dso_local global i32 0, align 4
@afs_RXFSCreateFile = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSMAKEDIR = common dso_local global i64 0, align 8
@FSCREATEFILE = common dso_local global i64 0, align 8
@AFS_SET_MODE = common dso_local global i64 0, align 8
@AFS_SET_MTIME = common dso_local global i64 0, align 8
@S_IALLUGO = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_create(%struct.afs_fs_cursor* %0, i8* %1, i64 %2, %struct.afs_status_cb* %3, %struct.afs_fid* %4, %struct.afs_status_cb* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_fs_cursor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.afs_status_cb*, align 8
  %12 = alloca %struct.afs_fid*, align 8
  %13 = alloca %struct.afs_status_cb*, align 8
  %14 = alloca %struct.afs_vnode*, align 8
  %15 = alloca %struct.afs_call*, align 8
  %16 = alloca %struct.afs_net*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.afs_status_cb* %3, %struct.afs_status_cb** %11, align 8
  store %struct.afs_fid* %4, %struct.afs_fid** %12, align 8
  store %struct.afs_status_cb* %5, %struct.afs_status_cb** %13, align 8
  %21 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %22 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %21, i32 0, i32 3
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  store %struct.afs_vnode* %23, %struct.afs_vnode** %14, align 8
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %25 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %24)
  store %struct.afs_net* %25, %struct.afs_net** %16, align 8
  %26 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %27 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %28 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %26, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %6
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @S_ISDIR(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %44 = load %struct.afs_fid*, %struct.afs_fid** %12, align 8
  %45 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %46 = call i32 @yfs_fs_make_dir(%struct.afs_fs_cursor* %40, i8* %41, i64 %42, %struct.afs_status_cb* %43, %struct.afs_fid* %44, %struct.afs_status_cb* %45)
  store i32 %46, i32* %7, align 4
  br label %213

47:                                               ; preds = %35
  %48 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %52 = load %struct.afs_fid*, %struct.afs_fid** %12, align 8
  %53 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %54 = call i32 @yfs_fs_create_file(%struct.afs_fs_cursor* %48, i8* %49, i64 %50, %struct.afs_status_cb* %51, %struct.afs_fid* %52, %struct.afs_status_cb* %53)
  store i32 %54, i32* %7, align 4
  br label %213

55:                                               ; preds = %6
  %56 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @strlen(i8* %57)
  store i64 %58, i64* %17, align 8
  %59 = load i64, i64* %17, align 8
  %60 = and i64 %59, 3
  %61 = sub i64 4, %60
  %62 = and i64 %61, 3
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %17, align 8
  %64 = add i64 20, %63
  %65 = load i64, i64* %19, align 8
  %66 = add i64 %64, %65
  %67 = add i64 %66, 24
  store i64 %67, i64* %18, align 8
  %68 = load %struct.afs_net*, %struct.afs_net** %16, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @S_ISDIR(i64 %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32* @afs_RXFSMakeDir, i32* @afs_RXFSCreateFile
  %74 = load i64, i64* %18, align 8
  %75 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %68, i32* %73, i64 %74, i32 216)
  store %struct.afs_call* %75, %struct.afs_call** %15, align 8
  %76 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %77 = icmp ne %struct.afs_call* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %55
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %213

81:                                               ; preds = %55
  %82 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %83 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %86 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %88 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %89 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %88, i32 0, i32 3
  store %struct.afs_status_cb* %87, %struct.afs_status_cb** %89, align 8
  %90 = load %struct.afs_fid*, %struct.afs_fid** %12, align 8
  %91 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %92 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %91, i32 0, i32 2
  store %struct.afs_fid* %90, %struct.afs_fid** %92, align 8
  %93 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %94 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %95 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %94, i32 0, i32 1
  store %struct.afs_status_cb* %93, %struct.afs_status_cb** %95, align 8
  %96 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %97 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %20, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @S_ISDIR(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %81
  %103 = load i64, i64* @FSMAKEDIR, align 8
  br label %106

104:                                              ; preds = %81
  %105 = load i64, i64* @FSCREATEFILE, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i64 [ %103, %102 ], [ %105, %104 ]
  %108 = call i8* @htonl(i64 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %20, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %20, align 8
  store i32 %109, i32* %110, align 4
  %112 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %113 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @htonl(i64 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %20, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %20, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %121 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i8* @htonl(i64 %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load i32*, i32** %20, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %20, align 8
  store i32 %125, i32* %126, align 4
  %128 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %129 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @htonl(i64 %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load i32*, i32** %20, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %20, align 8
  store i32 %133, i32* %134, align 4
  %136 = load i64, i64* %17, align 8
  %137 = call i8* @htonl(i64 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load i32*, i32** %20, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %20, align 8
  store i32 %138, i32* %139, align 4
  %141 = load i32*, i32** %20, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = load i64, i64* %17, align 8
  %144 = call i32 @memcpy(i32* %141, i8* %142, i64 %143)
  %145 = load i32*, i32** %20, align 8
  %146 = bitcast i32* %145 to i8*
  %147 = load i64, i64* %17, align 8
  %148 = getelementptr i8, i8* %146, i64 %147
  %149 = bitcast i8* %148 to i32*
  store i32* %149, i32** %20, align 8
  %150 = load i64, i64* %19, align 8
  %151 = icmp ugt i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %106
  %153 = load i32*, i32** %20, align 8
  %154 = load i64, i64* %19, align 8
  %155 = call i32 @memset(i32* %153, i32 0, i64 %154)
  %156 = load i32*, i32** %20, align 8
  %157 = bitcast i32* %156 to i8*
  %158 = load i64, i64* %19, align 8
  %159 = getelementptr i8, i8* %157, i64 %158
  %160 = bitcast i8* %159 to i32*
  store i32* %160, i32** %20, align 8
  br label %161

161:                                              ; preds = %152, %106
  %162 = load i64, i64* @AFS_SET_MODE, align 8
  %163 = load i64, i64* @AFS_SET_MTIME, align 8
  %164 = or i64 %162, %163
  %165 = call i8* @htonl(i64 %164)
  %166 = ptrtoint i8* %165 to i32
  %167 = load i32*, i32** %20, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %20, align 8
  store i32 %166, i32* %167, align 4
  %169 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %170 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i8* @htonl(i64 %173)
  %175 = ptrtoint i8* %174 to i32
  %176 = load i32*, i32** %20, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %20, align 8
  store i32 %175, i32* %176, align 4
  %178 = load i32*, i32** %20, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %20, align 8
  store i32 0, i32* %178, align 4
  %180 = load i32*, i32** %20, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %20, align 8
  store i32 0, i32* %180, align 4
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* @S_IALLUGO, align 8
  %184 = and i64 %182, %183
  %185 = call i8* @htonl(i64 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load i32*, i32** %20, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %20, align 8
  store i32 %186, i32* %187, align 4
  %189 = load i32*, i32** %20, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %20, align 8
  store i32 0, i32* %189, align 4
  %191 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %192 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %193 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %192, i32 0, i32 1
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = call i32 @afs_use_fs_server(%struct.afs_call* %191, %struct.TYPE_10__* %194)
  %196 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %197 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %198 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %197, i32 0, i32 0
  %199 = load i8*, i8** %9, align 8
  %200 = call i32 @trace_afs_make_fs_call1(%struct.afs_call* %196, %struct.TYPE_9__* %198, i8* %199)
  %201 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %202 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %203 = call i32 @afs_set_fc_call(%struct.afs_call* %201, %struct.afs_fs_cursor* %202)
  %204 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %205 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %204, i32 0, i32 0
  %206 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %207 = load i32, i32* @GFP_NOFS, align 4
  %208 = call i32 @afs_make_call(i32* %205, %struct.afs_call* %206, i32 %207)
  %209 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %210 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %211 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %210, i32 0, i32 0
  %212 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %209, i32* %211)
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %161, %78, %47, %39
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i32 @yfs_fs_make_dir(%struct.afs_fs_cursor*, i8*, i64, %struct.afs_status_cb*, %struct.afs_fid*, %struct.afs_status_cb*) #1

declare dso_local i32 @yfs_fs_create_file(%struct.afs_fs_cursor*, i8*, i64, %struct.afs_status_cb*, %struct.afs_fid*, %struct.afs_status_cb*) #1

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
