; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_store_data64.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_store_data64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.address_space = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32, i32, i32, i32*, %struct.afs_status_cb*, i8*, i8*, %struct.address_space*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@afs_RXFSStoreData64 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSSTOREDATA64 = common dso_local global i32 0, align 4
@AFS_SET_MTIME = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_fs_cursor*, %struct.address_space*, i8*, i8*, i32, i32, i32, i32, i32, %struct.afs_status_cb*)* @afs_fs_store_data64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_fs_store_data64(%struct.afs_fs_cursor* %0, %struct.address_space* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.afs_status_cb* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.afs_fs_cursor*, align 8
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.afs_status_cb*, align 8
  %22 = alloca %struct.afs_vnode*, align 8
  %23 = alloca %struct.afs_call*, align 8
  %24 = alloca %struct.afs_net*, align 8
  %25 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %12, align 8
  store %struct.address_space* %1, %struct.address_space** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.afs_status_cb* %9, %struct.afs_status_cb** %21, align 8
  %26 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %12, align 8
  %27 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %26, i32 0, i32 2
  %28 = load %struct.afs_vnode*, %struct.afs_vnode** %27, align 8
  store %struct.afs_vnode* %28, %struct.afs_vnode** %22, align 8
  %29 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %30 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %29)
  store %struct.afs_net* %30, %struct.afs_net** %24, align 8
  %31 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %12, align 8
  %32 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @key_serial(i32 %33)
  %35 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %36 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38, i32 %42)
  %44 = load %struct.afs_net*, %struct.afs_net** %24, align 8
  %45 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %44, i32* @afs_RXFSStoreData64, i32 64, i32 108)
  store %struct.afs_call* %45, %struct.afs_call** %23, align 8
  %46 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %47 = icmp ne %struct.afs_call* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %10
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %180

51:                                               ; preds = %10
  %52 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %12, align 8
  %53 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load %struct.address_space*, %struct.address_space** %13, align 8
  %58 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %59 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %58, i32 0, i32 7
  store %struct.address_space* %57, %struct.address_space** %59, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %68 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %71 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %73 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load %struct.afs_status_cb*, %struct.afs_status_cb** %21, align 8
  %75 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %76 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %75, i32 0, i32 4
  store %struct.afs_status_cb* %74, %struct.afs_status_cb** %76, align 8
  %77 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %78 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %25, align 8
  %80 = load i32, i32* @FSSTOREDATA64, align 4
  %81 = call i8* @htonl(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32*, i32** %25, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %25, align 8
  store i32 %82, i32* %83, align 4
  %85 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %86 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @htonl(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32*, i32** %25, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %25, align 8
  store i32 %90, i32* %91, align 4
  %93 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %94 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @htonl(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load i32*, i32** %25, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %25, align 8
  store i32 %98, i32* %99, align 4
  %101 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %102 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @htonl(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %25, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %25, align 8
  store i32 %106, i32* %107, align 4
  %109 = load i32, i32* @AFS_SET_MTIME, align 4
  %110 = call i8* @htonl(i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load i32*, i32** %25, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %25, align 8
  store i32 %111, i32* %112, align 4
  %114 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %115 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @htonl(i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load i32*, i32** %25, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %25, align 8
  store i32 %120, i32* %121, align 4
  %123 = load i32*, i32** %25, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %25, align 8
  store i32 0, i32* %123, align 4
  %125 = load i32*, i32** %25, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %25, align 8
  store i32 0, i32* %125, align 4
  %127 = load i32*, i32** %25, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %25, align 8
  store i32 0, i32* %127, align 4
  %129 = load i32*, i32** %25, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %25, align 8
  store i32 0, i32* %129, align 4
  %131 = load i32, i32* %19, align 4
  %132 = ashr i32 %131, 32
  %133 = call i8* @htonl(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load i32*, i32** %25, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %25, align 8
  store i32 %134, i32* %135, align 4
  %137 = load i32, i32* %19, align 4
  %138 = call i8* @htonl(i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32*, i32** %25, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %25, align 8
  store i32 %139, i32* %140, align 4
  %142 = load i32, i32* %18, align 4
  %143 = ashr i32 %142, 32
  %144 = call i8* @htonl(i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load i32*, i32** %25, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %25, align 8
  store i32 %145, i32* %146, align 4
  %148 = load i32, i32* %18, align 4
  %149 = call i8* @htonl(i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load i32*, i32** %25, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %25, align 8
  store i32 %150, i32* %151, align 4
  %153 = load i32, i32* %20, align 4
  %154 = ashr i32 %153, 32
  %155 = call i8* @htonl(i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load i32*, i32** %25, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %25, align 8
  store i32 %156, i32* %157, align 4
  %159 = load i32, i32* %20, align 4
  %160 = call i8* @htonl(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load i32*, i32** %25, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %25, align 8
  store i32 %161, i32* %162, align 4
  %164 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %165 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  %166 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %165, i32 0, i32 0
  %167 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %164, %struct.TYPE_6__* %166)
  %168 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %169 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %12, align 8
  %170 = call i32 @afs_set_fc_call(%struct.afs_call* %168, %struct.afs_fs_cursor* %169)
  %171 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %12, align 8
  %172 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %171, i32 0, i32 0
  %173 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %174 = load i32, i32* @GFP_NOFS, align 4
  %175 = call i32 @afs_make_call(i32* %172, %struct.afs_call* %173, i32 %174)
  %176 = load %struct.afs_call*, %struct.afs_call** %23, align 8
  %177 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %12, align 8
  %178 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %177, i32 0, i32 0
  %179 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %176, i32* %178)
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %51, %48
  %181 = load i32, i32* %11, align 4
  ret i32 %181
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_6__*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
