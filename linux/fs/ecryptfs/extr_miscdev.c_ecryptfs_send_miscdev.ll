; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_miscdev.c_ecryptfs_send_miscdev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_miscdev.c_ecryptfs_send_miscdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_msg_ctx = type { i32, i32, i32, %struct.ecryptfs_message*, i32, i32 }
%struct.ecryptfs_message = type { i64, i32, i32 }
%struct.ecryptfs_daemon = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_send_miscdev(i8* %0, i64 %1, %struct.ecryptfs_msg_ctx* %2, i32 %3, i32 %4, %struct.ecryptfs_daemon* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ecryptfs_msg_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ecryptfs_daemon*, align 8
  %14 = alloca %struct.ecryptfs_message*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.ecryptfs_msg_ctx* %2, %struct.ecryptfs_msg_ctx** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ecryptfs_daemon* %5, %struct.ecryptfs_daemon** %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = add i64 16, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ecryptfs_message* @kmalloc(i32 %17, i32 %18)
  store %struct.ecryptfs_message* %19, %struct.ecryptfs_message** %14, align 8
  %20 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %14, align 8
  %21 = icmp ne %struct.ecryptfs_message* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %81

25:                                               ; preds = %6
  %26 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %27 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %14, align 8
  %30 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %31 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %30, i32 0, i32 3
  store %struct.ecryptfs_message* %29, %struct.ecryptfs_message** %31, align 8
  %32 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %35, i32 0, i32 3
  %37 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %36, align 8
  %38 = getelementptr inbounds %struct.ecryptfs_message, %struct.ecryptfs_message* %37, i32 0, i32 2
  store i32 %34, i32* %38, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %41 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %40, i32 0, i32 3
  %42 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %41, align 8
  %43 = getelementptr inbounds %struct.ecryptfs_message, %struct.ecryptfs_message* %42, i32 0, i32 0
  store i64 %39, i64* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %47, i32 0, i32 3
  %49 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %48, align 8
  %50 = getelementptr inbounds %struct.ecryptfs_message, %struct.ecryptfs_message* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @memcpy(i32 %51, i8* %52, i64 %53)
  %55 = load i64, i64* %9, align 8
  %56 = add i64 16, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %61 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %60, i32 0, i32 2
  %62 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %13, align 8
  %63 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %62, i32 0, i32 3
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %10, align 8
  %66 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %13, align 8
  %69 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %13, align 8
  %72 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %13, align 8
  %76 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %75, i32 0, i32 1
  %77 = call i32 @wake_up_interruptible(i32* %76)
  %78 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %13, align 8
  %79 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %25, %22
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.ecryptfs_message* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
