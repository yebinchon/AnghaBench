; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cache.c_afs_vnode_cache_check_aux.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cache.c_afs_vnode_cache_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.afs_vnode_cache_aux = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"{%llx,%x,%llx},%p,%u\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" = OBSOLETE [len %hx != %zx]\00", align 1
@FSCACHE_CHECKAUX_OBSOLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c" = OBSOLETE [vers %llx != %llx]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" = SUCCESS\00", align 1
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @afs_vnode_cache_check_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_vnode_cache_check_aux(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.afs_vnode*, align 8
  %11 = alloca %struct.afs_vnode_cache_aux, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.afs_vnode*
  store %struct.afs_vnode* %13, %struct.afs_vnode** %10, align 8
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @_enter(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25, i8* %26, i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @memcpy(%struct.afs_vnode_cache_aux* %11, i8* %29, i32 4)
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %35, i64 4)
  %37 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %37, i32* %5, align 4
  br label %58

38:                                               ; preds = %4
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.afs_vnode_cache_aux, %struct.afs_vnode_cache_aux* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.afs_vnode_cache_aux, %struct.afs_vnode_cache_aux* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %50 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %52)
  %54 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %38
  %56 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %46, %34
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.afs_vnode_cache_aux*, i8*, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
