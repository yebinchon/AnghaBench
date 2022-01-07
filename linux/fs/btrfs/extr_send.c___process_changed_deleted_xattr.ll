; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___process_changed_deleted_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___process_changed_deleted_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_key = type { i32 }
%struct.send_ctx = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.btrfs_key*, i8*, i32, i8*, i32, i32, i8*)* @__process_changed_deleted_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__process_changed_deleted_xattr(i32 %0, %struct.btrfs_key* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_key*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.send_ctx*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.btrfs_key* %1, %struct.btrfs_key** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %19 = load i8*, i8** %16, align 8
  %20 = bitcast i8* %19 to %struct.send_ctx*
  store %struct.send_ctx* %20, %struct.send_ctx** %18, align 8
  %21 = load %struct.send_ctx*, %struct.send_ctx** %18, align 8
  %22 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.send_ctx*, %struct.send_ctx** %18, align 8
  %25 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.send_ctx*, %struct.send_ctx** %18, align 8
  %28 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @find_xattr(i32 %23, i32 %26, i32 %29, i8* %30, i32 %31, i32* null, i32* null)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @__process_deleted_xattr(i32 %38, %struct.btrfs_key* %39, i8* %40, i32 %41, i8* %42, i32 %43, i32 %44, i8* %45)
  store i32 %46, i32* %17, align 4
  br label %52

47:                                               ; preds = %8
  %48 = load i32, i32* %17, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32, i32* %17, align 4
  ret i32 %53
}

declare dso_local i32 @find_xattr(i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @__process_deleted_xattr(i32, %struct.btrfs_key*, i8*, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
