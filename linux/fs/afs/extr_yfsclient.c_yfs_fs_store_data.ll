; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_store_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_store_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.address_space = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32, i32, i32, i32*, %struct.afs_status_cb*, i64, i64, %struct.address_space*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"size %llx, at %llx, i_size %llx\00", align 1
@yfs_RXYFSStoreData64 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSSTOREDATA64 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_store_data(%struct.afs_fs_cursor* %0, %struct.address_space* %1, i64 %2, i64 %3, i32 %4, i32 %5, %struct.afs_status_cb* %6) #0 {
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
  %28 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %29 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @key_serial(i32 %30)
  %32 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %33 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %37 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35, i32 %39)
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %19, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %7
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub nsw i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %19, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %19, align 4
  br label %56

56:                                               ; preds = %47, %7
  %57 = load i64, i64* %11, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %20, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %20, align 4
  %64 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %65 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %64, i32 0, i32 1
  %66 = call i32 @i_size_read(%struct.TYPE_5__* %65)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %21, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %21, align 4
  br label %76

76:                                               ; preds = %72, %56
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %21, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 @_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %78, i64 %80, i64 %82)
  %84 = load %struct.afs_net*, %struct.afs_net** %18, align 8
  %85 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %84, i32* @yfs_RXYFSStoreData64, i32 28, i32 8)
  store %struct.afs_call* %85, %struct.afs_call** %17, align 8
  %86 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %87 = icmp ne %struct.afs_call* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %76
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %167

91:                                               ; preds = %76
  %92 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %93 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %96 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 8
  %97 = load %struct.address_space*, %struct.address_space** %10, align 8
  %98 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %99 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %98, i32 0, i32 7
  store %struct.address_space* %97, %struct.address_space** %99, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %102 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %101, i32 0, i32 6
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %105 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %104, i32 0, i32 5
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %108 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %111 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %113 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  %114 = load %struct.afs_status_cb*, %struct.afs_status_cb** %15, align 8
  %115 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %116 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %115, i32 0, i32 4
  store %struct.afs_status_cb* %114, %struct.afs_status_cb** %116, align 8
  %117 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %118 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %22, align 8
  %120 = load i32*, i32** %22, align 8
  %121 = load i32, i32* @YFSSTOREDATA64, align 4
  %122 = call i32* @xdr_encode_u32(i32* %120, i32 %121)
  store i32* %122, i32** %22, align 8
  %123 = load i32*, i32** %22, align 8
  %124 = call i32* @xdr_encode_u32(i32* %123, i32 0)
  store i32* %124, i32** %22, align 8
  %125 = load i32*, i32** %22, align 8
  %126 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %127 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %126, i32 0, i32 0
  %128 = call i32* @xdr_encode_YFSFid(i32* %125, %struct.TYPE_4__* %127)
  store i32* %128, i32** %22, align 8
  %129 = load i32*, i32** %22, align 8
  %130 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %131 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = call i32* @xdr_encode_YFSStoreStatus_mtime(i32* %129, i32* %132)
  store i32* %133, i32** %22, align 8
  %134 = load i32*, i32** %22, align 8
  %135 = load i32, i32* %20, align 4
  %136 = call i32* @xdr_encode_u64(i32* %134, i32 %135)
  store i32* %136, i32** %22, align 8
  %137 = load i32*, i32** %22, align 8
  %138 = load i32, i32* %19, align 4
  %139 = call i32* @xdr_encode_u64(i32* %137, i32 %138)
  store i32* %139, i32** %22, align 8
  %140 = load i32*, i32** %22, align 8
  %141 = load i32, i32* %21, align 4
  %142 = call i32* @xdr_encode_u64(i32* %140, i32 %141)
  store i32* %142, i32** %22, align 8
  %143 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %144 = load i32*, i32** %22, align 8
  %145 = call i32 @yfs_check_req(%struct.afs_call* %143, i32* %144)
  %146 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %147 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %148 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @afs_use_fs_server(%struct.afs_call* %146, i32 %149)
  %151 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %152 = load %struct.afs_vnode*, %struct.afs_vnode** %16, align 8
  %153 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %152, i32 0, i32 0
  %154 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %151, %struct.TYPE_4__* %153)
  %155 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %156 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %157 = call i32 @afs_set_fc_call(%struct.afs_call* %155, %struct.afs_fs_cursor* %156)
  %158 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %159 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %158, i32 0, i32 0
  %160 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %161 = load i32, i32* @GFP_NOFS, align 4
  %162 = call i32 @afs_make_call(i32* %159, %struct.afs_call* %160, i32 %161)
  %163 = load %struct.afs_call*, %struct.afs_call** %17, align 8
  %164 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %9, align 8
  %165 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %164, i32 0, i32 0
  %166 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %163, i32* %165)
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %91, %88
  %168 = load i32, i32* %8, align 4
  ret i32 %168
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i32 @i_size_read(%struct.TYPE_5__*) #1

declare dso_local i32 @_debug(i8*, i64, i64, i64) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, %struct.TYPE_4__*) #1

declare dso_local i32* @xdr_encode_YFSStoreStatus_mtime(i32*, i32*) #1

declare dso_local i32* @xdr_encode_u64(i32*, i32) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_4__*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
