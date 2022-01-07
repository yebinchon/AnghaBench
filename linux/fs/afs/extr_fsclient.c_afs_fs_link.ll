; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_link.c"
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
@afs_RXFSLink = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSLINK = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_link(%struct.afs_fs_cursor* %0, %struct.afs_vnode* %1, i8* %2, %struct.afs_status_cb* %3, %struct.afs_status_cb* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_fs_cursor*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.afs_status_cb*, align 8
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
  store %struct.afs_status_cb* %3, %struct.afs_status_cb** %10, align 8
  store %struct.afs_status_cb* %4, %struct.afs_status_cb** %11, align 8
  %19 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %20 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %19, i32 0, i32 3
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %20, align 8
  store %struct.afs_vnode* %21, %struct.afs_vnode** %12, align 8
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
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
  %37 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %38 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %39 = call i32 @yfs_fs_link(%struct.afs_fs_cursor* %34, %struct.afs_vnode* %35, i8* %36, %struct.afs_status_cb* %37, %struct.afs_status_cb* %38)
  store i32 %39, i32* %6, align 4
  br label %177

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
  %52 = add i64 %51, 12
  store i64 %52, i64* %16, align 8
  %53 = load %struct.afs_net*, %struct.afs_net** %14, align 8
  %54 = load i64, i64* %16, align 8
  %55 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %53, i32* @afs_RXFSLink, i64 %54, i32 192)
  store %struct.afs_call* %55, %struct.afs_call** %13, align 8
  %56 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %57 = icmp ne %struct.afs_call* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %40
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %177

61:                                               ; preds = %40
  %62 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %63 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %66 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %68 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %69 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %68, i32 0, i32 2
  store %struct.afs_status_cb* %67, %struct.afs_status_cb** %69, align 8
  %70 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %71 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %72 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %71, i32 0, i32 1
  store %struct.afs_status_cb* %70, %struct.afs_status_cb** %72, align 8
  %73 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %74 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %18, align 8
  %76 = load i64, i64* @FSLINK, align 8
  %77 = call i8* @htonl(i64 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load i32*, i32** %18, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %18, align 8
  store i32 %78, i32* %79, align 4
  %81 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %82 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @htonl(i64 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32*, i32** %18, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %18, align 8
  store i32 %86, i32* %87, align 4
  %89 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %90 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @htonl(i64 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load i32*, i32** %18, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %18, align 8
  store i32 %94, i32* %95, align 4
  %97 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %98 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @htonl(i64 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %18, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %18, align 8
  store i32 %102, i32* %103, align 4
  %105 = load i64, i64* %15, align 8
  %106 = call i8* @htonl(i64 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load i32*, i32** %18, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %18, align 8
  store i32 %107, i32* %108, align 4
  %110 = load i32*, i32** %18, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @memcpy(i32* %110, i8* %111, i64 %112)
  %114 = load i32*, i32** %18, align 8
  %115 = bitcast i32* %114 to i8*
  %116 = load i64, i64* %15, align 8
  %117 = getelementptr i8, i8* %115, i64 %116
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %18, align 8
  %119 = load i64, i64* %17, align 8
  %120 = icmp ugt i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %61
  %122 = load i32*, i32** %18, align 8
  %123 = load i64, i64* %17, align 8
  %124 = call i32 @memset(i32* %122, i32 0, i64 %123)
  %125 = load i32*, i32** %18, align 8
  %126 = bitcast i32* %125 to i8*
  %127 = load i64, i64* %17, align 8
  %128 = getelementptr i8, i8* %126, i64 %127
  %129 = bitcast i8* %128 to i32*
  store i32* %129, i32** %18, align 8
  br label %130

130:                                              ; preds = %121, %61
  %131 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %132 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i8* @htonl(i64 %134)
  %136 = ptrtoint i8* %135 to i32
  %137 = load i32*, i32** %18, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %18, align 8
  store i32 %136, i32* %137, align 4
  %139 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %140 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @htonl(i64 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load i32*, i32** %18, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %18, align 8
  store i32 %144, i32* %145, align 4
  %147 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %148 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i8* @htonl(i64 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** %18, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %18, align 8
  store i32 %152, i32* %153, align 4
  %155 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %156 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %157 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = call i32 @afs_use_fs_server(%struct.afs_call* %155, %struct.TYPE_6__* %158)
  %160 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %161 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %162 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %161, i32 0, i32 0
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @trace_afs_make_fs_call1(%struct.afs_call* %160, %struct.TYPE_5__* %162, i8* %163)
  %165 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %166 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %167 = call i32 @afs_set_fc_call(%struct.afs_call* %165, %struct.afs_fs_cursor* %166)
  %168 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %169 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %168, i32 0, i32 0
  %170 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %171 = load i32, i32* @GFP_NOFS, align 4
  %172 = call i32 @afs_make_call(i32* %169, %struct.afs_call* %170, i32 %171)
  %173 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %174 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %175 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %174, i32 0, i32 0
  %176 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %173, i32* %175)
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %130, %58, %33
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_link(%struct.afs_fs_cursor*, %struct.afs_vnode*, i8*, %struct.afs_status_cb*, %struct.afs_status_cb*) #1

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
