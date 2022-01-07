; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_6__*, i32, %struct.afs_vnode* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSRemoveDir = common dso_local global i32 0, align 4
@afs_RXFSRemoveFile = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSREMOVEDIR = common dso_local global i64 0, align 8
@FSREMOVEFILE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_remove(%struct.afs_fs_cursor* %0, %struct.afs_vnode* %1, i8* %2, i32 %3, %struct.afs_status_cb* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_fs_cursor*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.afs_status_cb*, align 8
  %12 = alloca %struct.afs_vnode*, align 8
  %13 = alloca %struct.afs_call*, align 8
  %14 = alloca %struct.afs_net*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %7, align 8
  store %struct.afs_vnode* %1, %struct.afs_vnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.afs_status_cb* %4, %struct.afs_status_cb** %11, align 8
  %19 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %20 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %19, i32 0, i32 3
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %20, align 8
  store %struct.afs_vnode* %21, %struct.afs_vnode** %12, align 8
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %23 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %22)
  store %struct.afs_net* %23, %struct.afs_net** %14, align 8
  %24 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %25 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %26 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %24, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %35 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %39 = call i32 @yfs_fs_remove(%struct.afs_fs_cursor* %34, %struct.afs_vnode* %35, i8* %36, i32 %37, %struct.afs_status_cb* %38)
  store i32 %39, i32* %6, align 4
  br label %160

40:                                               ; preds = %5
  %41 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @strlen(i8* %42)
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %15, align 8
  %45 = and i64 %44, 3
  %46 = sub i64 4, %45
  %47 = and i64 %46, 3
  store i64 %47, i64* %17, align 8
  %48 = load i64, i64* %15, align 8
  %49 = add i64 20, %48
  %50 = load i64, i64* %17, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %16, align 8
  %52 = load %struct.afs_net*, %struct.afs_net** %14, align 8
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32* @afs_RXFSRemoveDir, i32* @afs_RXFSRemoveFile
  %57 = load i64, i64* %16, align 8
  %58 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %52, i32* %56, i64 %57, i32 108)
  store %struct.afs_call* %58, %struct.afs_call** %13, align 8
  %59 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %60 = icmp ne %struct.afs_call* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %40
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %160

64:                                               ; preds = %40
  %65 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %66 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %69 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %71 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %72 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %71, i32 0, i32 1
  store %struct.afs_status_cb* %70, %struct.afs_status_cb** %72, align 8
  %73 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %74 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %18, align 8
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i64, i64* @FSREMOVEDIR, align 8
  br label %82

80:                                               ; preds = %64
  %81 = load i64, i64* @FSREMOVEFILE, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i64 [ %79, %78 ], [ %81, %80 ]
  %84 = call i8* @htonl(i64 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32*, i32** %18, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %18, align 8
  store i32 %85, i32* %86, align 4
  %88 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %89 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @htonl(i64 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load i32*, i32** %18, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %18, align 8
  store i32 %93, i32* %94, align 4
  %96 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %97 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @htonl(i64 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load i32*, i32** %18, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %18, align 8
  store i32 %101, i32* %102, align 4
  %104 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %105 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @htonl(i64 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %18, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %18, align 8
  store i32 %109, i32* %110, align 4
  %112 = load i64, i64* %15, align 8
  %113 = call i8* @htonl(i64 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load i32*, i32** %18, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %18, align 8
  store i32 %114, i32* %115, align 4
  %117 = load i32*, i32** %18, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @memcpy(i32* %117, i8* %118, i64 %119)
  %121 = load i32*, i32** %18, align 8
  %122 = bitcast i32* %121 to i8*
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr i8, i8* %122, i64 %123
  %125 = bitcast i8* %124 to i32*
  store i32* %125, i32** %18, align 8
  %126 = load i64, i64* %17, align 8
  %127 = icmp ugt i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %82
  %129 = load i32*, i32** %18, align 8
  %130 = load i64, i64* %17, align 8
  %131 = call i32 @memset(i32* %129, i32 0, i64 %130)
  %132 = load i32*, i32** %18, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = load i64, i64* %17, align 8
  %135 = getelementptr i8, i8* %133, i64 %134
  %136 = bitcast i8* %135 to i32*
  store i32* %136, i32** %18, align 8
  br label %137

137:                                              ; preds = %128, %82
  %138 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %139 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %140 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = call i32 @afs_use_fs_server(%struct.afs_call* %138, %struct.TYPE_6__* %141)
  %143 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %144 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %145 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %144, i32 0, i32 0
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @trace_afs_make_fs_call1(%struct.afs_call* %143, %struct.TYPE_5__* %145, i8* %146)
  %148 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %149 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %150 = call i32 @afs_set_fc_call(%struct.afs_call* %148, %struct.afs_fs_cursor* %149)
  %151 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %152 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %151, i32 0, i32 0
  %153 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %154 = load i32, i32* @GFP_NOFS, align 4
  %155 = call i32 @afs_make_call(i32* %152, %struct.afs_call* %153, i32 %154)
  %156 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %157 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %158 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %157, i32 0, i32 0
  %159 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %156, i32* %158)
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %137, %61, %33
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_remove(%struct.afs_fs_cursor*, %struct.afs_vnode*, i8*, i32, %struct.afs_status_cb*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i64, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_6__*) #1

declare dso_local i32 @trace_afs_make_fs_call1(%struct.afs_call*, %struct.TYPE_5__*, i8*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
