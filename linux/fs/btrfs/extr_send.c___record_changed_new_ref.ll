; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___record_changed_new_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___record_changed_new_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_path = type { i32 }
%struct.send_ctx = type { i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.fs_path*, i8*)* @__record_changed_new_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__record_changed_new_ref(i32 %0, i32 %1, i32 %2, %struct.fs_path* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fs_path*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.send_ctx*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.fs_path* %3, %struct.fs_path** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.send_ctx*
  store %struct.send_ctx* %16, %struct.send_ctx** %14, align 8
  %17 = load %struct.send_ctx*, %struct.send_ctx** %14, align 8
  %18 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @get_inode_info(i32 %19, i32 %20, i32* null, i32* %12, i32* null, i32* null, i32* null, i32* null)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %58

26:                                               ; preds = %5
  %27 = load %struct.send_ctx*, %struct.send_ctx** %14, align 8
  %28 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.send_ctx*, %struct.send_ctx** %14, align 8
  %31 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.send_ctx*, %struct.send_ctx** %14, align 8
  %34 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %39 = call i32 @find_iref(i32 %29, i32 %32, i32 %35, i32 %36, i32 %37, %struct.fs_path* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.fs_path*, %struct.fs_path** %10, align 8
  %49 = load %struct.send_ctx*, %struct.send_ctx** %14, align 8
  %50 = call i32 @__record_new_ref(i32 %45, i32 %46, i32 %47, %struct.fs_path* %48, %struct.send_ctx* %49)
  store i32 %50, i32* %13, align 4
  br label %56

51:                                               ; preds = %26
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %54, %51
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %24
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @get_inode_info(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @find_iref(i32, i32, i32, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @__record_new_ref(i32, i32, i32, %struct.fs_path*, %struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
