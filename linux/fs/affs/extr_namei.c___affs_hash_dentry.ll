; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_namei.c___affs_hash_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_namei.c___affs_hash_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i32, i32* }

@AFFSNAMEMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*, i32 (i32)*, i32)* @__affs_hash_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__affs_hash_dentry(%struct.dentry* %0, %struct.qstr* %1, i32 (i32)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32 (i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store i32 (i32)* %2, i32 (i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.qstr*, %struct.qstr** %7, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load %struct.qstr*, %struct.qstr** %7, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.qstr*, %struct.qstr** %7, align 8
  %21 = getelementptr inbounds %struct.qstr, %struct.qstr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @affs_check_name(i32* %19, i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %57

29:                                               ; preds = %4
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = call i64 @init_name_hash(%struct.dentry* %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.qstr*, %struct.qstr** %7, align 8
  %33 = getelementptr inbounds %struct.qstr, %struct.qstr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AFFSNAMEMAX, align 4
  %36 = call i64 @min(i32 %34, i32 %35)
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %47, %29
  %38 = load i64, i64* %13, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32 (i32)*, i32 (i32)** %8, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %41(i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @partial_name_hash(i32 %44, i64 %45)
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %10, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %13, align 8
  br label %37

52:                                               ; preds = %37
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @end_name_hash(i64 %53)
  %55 = load %struct.qstr*, %struct.qstr** %7, align 8
  %56 = getelementptr inbounds %struct.qstr, %struct.qstr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %27
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @affs_check_name(i32*, i32, i32) #1

declare dso_local i64 @init_name_hash(%struct.dentry*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
