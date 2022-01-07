; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_autofs_catatonic_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_autofs_catatonic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { i32, i32, i32, i32*, %struct.autofs_wait_queue* }
%struct.autofs_wait_queue = type { i32, i32, %struct.TYPE_2__, i32, %struct.autofs_wait_queue* }
%struct.TYPE_2__ = type { i32* }

@AUTOFS_SBI_CATATONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"entering catatonic mode\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_catatonic_mode(%struct.autofs_sb_info* %0) #0 {
  %2 = alloca %struct.autofs_sb_info*, align 8
  %3 = alloca %struct.autofs_wait_queue*, align 8
  %4 = alloca %struct.autofs_wait_queue*, align 8
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %2, align 8
  %5 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %5, i32 0, i32 2
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %9 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %16 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %15, i32 0, i32 2
  %17 = call i32 @mutex_unlock(i32* %16)
  br label %69

18:                                               ; preds = %1
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %21 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %22 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %26 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %25, i32 0, i32 4
  %27 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %26, align 8
  store %struct.autofs_wait_queue* %27, %struct.autofs_wait_queue** %3, align 8
  %28 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %29 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %28, i32 0, i32 4
  store %struct.autofs_wait_queue* null, %struct.autofs_wait_queue** %29, align 8
  br label %30

30:                                               ; preds = %33, %18
  %31 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %32 = icmp ne %struct.autofs_wait_queue* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %35 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %34, i32 0, i32 4
  %36 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %35, align 8
  store %struct.autofs_wait_queue* %36, %struct.autofs_wait_queue** %4, align 8
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %40 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %42 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kfree(i32* %44)
  %46 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %47 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %50 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %3, align 8
  %54 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %53, i32 0, i32 0
  %55 = call i32 @wake_up_interruptible(i32* %54)
  %56 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %4, align 8
  store %struct.autofs_wait_queue* %56, %struct.autofs_wait_queue** %3, align 8
  br label %30

57:                                               ; preds = %30
  %58 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %59 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @fput(i32* %60)
  %62 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %63 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  %64 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %65 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 4
  %66 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %67 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %66, i32 0, i32 2
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %57, %14
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @fput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
