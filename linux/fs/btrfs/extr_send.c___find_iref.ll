; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___find_iref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___find_iref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_path = type { i32 }
%struct.find_ref_ctx = type { i64, i64, i32, i32, %struct.fs_path* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, %struct.fs_path*, i8*)* @__find_iref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__find_iref(i32 %0, i64 %1, i32 %2, %struct.fs_path* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fs_path*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.find_ref_ctx*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.fs_path* %3, %struct.fs_path** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.find_ref_ctx*
  store %struct.find_ref_ctx* %16, %struct.find_ref_ctx** %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.find_ref_ctx*, %struct.find_ref_ctx** %12, align 8
  %19 = getelementptr inbounds %struct.find_ref_ctx, %struct.find_ref_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %5
  %23 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %24 = call i64 @fs_path_len(%struct.fs_path* %23)
  %25 = load %struct.find_ref_ctx*, %struct.find_ref_ctx** %12, align 8
  %26 = getelementptr inbounds %struct.find_ref_ctx, %struct.find_ref_ctx* %25, i32 0, i32 4
  %27 = load %struct.fs_path*, %struct.fs_path** %26, align 8
  %28 = call i64 @fs_path_len(%struct.fs_path* %27)
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %22
  %31 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %32 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.find_ref_ctx*, %struct.find_ref_ctx** %12, align 8
  %35 = getelementptr inbounds %struct.find_ref_ctx, %struct.find_ref_ctx* %34, i32 0, i32 4
  %36 = load %struct.fs_path*, %struct.fs_path** %35, align 8
  %37 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %40 = call i64 @fs_path_len(%struct.fs_path* %39)
  %41 = call i64 @strncmp(i32 %33, i32 %38, i64 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %30
  %44 = load %struct.find_ref_ctx*, %struct.find_ref_ctx** %12, align 8
  %45 = getelementptr inbounds %struct.find_ref_ctx, %struct.find_ref_ctx* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @get_inode_info(i32 %46, i64 %47, i32* null, i64* %13, i32* null, i32* null, i32* null, i32* null)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %65

53:                                               ; preds = %43
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.find_ref_ctx*, %struct.find_ref_ctx** %12, align 8
  %56 = getelementptr inbounds %struct.find_ref_ctx, %struct.find_ref_ctx* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %65

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.find_ref_ctx*, %struct.find_ref_ctx** %12, align 8
  %63 = getelementptr inbounds %struct.find_ref_ctx, %struct.find_ref_ctx* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  store i32 1, i32* %6, align 4
  br label %65

64:                                               ; preds = %30, %22, %5
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %60, %59, %51
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i64 @fs_path_len(%struct.fs_path*) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i32 @get_inode_info(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
