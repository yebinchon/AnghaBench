; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_iowarrior.c_iowarrior_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_iowarrior.c_iowarrior_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.iowarrior* }
%struct.iowarrior = type { i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"minor %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @iowarrior_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iowarrior_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.iowarrior*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.iowarrior*, %struct.iowarrior** %9, align 8
  store %struct.iowarrior* %10, %struct.iowarrior** %6, align 8
  %11 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %12 = icmp ne %struct.iowarrior* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %18 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %17, i32 0, i32 7
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %22 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %26 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %29 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %36 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  br label %66

38:                                               ; preds = %16
  %39 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %40 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  store i32 0, i32* %7, align 4
  %41 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %42 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %47 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_kill_urb(i32 %48)
  %50 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %51 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %50, i32 0, i32 3
  %52 = call i32 @wake_up_interruptible(i32* %51)
  %53 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %54 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %53, i32 0, i32 2
  %55 = call i32 @wake_up_interruptible(i32* %54)
  %56 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %57 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %65

59:                                               ; preds = %38
  %60 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %61 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %64 = call i32 @iowarrior_delete(%struct.iowarrior* %63)
  br label %65

65:                                               ; preds = %59, %45
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @iowarrior_delete(%struct.iowarrior*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
