; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_backref_comp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_backref_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_defrag_extent_backref = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref*)* @backref_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backref_comp(%struct.sa_defrag_extent_backref* %0, %struct.sa_defrag_extent_backref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa_defrag_extent_backref*, align 8
  %5 = alloca %struct.sa_defrag_extent_backref*, align 8
  store %struct.sa_defrag_extent_backref* %0, %struct.sa_defrag_extent_backref** %4, align 8
  store %struct.sa_defrag_extent_backref* %1, %struct.sa_defrag_extent_backref** %5, align 8
  %6 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %4, align 8
  %7 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %5, align 8
  %10 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %4, align 8
  %16 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %5, align 8
  %19 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %63

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %4, align 8
  %26 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %5, align 8
  %29 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %63

33:                                               ; preds = %24
  %34 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %4, align 8
  %35 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %5, align 8
  %38 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %63

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %4, align 8
  %45 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %5, align 8
  %48 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %63

52:                                               ; preds = %43
  %53 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %4, align 8
  %54 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sa_defrag_extent_backref*, %struct.sa_defrag_extent_backref** %5, align 8
  %57 = getelementptr inbounds %struct.sa_defrag_extent_backref, %struct.sa_defrag_extent_backref* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %63

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %51, %41, %32, %22, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
