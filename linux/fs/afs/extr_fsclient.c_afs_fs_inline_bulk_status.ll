; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_inline_bulk_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_inline_bulk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.TYPE_6__, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.afs_net = type { i32 }
%struct.afs_fid = type { i32, i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_volsync = type { i32 }
%struct.afs_call = type { i32, i32*, %struct.afs_volsync*, %struct.afs_status_cb*, i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c",%x,{%llx:%llu},%u\00", align 1
@afs_RXFSInlineBulkStatus = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSINLINEBULKSTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_inline_bulk_status(%struct.afs_fs_cursor* %0, %struct.afs_net* %1, %struct.afs_fid* %2, %struct.afs_status_cb* %3, i32 %4, %struct.afs_volsync* %5) #0 {
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
  %17 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %18 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %19 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %17, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %28 = load %struct.afs_net*, %struct.afs_net** %9, align 8
  %29 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %30 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.afs_volsync*, %struct.afs_volsync** %13, align 8
  %33 = call i32 @yfs_fs_inline_bulk_status(%struct.afs_fs_cursor* %27, %struct.afs_net* %28, %struct.afs_fid* %29, %struct.afs_status_cb* %30, i32 %31, %struct.afs_volsync* %32)
  store i32 %33, i32* %7, align 4
  br label %153

34:                                               ; preds = %6
  %35 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %36 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @key_serial(i32 %37)
  %39 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %40 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %39, i64 0
  %41 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %44 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %43, i64 1
  %45 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @_enter(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42, i32 %46, i32 %47)
  %49 = load %struct.afs_net*, %struct.afs_net** %9, align 8
  %50 = load i32, i32* %12, align 4
  %51 = mul i32 %50, 3
  %52 = add i32 2, %51
  %53 = mul i32 %52, 4
  %54 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %49, i32* @afs_RXFSInlineBulkStatus, i32 %53, i32 84)
  store %struct.afs_call* %54, %struct.afs_call** %14, align 8
  %55 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %56 = icmp ne %struct.afs_call* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %34
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  %60 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %61 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %153

65:                                               ; preds = %34
  %66 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %67 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %70 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %72 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %73 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %72, i32 0, i32 3
  store %struct.afs_status_cb* %71, %struct.afs_status_cb** %73, align 8
  %74 = load %struct.afs_volsync*, %struct.afs_volsync** %13, align 8
  %75 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %76 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %75, i32 0, i32 2
  store %struct.afs_volsync* %74, %struct.afs_volsync** %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %79 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %81 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %15, align 8
  %83 = load i32, i32* @FSINLINEBULKSTATUS, align 4
  %84 = call i8* @htonl(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32*, i32** %15, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %15, align 8
  store i32 %85, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i8* @htonl(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32*, i32** %15, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %15, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %16, align 4
  br label %93

93:                                               ; preds = %128, %65
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %93
  %98 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %98, i64 %100
  %102 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @htonl(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %15, align 8
  store i32 %105, i32* %106, align 4
  %108 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %108, i64 %110
  %112 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @htonl(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load i32*, i32** %15, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %15, align 8
  store i32 %115, i32* %116, align 4
  %118 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %118, i64 %120
  %122 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @htonl(i32 %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load i32*, i32** %15, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %15, align 8
  store i32 %125, i32* %126, align 4
  br label %128

128:                                              ; preds = %97
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %16, align 4
  br label %93

131:                                              ; preds = %93
  %132 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %133 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %134 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = call i32 @afs_use_fs_server(%struct.afs_call* %132, %struct.TYPE_7__* %135)
  %137 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %138 = load %struct.afs_fid*, %struct.afs_fid** %10, align 8
  %139 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %138, i64 0
  %140 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %137, %struct.afs_fid* %139)
  %141 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %142 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %143 = call i32 @afs_set_fc_call(%struct.afs_call* %141, %struct.afs_fs_cursor* %142)
  %144 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %145 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %144, i32 0, i32 0
  %146 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %147 = load i32, i32* @GFP_NOFS, align 4
  %148 = call i32 @afs_make_call(%struct.TYPE_6__* %145, %struct.afs_call* %146, i32 %147)
  %149 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %150 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %151 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %150, i32 0, i32 0
  %152 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %149, %struct.TYPE_6__* %151)
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %131, %57, %26
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_inline_bulk_status(%struct.afs_fs_cursor*, %struct.afs_net*, %struct.afs_fid*, %struct.afs_status_cb*, i32, %struct.afs_volsync*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_7__*) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.afs_fid*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_6__*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
