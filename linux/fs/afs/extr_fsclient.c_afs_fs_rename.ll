; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_6__*, i32, %struct.afs_vnode* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSRename = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSRENAME = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_rename(%struct.afs_fs_cursor* %0, i8* %1, %struct.afs_vnode* %2, i8* %3, %struct.afs_status_cb* %4, %struct.afs_status_cb* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_fs_cursor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.afs_vnode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.afs_status_cb*, align 8
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
  store %struct.afs_vnode* %2, %struct.afs_vnode** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.afs_status_cb* %4, %struct.afs_status_cb** %12, align 8
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
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %28, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %6
  %38 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.afs_status_cb*, %struct.afs_status_cb** %12, align 8
  %43 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %44 = call i32 @yfs_fs_rename(%struct.afs_fs_cursor* %38, i8* %39, %struct.afs_vnode* %40, i8* %41, %struct.afs_status_cb* %42, %struct.afs_status_cb* %43)
  store i32 %44, i32* %7, align 4
  br label %220

45:                                               ; preds = %6
  %46 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %18, align 8
  %50 = and i64 %49, 3
  %51 = sub i64 4, %50
  %52 = and i64 %51, 3
  store i64 %52, i64* %19, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @strlen(i8* %53)
  store i64 %54, i64* %20, align 8
  %55 = load i64, i64* %20, align 8
  %56 = and i64 %55, 3
  %57 = sub i64 4, %56
  %58 = and i64 %57, 3
  store i64 %58, i64* %21, align 8
  %59 = load i64, i64* %18, align 8
  %60 = add i64 20, %59
  %61 = load i64, i64* %19, align 8
  %62 = add i64 %60, %61
  %63 = add i64 %62, 12
  %64 = add i64 %63, 4
  %65 = load i64, i64* %20, align 8
  %66 = add i64 %64, %65
  %67 = load i64, i64* %21, align 8
  %68 = add i64 %66, %67
  store i64 %68, i64* %17, align 8
  %69 = load %struct.afs_net*, %struct.afs_net** %16, align 8
  %70 = load i64, i64* %17, align 8
  %71 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %69, i32* @afs_RXFSRename, i64 %70, i32 192)
  store %struct.afs_call* %71, %struct.afs_call** %15, align 8
  %72 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %73 = icmp ne %struct.afs_call* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %45
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %220

77:                                               ; preds = %45
  %78 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %79 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %82 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.afs_status_cb*, %struct.afs_status_cb** %12, align 8
  %84 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %85 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %84, i32 0, i32 2
  store %struct.afs_status_cb* %83, %struct.afs_status_cb** %85, align 8
  %86 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %87 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %88 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %87, i32 0, i32 1
  store %struct.afs_status_cb* %86, %struct.afs_status_cb** %88, align 8
  %89 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %90 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %22, align 8
  %92 = load i64, i64* @FSRENAME, align 8
  %93 = call i8* @htonl(i64 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load i32*, i32** %22, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %22, align 8
  store i32 %94, i32* %95, align 4
  %97 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %98 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @htonl(i64 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %22, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %22, align 8
  store i32 %102, i32* %103, align 4
  %105 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %106 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @htonl(i64 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %22, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %22, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %114 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @htonl(i64 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load i32*, i32** %22, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %22, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i64, i64* %18, align 8
  %122 = call i8* @htonl(i64 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load i32*, i32** %22, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %22, align 8
  store i32 %123, i32* %124, align 4
  %126 = load i32*, i32** %22, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load i64, i64* %18, align 8
  %129 = call i32 @memcpy(i32* %126, i8* %127, i64 %128)
  %130 = load i32*, i32** %22, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = load i64, i64* %18, align 8
  %133 = getelementptr i8, i8* %131, i64 %132
  %134 = bitcast i8* %133 to i32*
  store i32* %134, i32** %22, align 8
  %135 = load i64, i64* %19, align 8
  %136 = icmp ugt i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %77
  %138 = load i32*, i32** %22, align 8
  %139 = load i64, i64* %19, align 8
  %140 = call i32 @memset(i32* %138, i32 0, i64 %139)
  %141 = load i32*, i32** %22, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = load i64, i64* %19, align 8
  %144 = getelementptr i8, i8* %142, i64 %143
  %145 = bitcast i8* %144 to i32*
  store i32* %145, i32** %22, align 8
  br label %146

146:                                              ; preds = %137, %77
  %147 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %148 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i8* @htonl(i64 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** %22, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %22, align 8
  store i32 %152, i32* %153, align 4
  %155 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %156 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i8* @htonl(i64 %158)
  %160 = ptrtoint i8* %159 to i32
  %161 = load i32*, i32** %22, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %22, align 8
  store i32 %160, i32* %161, align 4
  %163 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %164 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i8* @htonl(i64 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load i32*, i32** %22, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %22, align 8
  store i32 %168, i32* %169, align 4
  %171 = load i64, i64* %20, align 8
  %172 = call i8* @htonl(i64 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load i32*, i32** %22, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %22, align 8
  store i32 %173, i32* %174, align 4
  %176 = load i32*, i32** %22, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = load i64, i64* %20, align 8
  %179 = call i32 @memcpy(i32* %176, i8* %177, i64 %178)
  %180 = load i32*, i32** %22, align 8
  %181 = bitcast i32* %180 to i8*
  %182 = load i64, i64* %20, align 8
  %183 = getelementptr i8, i8* %181, i64 %182
  %184 = bitcast i8* %183 to i32*
  store i32* %184, i32** %22, align 8
  %185 = load i64, i64* %21, align 8
  %186 = icmp ugt i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %146
  %188 = load i32*, i32** %22, align 8
  %189 = load i64, i64* %21, align 8
  %190 = call i32 @memset(i32* %188, i32 0, i64 %189)
  %191 = load i32*, i32** %22, align 8
  %192 = bitcast i32* %191 to i8*
  %193 = load i64, i64* %21, align 8
  %194 = getelementptr i8, i8* %192, i64 %193
  %195 = bitcast i8* %194 to i32*
  store i32* %195, i32** %22, align 8
  br label %196

196:                                              ; preds = %187, %146
  %197 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %198 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %199 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = call i32 @afs_use_fs_server(%struct.afs_call* %197, %struct.TYPE_6__* %200)
  %202 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %203 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %204 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %203, i32 0, i32 0
  %205 = load i8*, i8** %9, align 8
  %206 = load i8*, i8** %11, align 8
  %207 = call i32 @trace_afs_make_fs_call2(%struct.afs_call* %202, %struct.TYPE_5__* %204, i8* %205, i8* %206)
  %208 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %209 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %210 = call i32 @afs_set_fc_call(%struct.afs_call* %208, %struct.afs_fs_cursor* %209)
  %211 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %212 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %211, i32 0, i32 0
  %213 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %214 = load i32, i32* @GFP_NOFS, align 4
  %215 = call i32 @afs_make_call(i32* %212, %struct.afs_call* %213, i32 %214)
  %216 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %217 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %218 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %217, i32 0, i32 0
  %219 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %216, i32* %218)
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %196, %74, %37
  %221 = load i32, i32* %7, align 4
  ret i32 %221
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_rename(%struct.afs_fs_cursor*, i8*, %struct.afs_vnode*, i8*, %struct.afs_status_cb*, %struct.afs_status_cb*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i64, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_6__*) #1

declare dso_local i32 @trace_afs_make_fs_call2(%struct.afs_call*, %struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
