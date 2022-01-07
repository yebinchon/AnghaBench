; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_free_async_extent_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_free_async_extent_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_extent = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_extent*)* @free_async_extent_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_async_extent_pages(%struct.async_extent* %0) #0 {
  %2 = alloca %struct.async_extent*, align 8
  %3 = alloca i32, align 4
  store %struct.async_extent* %0, %struct.async_extent** %2, align 8
  %4 = load %struct.async_extent*, %struct.async_extent** %2, align 8
  %5 = getelementptr inbounds %struct.async_extent, %struct.async_extent* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %7 = icmp ne %struct.TYPE_3__** %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.async_extent*, %struct.async_extent** %2, align 8
  %13 = getelementptr inbounds %struct.async_extent, %struct.async_extent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.async_extent*, %struct.async_extent** %2, align 8
  %18 = getelementptr inbounds %struct.async_extent, %struct.async_extent* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.async_extent*, %struct.async_extent** %2, align 8
  %28 = getelementptr inbounds %struct.async_extent, %struct.async_extent* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @put_page(%struct.TYPE_3__* %33)
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load %struct.async_extent*, %struct.async_extent** %2, align 8
  %40 = getelementptr inbounds %struct.async_extent, %struct.async_extent* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %40, align 8
  %42 = call i32 @kfree(%struct.TYPE_3__** %41)
  %43 = load %struct.async_extent*, %struct.async_extent** %2, align 8
  %44 = getelementptr inbounds %struct.async_extent, %struct.async_extent* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.async_extent*, %struct.async_extent** %2, align 8
  %46 = getelementptr inbounds %struct.async_extent, %struct.async_extent* %45, i32 0, i32 1
  store %struct.TYPE_3__** null, %struct.TYPE_3__*** %46, align 8
  br label %47

47:                                               ; preds = %38, %8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @put_page(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
