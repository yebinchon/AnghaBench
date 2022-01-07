; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.kstatfs = type { i32, %struct.TYPE_5__, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i8** }
%struct.TYPE_6__ = type { i32, i32 }

@CRAMFS_MAGIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CRAMFS_MAXPATHLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @cramfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cramfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @huge_encode_dev(i64 %19)
  store i32 %20, i32* %6, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @huge_encode_dev(i64 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* @CRAMFS_MAGIC, align 4
  %34 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %35 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %38 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = call %struct.TYPE_6__* @CRAMFS_SB(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %46 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = call %struct.TYPE_6__* @CRAMFS_SB(%struct.super_block* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %54 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %56 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %61 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %59, i8** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 32
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %70 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* %68, i8** %73, align 8
  %74 = load i32, i32* @CRAMFS_MAXPATHLEN, align 4
  %75 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %76 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  ret i32 0
}

declare dso_local i32 @huge_encode_dev(i64) #1

declare dso_local %struct.TYPE_6__* @CRAMFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
