; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fs_probe.c_afs_do_probe_fileserver.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fs_probe.c_afs_do_probe_fileserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32 }
%struct.afs_server = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_error = type { i32 }
%struct.afs_addr_cursor = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.afs_call = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%pU\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_net*, %struct.afs_server*, %struct.key*, i32, %struct.afs_error*)* @afs_do_probe_fileserver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_do_probe_fileserver(%struct.afs_net* %0, %struct.afs_server* %1, %struct.key* %2, i32 %3, %struct.afs_error* %4) #0 {
  %6 = alloca %struct.afs_net*, align 8
  %7 = alloca %struct.afs_server*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.afs_error*, align 8
  %11 = alloca %struct.afs_addr_cursor, align 8
  %12 = alloca %struct.afs_call*, align 8
  %13 = alloca i32, align 4
  store %struct.afs_net* %0, %struct.afs_net** %6, align 8
  store %struct.afs_server* %1, %struct.afs_server** %7, align 8
  store %struct.key* %2, %struct.key** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.afs_error* %4, %struct.afs_error** %10, align 8
  %14 = bitcast %struct.afs_addr_cursor* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  %15 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %16 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %15, i32 0, i32 4
  %17 = call i32 @_enter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %19 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %18, i32 0, i32 2
  %20 = call i32 @read_lock(i32* %19)
  %21 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %22 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %25 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %24, i32 0, i32 2
  %26 = call i32 @lockdep_is_held(i32* %25)
  %27 = call %struct.TYPE_3__* @rcu_dereference_protected(i32 %23, i32 %26)
  %28 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 2
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %30 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %29, i32 0, i32 2
  %31 = call i32 @read_unlock(i32* %30)
  %32 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %33 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @atomic_set(i32* %33, i64 %37)
  %39 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %40 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %39, i32 0, i32 0
  %41 = call i32 @memset(%struct.TYPE_4__* %40, i32 0, i32 4)
  %42 = load i32, i32* @UINT_MAX, align 4
  %43 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %44 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %75, %5
  %48 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %47
  %56 = load %struct.afs_net*, %struct.afs_net** %6, align 8
  %57 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %58 = load %struct.key*, %struct.key** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call %struct.afs_call* @afs_fs_get_capabilities(%struct.afs_net* %56, %struct.afs_server* %57, %struct.afs_addr_cursor* %11, %struct.key* %58, i32 %59)
  store %struct.afs_call* %60, %struct.afs_call** %12, align 8
  %61 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %62 = call i32 @IS_ERR(%struct.afs_call* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %66 = call i32 @afs_put_call(%struct.afs_call* %65)
  store i32 1, i32* %13, align 4
  br label %74

67:                                               ; preds = %55
  %68 = load %struct.afs_error*, %struct.afs_error** %10, align 8
  %69 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %70 = call i32 @PTR_ERR(%struct.afs_call* %69)
  %71 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @afs_prioritise_error(%struct.afs_error* %68, i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %67, %64
  br label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %47

79:                                               ; preds = %47
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %84 = call i32 @afs_fs_probe_done(%struct.afs_server* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %13, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_enter(i8*, i32*) #2

declare dso_local i32 @read_lock(i32*) #2

declare dso_local %struct.TYPE_3__* @rcu_dereference_protected(i32, i32) #2

declare dso_local i32 @lockdep_is_held(i32*) #2

declare dso_local i32 @read_unlock(i32*) #2

declare dso_local i32 @atomic_set(i32*, i64) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local %struct.afs_call* @afs_fs_get_capabilities(%struct.afs_net*, %struct.afs_server*, %struct.afs_addr_cursor*, %struct.key*, i32) #2

declare dso_local i32 @IS_ERR(%struct.afs_call*) #2

declare dso_local i32 @afs_put_call(%struct.afs_call*) #2

declare dso_local i32 @afs_prioritise_error(%struct.afs_error*, i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.afs_call*) #2

declare dso_local i32 @afs_fs_probe_done(%struct.afs_server*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
