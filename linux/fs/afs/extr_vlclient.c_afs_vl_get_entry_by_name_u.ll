; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_vl_get_entry_by_name_u.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_vl_get_entry_by_name_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vldb_entry = type { i32 }
%struct.afs_vl_cursor = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.afs_net* }
%struct.afs_net = type { i32 }
%struct.afs_call = type { i32*, i32, %struct.afs_vldb_entry*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@afs_RXVLGetEntryByNameU = common dso_local global i32 0, align 4
@AFS_VL_MAX_LIFESPAN = common dso_local global i32 0, align 4
@VLGETENTRYBYNAMEU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_vldb_entry* @afs_vl_get_entry_by_name_u(%struct.afs_vl_cursor* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.afs_vldb_entry*, align 8
  %5 = alloca %struct.afs_vl_cursor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_vldb_entry*, align 8
  %9 = alloca %struct.afs_call*, align 8
  %10 = alloca %struct.afs_net*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.afs_vl_cursor* %0, %struct.afs_vl_cursor** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %15 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.afs_net*, %struct.afs_net** %17, align 8
  store %struct.afs_net* %18, %struct.afs_net** %10, align 8
  %19 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 3
  %22 = sub nsw i32 4, %21
  %23 = and i32 %22, 3
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %12, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 8, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %12, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.afs_vldb_entry* @kzalloc(i32 4, i32 %30)
  store %struct.afs_vldb_entry* %31, %struct.afs_vldb_entry** %8, align 8
  %32 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %33 = icmp ne %struct.afs_vldb_entry* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.afs_vldb_entry* @ERR_PTR(i32 %36)
  store %struct.afs_vldb_entry* %37, %struct.afs_vldb_entry** %4, align 8
  br label %102

38:                                               ; preds = %3
  %39 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %39, i32* @afs_RXVLGetEntryByNameU, i64 %40, i32 4)
  store %struct.afs_call* %41, %struct.afs_call** %9, align 8
  %42 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %43 = icmp ne %struct.afs_call* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %46 = call i32 @kfree(%struct.afs_vldb_entry* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.afs_vldb_entry* @ERR_PTR(i32 %48)
  store %struct.afs_vldb_entry* %49, %struct.afs_vldb_entry** %4, align 8
  br label %102

50:                                               ; preds = %38
  %51 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %52 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %57 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %58 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %57, i32 0, i32 2
  store %struct.afs_vldb_entry* %56, %struct.afs_vldb_entry** %58, align 8
  %59 = load i32, i32* @AFS_VL_MAX_LIFESPAN, align 4
  %60 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %61 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %63 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %13, align 8
  %65 = load i32, i32* @VLGETENTRYBYNAMEU, align 4
  %66 = call i8* @htonl(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load i32*, i32** %13, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @htonl(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %13, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @memcpy(i32* %75, i8* %76, i32 %77)
  %79 = load i64, i64* %12, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %50
  %82 = load i32*, i32** %13, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %83, i64 %85
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @memset(i8* %86, i32 0, i64 %87)
  br label %89

89:                                               ; preds = %81, %50
  %90 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %91 = call i32 @trace_afs_make_vl_call(%struct.afs_call* %90)
  %92 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %93 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %92, i32 0, i32 0
  %94 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i32 @afs_make_call(i32* %93, %struct.afs_call* %94, i32 %95)
  %97 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %98 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %99 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %98, i32 0, i32 0
  %100 = call i64 @afs_wait_for_call_to_complete(%struct.afs_call* %97, i32* %99)
  %101 = inttoptr i64 %100 to %struct.afs_vldb_entry*
  store %struct.afs_vldb_entry* %101, %struct.afs_vldb_entry** %4, align 8
  br label %102

102:                                              ; preds = %89, %44, %34
  %103 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %4, align 8
  ret %struct.afs_vldb_entry* %103
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_vldb_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.afs_vldb_entry* @ERR_PTR(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i64, i32) #1

declare dso_local i32 @kfree(%struct.afs_vldb_entry*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @trace_afs_make_vl_call(%struct.afs_call*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i64 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
