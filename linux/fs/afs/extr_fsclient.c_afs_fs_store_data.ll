; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_store_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_store_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_10__*, i32, %struct.afs_vnode* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.address_space = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32, i32, i32, i32*, %struct.afs_status_cb*, i64, i64, %struct.address_space*, i32 }
%struct.afs_net = type { i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"size %llx, at %llx, i_size %llx\00", align 1
@afs_RXFSStoreData = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSSTOREDATA = common dso_local global i32 0, align 4
@AFS_SET_MTIME = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_store_data(%struct.afs_fs_cursor* %0, %struct.address_space* %1, i64 %2, i64 %3, i32 %4, i32 %5, %struct.afs_status_cb* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.afs_fs_cursor*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.afs_status_cb*, align 8
  %16 = alloca %struct.afs_vnode*, align 8
  %17 = alloca %struct.afs_call*, align 8
  %18 = alloca %struct.afs_net*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.afs_status_cb* %6, %struct.afs_status_cb** %15, align 8
  %23 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %24 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %23, i32 0, i32 3
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %24, align 8
  store %struct.afs_vnode* %25, %struct.afs_vnode** %16, align 8
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %27 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %26)
  store %struct.afs_net* %27, %struct.afs_net** %18, align 8
  %28 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %29 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %30 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %28, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %7
  %38 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %39 = load %struct.address_space*, %struct.address_space** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.afs_status_cb*, %struct.afs_status_cb** %15, align 8
  %45 = call i32 @yfs_fs_store_data(%struct.afs_fs_cursor* %38, %struct.address_space* %39, i64 %40, i64 %41, i32 %42, i32 %43, %struct.afs_status_cb* %44)
  store i32 %45, i32* %8, align 4
  br label %256

46:                                               ; preds = %7
  %47 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %48 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @key_serial(i32 %49)
  %51 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %52 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %56 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54, i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %19, align 4
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %46
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub nsw i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @PAGE_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %66, %46
  %76 = load i64, i64* %11, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @PAGE_SHIFT, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %20, align 4
  %82 = add i32 %81, %80
  store i32 %82, i32* %20, align 4
  %83 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %84 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %83, i32 0, i32 1
  %85 = call i32 @i_size_read(%struct.TYPE_9__* %84)
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %21, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %75
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %21, align 4
  br label %95

95:                                               ; preds = %91, %75
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = call i32 @_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %97, i64 %99, i64 %101)
  %103 = load i32, i32* %20, align 4
  %104 = ashr i32 %103, 32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %21, align 4
  %108 = ashr i32 %107, 32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %19, align 4
  %112 = ashr i32 %111, 32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %115, %116
  %118 = ashr i32 %117, 32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %114, %110, %106, %95
  %121 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %122 = load %struct.address_space*, %struct.address_space** %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load %struct.afs_status_cb*, %struct.afs_status_cb** %15, align 8
  %131 = call i32 @afs_fs_store_data64(%struct.afs_fs_cursor* %121, %struct.address_space* %122, i64 %123, i64 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, %struct.afs_status_cb* %130)
  store i32 %131, i32* %8, align 4
  br label %256

132:                                              ; preds = %114
  %133 = load %struct.afs_net*, %struct.afs_net** %18, align 8
  %134 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %133, i32* @afs_RXFSStoreData, i32 52, i32 108)
  store %struct.afs_call* %134, %struct.afs_call** %17, align 8
  %135 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %136 = icmp ne %struct.afs_call* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %8, align 4
  br label %256

