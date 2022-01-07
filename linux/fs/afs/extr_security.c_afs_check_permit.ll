; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_check_permit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_check_permit.c"
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
@.str.1 = private unnamed_addr constant [5 x i8] c"anon\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"no valid permit\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" = 0 [access %x]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_check_permit(%struct.afs_vnode* %0, %struct.key* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.afs_permits*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.key*, %struct.key** %6, align 8
  %21 = call i32 @key_serial(%struct.key* %20)
  %22 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %21)
  %23 = load %struct.key*, %struct.key** %6, align 8
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.key*, %struct.key** %29, align 8
  %31 = icmp eq %struct.key* %23, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = call i32 @_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %35 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  store i32 1, i32* %9, align 4
  br label %100

39:                                               ; preds = %3
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %42 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.afs_permits* @rcu_dereference(i32 %43)
  store %struct.afs_permits* %44, %struct.afs_permits** %8, align 8
  %45 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %46 = icmp ne %struct.afs_permits* %45, null
  br i1 %46, label %47, label %98

47:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %94, %47
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %51 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %48
  %55 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %56 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.key*, %struct.key** %61, align 8
  %63 = load %struct.key*, %struct.key** %6, align 8
  %64 = icmp ult %struct.key* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %94

66:                                               ; preds = %54
  %67 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %68 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.key*, %struct.key** %73, align 8
  %75 = load %struct.key*, %struct.key** %6, align 8
  %76 = icmp ugt %struct.key* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %97

78:                                               ; preds = %66
  %79 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %80 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %89 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %9, align 4
  br label %97

94:                                               ; preds = %65
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %48

97:                                               ; preds = %78, %77, %48
  br label %98

98:                                               ; preds = %97, %39
  %99 = call i32 (...) @rcu_read_unlock()
  br label %100

100:                                              ; preds = %98, %32
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %100
  %104 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %106 = load %struct.key*, %struct.key** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @afs_fetch_status(%struct.afs_vnode* %105, %struct.key* %106, i32 0, i32* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load i32*, i32** %7, align 8
  store i32 0, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %4, align 4
  br label %121

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %100
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %117, %111
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.afs_permits* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @afs_fetch_status(%struct.afs_vnode*, %struct.key*, i32, i32*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
