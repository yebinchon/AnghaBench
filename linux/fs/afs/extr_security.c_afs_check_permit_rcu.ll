; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_check_permit_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_check_permit_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.key* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.key = type { i32 }
%struct.afs_permits = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.key* }

@.str = private unnamed_addr constant [15 x i8] c"{%llx:%llu},%x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" = t [anon %x]\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" = %u [perm %x]\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" = f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_vnode*, %struct.key*, i32*)* @afs_check_permit_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_check_permit_rcu(%struct.afs_vnode* %0, %struct.key* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.afs_permits*, align 8
  %9 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %11 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.key*, %struct.key** %6, align 8
  %19 = call i32 @key_serial(%struct.key* %18)
  %20 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %19)
  %21 = load %struct.key*, %struct.key** %6, align 8
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.key*, %struct.key** %27, align 8
  %29 = icmp eq %struct.key* %21, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %32 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 1, i32* %4, align 4
  br label %108

39:                                               ; preds = %3
  %40 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %41 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.afs_permits* @rcu_dereference(i32 %42)
  store %struct.afs_permits* %43, %struct.afs_permits** %8, align 8
  %44 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %45 = icmp ne %struct.afs_permits* %44, null
  br i1 %45, label %46, label %106

46:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %102, %46
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %50 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %105

53:                                               ; preds = %47
  %54 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %55 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.key*, %struct.key** %60, align 8
  %62 = load %struct.key*, %struct.key** %6, align 8
  %63 = icmp ult %struct.key* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %102

65:                                               ; preds = %53
  %66 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %67 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load %struct.key*, %struct.key** %72, align 8
  %74 = load %struct.key*, %struct.key** %6, align 8
  %75 = icmp ugt %struct.key* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %105

77:                                               ; preds = %65
  %78 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %79 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %78, i32 0, i32 2
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %88 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %94)
  %96 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %97 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %108

102:                                              ; preds = %64
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %47

105:                                              ; preds = %76, %47
  br label %106

106:                                              ; preds = %105, %39
  %107 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %77, %30
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.afs_permits* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
