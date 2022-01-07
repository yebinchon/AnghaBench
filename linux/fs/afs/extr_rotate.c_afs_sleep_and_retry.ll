; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rotate.c_afs_sleep_and_retry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rotate.c_afs_sleep_and_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32 }

@AFS_FS_CURSOR_INTR = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_fs_cursor*)* @afs_sleep_and_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_sleep_and_retry(%struct.afs_fs_cursor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_fs_cursor*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %3, align 8
  %4 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %3, align 8
  %5 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AFS_FS_CURSOR_INTR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = call i32 @msleep_interruptible(i32 1000)
  %12 = load i32, i32* @current, align 4
  %13 = call i64 @signal_pending(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32, i32* @ERESTARTSYS, align 4
  %17 = sub nsw i32 0, %16
  %18 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %3, align 8
  %19 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %24

20:                                               ; preds = %10
  br label %23

21:                                               ; preds = %1
  %22 = call i32 @msleep(i32 1000)
  br label %23

23:                                               ; preds = %21, %20
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
