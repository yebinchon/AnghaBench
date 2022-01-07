; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___process_changed_new_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___process_changed_new_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_key = type { i32 }
%struct.send_ctx = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.btrfs_key*, i8*, i32, i8*, i32, i32, i8*)* @__process_changed_new_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__process_changed_new_xattr(i32 %0, %struct.btrfs_key* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
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
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.btrfs_key* %1, %struct.btrfs_key** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %21 = load i8*, i8** %16, align 8
  %22 = bitcast i8* %21 to %struct.send_ctx*
  store %struct.send_ctx* %22, %struct.send_ctx** %18, align 8
  store i8* null, i8** %19, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.send_ctx*, %struct.send_ctx** %18, align 8
  %24 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.send_ctx*, %struct.send_ctx** %18, align 8
  %27 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.send_ctx*, %struct.send_ctx** %18, align 8
  %30 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @find_xattr(i32 %25, i32 %28, i32 %31, i8* %32, i32 %33, i8** %19, i32* %20)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i8*, i8** %16, align 8
  %48 = call i32 @__process_new_xattr(i32 %40, %struct.btrfs_key* %41, i8* %42, i32 %43, i8* %44, i32 %45, i32 %46, i8* %47)
  store i32 %48, i32* %17, align 4
  br label %75

49:                                               ; preds = %8
  %50 = load i32, i32* %17, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %20, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @memcmp(i8* %57, i8* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i8*, i8** %16, align 8
  %71 = call i32 @__process_new_xattr(i32 %63, %struct.btrfs_key* %64, i8* %65, i32 %66, i8* %67, i32 %68, i32 %69, i8* %70)
  store i32 %71, i32* %17, align 4
  br label %73

72:                                               ; preds = %56
  store i32 0, i32* %17, align 4
  br label %73

73:                                               ; preds = %72, %62
  br label %74

74:                                               ; preds = %73, %49
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i8*, i8** %19, align 8
  %77 = call i32 @kfree(i8* %76)
  %78 = load i32, i32* %17, align 4
  ret i32 %78
}

declare dso_local i32 @find_xattr(i32, i32, i32, i8*, i32, i8**, i32*) #1

declare dso_local i32 @__process_new_xattr(i32, %struct.btrfs_key*, i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