140:                                              ; preds = %132
  %141 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %142 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %145 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 8
  %146 = load %struct.address_space*, %struct.address_space** %10, align 8
  %147 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %148 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %147, i32 0, i32 7
  store %struct.address_space* %146, %struct.address_space** %148, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %151 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %150, i32 0, i32 6
  store i64 %149, i64* %151, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %154 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %153, i32 0, i32 5
  store i64 %152, i64* %154, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %157 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %160 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %162 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %161, i32 0, i32 2
  store i32 1, i32* %162, align 8
  %163 = load %struct.afs_status_cb*, %struct.afs_status_cb** %15, align 8
  %164 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %165 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %164, i32 0, i32 4
  store %struct.afs_status_cb* %163, %struct.afs_status_cb** %165, align 8
  %166 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %167 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %22, align 8
  %169 = load i32, i32* @FSSTOREDATA, align 4
  %170 = call i8* @htonl(i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load i32*, i32** %22, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %22, align 8
  store i32 %171, i32* %172, align 4
  %174 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %175 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @htonl(i32 %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load i32*, i32** %22, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %22, align 8
  store i32 %179, i32* %180, align 4
  %182 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %183 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @htonl(i32 %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load i32*, i32** %22, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %22, align 8
  store i32 %187, i32* %188, align 4
  %190 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %191 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @htonl(i32 %193)
  %195 = ptrtoint i8* %194 to i32
  %196 = load i32*, i32** %22, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %22, align 8
  store i32 %195, i32* %196, align 4
  %198 = load i32, i32* @AFS_SET_MTIME, align 4
  %199 = call i8* @htonl(i32 %198)
  %200 = ptrtoint i8* %199 to i32
  %201 = load i32*, i32** %22, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %22, align 8
  store i32 %200, i32* %201, align 4
  %203 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %204 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @htonl(i32 %207)
  %209 = ptrtoint i8* %208 to i32
  %210 = load i32*, i32** %22, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %22, align 8
  store i32 %209, i32* %210, align 4
  %212 = load i32*, i32** %22, align 8
  %213 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %213, i32** %22, align 8
  store i32 0, i32* %212, align 4
  %214 = load i32*, i32** %22, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %22, align 8
  store i32 0, i32* %214, align 4
  %216 = load i32*, i32** %22, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %22, align 8
  store i32 0, i32* %216, align 4
  %218 = load i32*, i32** %22, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %22, align 8
  store i32 0, i32* %218, align 4
  %220 = load i32, i32* %20, align 4
  %221 = call i8* @htonl(i32 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load i32*, i32** %22, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %22, align 8
  store i32 %222, i32* %223, align 4
  %225 = load i32, i32* %19, align 4
  %226 = call i8* @htonl(i32 %225)
  %227 = ptrtoint i8* %226 to i32
  %228 = load i32*, i32** %22, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %22, align 8
  store i32 %227, i32* %228, align 4
  %230 = load i32, i32* %21, align 4
  %231 = call i8* @htonl(i32 %230)
  %232 = ptrtoint i8* %231 to i32
  %233 = load i32*, i32** %22, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %22, align 8
  store i32 %232, i32* %233, align 4
  %235 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %236 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %237 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %236, i32 0, i32 1
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = call i32 @afs_use_fs_server(%struct.afs_call* %235, %struct.TYPE_10__* %238)
  %240 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %241 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %242 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %241, i32 0, i32 0
  %243 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %240, %struct.TYPE_8__* %242)
  %244 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %245 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %246 = call i32 @afs_set_fc_call(%struct.afs_call* %244, %struct.afs_fs_cursor* %245)
  %247 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %248 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %247, i32 0, i32 0
  %249 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %250 = load i32, i32* @GFP_NOFS, align 4
  %251 = call i32 @afs_make_call(i32* %248, %struct.afs_call* %249, i32 %250)
  %252 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %253 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %254 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %253, i32 0, i32 0
  %255 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %252, i32* %254)
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %140, %137, %120, %37
  %257 = load i32, i32* %8, align 4
  ret i32 %257
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_store_data(%struct.afs_fs_cursor*, %struct.address_space*, i64, i64, i32, i32, %struct.afs_status_cb*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i32 @i_size_read(%struct.TYPE_9__*) #1

declare dso_local i32 @_debug(i8*, i64, i64, i64) #1

declare dso_local i32 @afs_fs_store_data64(%struct.afs_fs_cursor*, %struct.address_space*, i64, i64, i32, i32, i32, i32, i32, %struct.afs_status_cb*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_10__*) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_8__*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
