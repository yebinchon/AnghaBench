; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_cache_rbio_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_cache_rbio_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, i32*, i32* }

@RBIO_CACHE_READY_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_raid_bio*)* @cache_rbio_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_rbio_pages(%struct.btrfs_raid_bio* %0) #0 {
  %2 = alloca %struct.btrfs_raid_bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %2, align 8
  %7 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %8 = call i32 @alloc_rbio_pages(%struct.btrfs_raid_bio* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %81

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %73, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %13
  %20 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %21 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %73

29:                                               ; preds = %19
  %30 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %31 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @kmap(i32 %36)
  store i8* %37, i8** %4, align 8
  %38 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %39 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @kmap(i32 %44)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @copy_page(i8* %46, i8* %47)
  %49 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %50 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kunmap(i32 %55)
  %57 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %58 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @kunmap(i32 %63)
  %65 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %66 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SetPageUptodate(i32 %71)
  br label %73

73:                                               ; preds = %29, %28
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %13

76:                                               ; preds = %13
  %77 = load i32, i32* @RBIO_CACHE_READY_BIT, align 4
  %78 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %79 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %78, i32 0, i32 1
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %11
  ret void
}

declare dso_local i32 @alloc_rbio_pages(%struct.btrfs_raid_bio*) #1

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @SetPageUptodate(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
