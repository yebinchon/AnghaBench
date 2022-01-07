; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c___free_raid_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c___free_raid_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, i32**, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_raid_bio*)* @__free_raid_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__free_raid_bio(%struct.btrfs_raid_bio* %0) #0 {
  %2 = alloca %struct.btrfs_raid_bio*, align 8
  %3 = alloca i32, align 4
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %2, align 8
  %4 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %4, i32 0, i32 6
  %6 = call i32 @refcount_dec_and_test(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %72

9:                                                ; preds = %1
  %10 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %10, i32 0, i32 5
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %18 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %17, i32 0, i32 4
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %25 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %24, i32 0, i32 3
  %26 = call i32 @bio_list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %62, %9
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %34 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %39 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %48 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @__free_page(i32* %53)
  %55 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %56 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %46, %37
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %31

65:                                               ; preds = %31
  %66 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %67 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @btrfs_put_bbio(i32 %68)
  %70 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %71 = call i32 @kfree(%struct.btrfs_raid_bio* %70)
  br label %72

72:                                               ; preds = %65, %8
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bio_list_empty(i32*) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @btrfs_put_bbio(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_raid_bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
