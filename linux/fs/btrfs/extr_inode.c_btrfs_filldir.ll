; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_filldir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_filldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_context = type { i64 }
%struct.dir_entry = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dir_context*)* @btrfs_filldir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_filldir(i8* %0, i32 %1, %struct.dir_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dir_context*, align 8
  %8 = alloca %struct.dir_entry*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dir_context* %2, %struct.dir_context** %7, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.dir_entry*
  store %struct.dir_entry* %16, %struct.dir_entry** %8, align 8
  %17 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %18 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %17, i64 1
  %19 = bitcast %struct.dir_entry* %18 to i8*
  store i8* %19, i8** %9, align 8
  %20 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %21 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %20, i32 0, i32 3
  %22 = call i64 @get_unaligned(i32* %21)
  %23 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %24 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %28 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %27, i32 0, i32 0
  %29 = call i64 @get_unaligned(i32* %28)
  %30 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %31 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %30, i32 0, i32 2
  %32 = call i64 @get_unaligned(i32* %31)
  %33 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %34 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %33, i32 0, i32 1
  %35 = call i64 @get_unaligned(i32* %34)
  %36 = call i32 @dir_emit(%struct.dir_context* %25, i8* %26, i64 %29, i64 %32, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %51

39:                                               ; preds = %14
  %40 = load %struct.dir_entry*, %struct.dir_entry** %8, align 8
  %41 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %40, i32 0, i32 0
  %42 = call i64 @get_unaligned(i32* %41)
  %43 = add i64 16, %42
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr i8, i8* %44, i64 %43
  store i8* %45, i8** %5, align 8
  %46 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %47 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %10

50:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @get_unaligned(i32*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
