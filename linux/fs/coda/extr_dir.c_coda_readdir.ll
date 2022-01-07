; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, {}* }
%struct.dir_context = type { i32 }
%struct.coda_file_info = type { %struct.file* }
%struct.inode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @coda_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.coda_file_info*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.coda_file_info* @coda_ftoc(%struct.file* %10)
  store %struct.coda_file_info* %11, %struct.coda_file_info** %6, align 8
  %12 = load %struct.coda_file_info*, %struct.coda_file_info** %6, align 8
  %13 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %12, i32 0, i32 0
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %7, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.file*, %struct.dir_context*)**
  %20 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %19, align 8
  %21 = icmp ne i32 (%struct.file*, %struct.dir_context*)* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = bitcast {}** %26 to i32 (%struct.file*, %struct.dir_context*)**
  %28 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %27, align 8
  %29 = icmp ne i32 (%struct.file*, %struct.dir_context*)* %28, null
  br i1 %29, label %30, label %81

30:                                               ; preds = %22, %2
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = call %struct.inode* @file_inode(%struct.file* %31)
  store %struct.inode* %32, %struct.inode** %9, align 8
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call i32 @IS_DEADDIR(%struct.inode* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %79, label %38

38:                                               ; preds = %30
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = bitcast {}** %42 to i32 (%struct.file*, %struct.dir_context*)**
  %44 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %43, align 8
  %45 = icmp ne i32 (%struct.file*, %struct.dir_context*)* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call i32 @inode_lock_shared(%struct.inode* %47)
  %49 = load %struct.file*, %struct.file** %7, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = bitcast {}** %52 to i32 (%struct.file*, %struct.dir_context*)**
  %54 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %53, align 8
  %55 = load %struct.file*, %struct.file** %7, align 8
  %56 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %57 = call i32 %54(%struct.file* %55, %struct.dir_context* %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = call i32 @file_accessed(%struct.file* %58)
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = call i32 @inode_unlock_shared(%struct.inode* %60)
  br label %78

62:                                               ; preds = %38
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call i32 @inode_lock(%struct.inode* %63)
  %65 = load %struct.file*, %struct.file** %7, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i32 (%struct.file*, %struct.dir_context*)**
  %70 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %69, align 8
  %71 = load %struct.file*, %struct.file** %7, align 8
  %72 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %73 = call i32 %70(%struct.file* %71, %struct.dir_context* %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.file*, %struct.file** %7, align 8
  %75 = call i32 @file_accessed(%struct.file* %74)
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = call i32 @inode_unlock(%struct.inode* %76)
  br label %78

78:                                               ; preds = %62, %46
  br label %79

79:                                               ; preds = %78, %30
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %85

81:                                               ; preds = %22
  %82 = load %struct.file*, %struct.file** %4, align 8
  %83 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %84 = call i32 @coda_venus_readdir(%struct.file* %82, %struct.dir_context* %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %79
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.coda_file_info* @coda_ftoc(%struct.file*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @IS_DEADDIR(%struct.inode*) #1

declare dso_local i32 @inode_lock_shared(%struct.inode*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

declare dso_local i32 @inode_unlock_shared(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @coda_venus_readdir(%struct.file*, %struct.dir_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
