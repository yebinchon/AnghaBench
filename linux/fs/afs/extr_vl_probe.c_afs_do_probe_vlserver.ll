; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vl_probe.c_afs_do_probe_vlserver.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vl_probe.c_afs_do_probe_vlserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32 }
%struct.afs_vlserver = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_error = type { i32 }
%struct.afs_addr_cursor = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.afs_call = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_net*, %struct.afs_vlserver*, %struct.key*, i32, %struct.afs_error*)* @afs_do_probe_vlserver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_do_probe_vlserver(%struct.afs_net* %0, %struct.afs_vlserver* %1, %struct.key* %2, i32 %3, %struct.afs_error* %4) #0 {
  %6 = alloca %struct.afs_net*, align 8
  %7 = alloca %struct.afs_vlserver*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.afs_error*, align 8
  %11 = alloca %struct.afs_addr_cursor, align 8
  %12 = alloca %struct.afs_call*, align 8
  %13 = alloca i32, align 4
  store %struct.afs_net* %0, %struct.afs_net** %6, align 8
  store %struct.afs_vlserver* %1, %struct.afs_vlserver** %7, align 8
  store %struct.key* %2, %struct.key** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.afs_error* %4, %struct.afs_error** %10, align 8
  %14 = bitcast %struct.afs_addr_cursor* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  %15 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %16 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %20 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %19, i32 0, i32 2
  %21 = call i32 @read_lock(i32* %20)
  %22 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %23 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %26 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %25, i32 0, i32 2
  %27 = call i32 @lockdep_is_held(i32* %26)
  %28 = call %struct.TYPE_3__* @rcu_dereference_protected(i32 %24, i32 %27)
  %29 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 2
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %29, align 8
  %30 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %31 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %30, i32 0, i32 2
  %32 = call i32 @read_unlock(i32* %31)
  %33 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %34 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @atomic_set(i32* %34, i64 %38)
  %40 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %41 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %40, i32 0, i32 0
  %42 = call i32 @memset(%struct.TYPE_4__* %41, i32 0, i32 4)
  %43 = load i32, i32* @UINT_MAX, align 4
  %44 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %45 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %76, %5
  %49 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %48
  %57 = load %struct.afs_net*, %struct.afs_net** %6, align 8
  %58 = load %struct.key*, %struct.key** %8, align 8
  %59 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call %struct.afs_call* @afs_vl_get_capabilities(%struct.afs_net* %57, %struct.afs_addr_cursor* %11, %struct.key* %58, %struct.afs_vlserver* %59, i32 %60)
  store %struct.afs_call* %61, %struct.afs_call** %12, align 8
  %62 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %63 = call i32 @IS_ERR(%struct.afs_call* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %67 = call i32 @afs_put_call(%struct.afs_call* %66)
  store i32 1, i32* %13, align 4
  br label %75

68:                                               ; preds = %56
  %69 = load %struct.afs_error*, %struct.afs_error** %10, align 8
  %70 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %71 = call i32 @PTR_ERR(%struct.afs_call* %70)
  %72 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @afs_prioritise_error(%struct.afs_error* %69, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %68, %65
  br label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %11, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %48

80:                                               ; preds = %48
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %85 = call i32 @afs_vl_probe_done(%struct.afs_vlserver* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %13, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_enter(i8*, i32) #2

declare dso_local i32 @read_lock(i32*) #2

declare dso_local %struct.TYPE_3__* @rcu_dereference_protected(i32, i32) #2

declare dso_local i32 @lockdep_is_held(i32*) #2

declare dso_local i32 @read_unlock(i32*) #2

declare dso_local i32 @atomic_set(i32*, i64) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local %struct.afs_call* @afs_vl_get_capabilities(%struct.afs_net*, %struct.afs_addr_cursor*, %struct.key*, %struct.afs_vlserver*, i32) #2

declare dso_local i32 @IS_ERR(%struct.afs_call*) #2

declare dso_local i32 @afs_put_call(%struct.afs_call*) #2

declare dso_local i32 @afs_prioritise_error(%struct.afs_error*, i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.afs_call*) #2

declare dso_local i32 @afs_vl_probe_done(%struct.afs_vlserver*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
