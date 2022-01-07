; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_inline_bulk_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_inline_bulk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.afs_net = type { i32 }
%struct.afs_fid = type { i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_volsync = type { i32 }
%struct.afs_call = type { i32, i32*, %struct.afs_volsync*, %struct.afs_status_cb*, i32 }

@.str = private unnamed_addr constant [19 x i8] c",%x,{%llx:%llu},%u\00", align 1
@yfs_RXYFSInlineBulkStatus = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSINLINEBULKSTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_inline_bulk_status(%struct.afs_fs_cursor* %0, %struct.afs_net* %1, %struct.afs_fid* %2, %struct.afs_status_cb* %3, i32 %4, %struct.afs_volsync* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_fs_cursor*, align 8
  %9 = alloca %struct.afs_net*, align 8
  %10 = alloca %struct.afs_fid*, align 8
  %11 = alloca %struct.afs_status_cb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.afs_volsync*, align 8
  %14 = alloca %struct.afs_call*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %8, align 8
  store %struct.afs_net* %1, %struct.afs_net** %9, align 8
  store %struct.afs_fid* %2, %struct.afs_fid** %10, align 8
  store %struct.afs_status_cb* %3, %struct.afs_status_cb** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.afs_volsync* %5, %struct.afs_volsync** %13, align 8
  %17 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %18 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @key_serial(i32 %19)
  %21 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %22 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %21, i64 0
  %23 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %26 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %25, i64 1
  %27 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @_enter(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %28, i32 %29)
  %31 = load %struct.afs_net*, %struct.afs_net** %9, align 8
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = add i64 12, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %31, i32* @yfs_RXYFSInlineBulkStatus, i32 %36, i32 4)
  store %struct.afs_call* %37, %struct.afs_call** %14, align 8
  %38 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %39 = icmp ne %struct.afs_call* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %6
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %44 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %113

48:                                               ; preds = %6
  %49 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %50 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %55 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 3
  store %struct.afs_status_cb* %54, %struct.afs_status_cb** %56, align 8
  %57 = load %struct.afs_volsync*, %struct.afs_volsync** %13, align 8
  %58 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %59 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %58, i32 0, i32 2
  store %struct.afs_volsync* %57, %struct.afs_volsync** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %64 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %15, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* @YFSINLINEBULKSTATUS, align 4
  %68 = call i32* @xdr_encode_u32(i32* %66, i32 %67)
  store i32* %68, i32** %15, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = call i32* @xdr_encode_u32(i32* %69, i32 0)
  store i32* %70, i32** %15, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32* @xdr_encode_u32(i32* %71, i32 %72)
  store i32* %73, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %85, %48
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32*, i32** %15, align 8
  %80 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %80, i64 %82
  %84 = call i32* @xdr_encode_YFSFid(i32* %79, %struct.afs_fid* %83)
  store i32* %84, i32** %15, align 8
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %74

88:                                               ; preds = %74
  %89 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @yfs_check_req(%struct.afs_call* %89, i32* %90)
  %92 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %93 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %94 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @afs_use_fs_server(%struct.afs_call* %92, i32 %95)
  %97 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %98 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %99 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %98, i64 0
  %100 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %97, %struct.afs_fid* %99)
  %101 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %102 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %103 = call i32 @afs_set_fc_call(%struct.afs_call* %101, %struct.afs_fs_cursor* %102)
  %104 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %105 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %104, i32 0, i32 0
  %106 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %107 = load i32, i32* @GFP_NOFS, align 4
  %108 = call i32 @afs_make_call(%struct.TYPE_3__* %105, %struct.afs_call* %106, i32 %107)
  %109 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %110 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %111 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %110, i32 0, i32 0
  %112 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %109, %struct.TYPE_3__* %111)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %88, %40
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, %struct.afs_fid*) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.afs_fid*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_3__*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
