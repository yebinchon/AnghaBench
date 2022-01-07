; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpwd.c_cpwd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpwd.c_cpwd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpwd = type { i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@cpwd_device = common dso_local global %struct.cpwd* null, align 8
@cpwd_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cpwd_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot register IRQ %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cpwd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpwd_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cpwd*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.cpwd*, %struct.cpwd** @cpwd_device, align 8
  store %struct.cpwd* %7, %struct.cpwd** %6, align 8
  %8 = call i32 @mutex_lock(i32* @cpwd_mutex)
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  switch i32 %10, label %12 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %2, %2, %2
  br label %16

12:                                               ; preds = %2
  %13 = call i32 @mutex_unlock(i32* @cpwd_mutex)
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %11
  %17 = load %struct.cpwd*, %struct.cpwd** %6, align 8
  %18 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = load %struct.cpwd*, %struct.cpwd** %6, align 8
  %23 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = load i32, i32* @DRIVER_NAME, align 4
  %27 = load %struct.cpwd*, %struct.cpwd** %6, align 8
  %28 = call i64 @request_irq(i32 %24, i32* @cpwd_interrupt, i32 %25, i32 %26, %struct.cpwd* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.cpwd*, %struct.cpwd** %6, align 8
  %32 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @mutex_unlock(i32* @cpwd_mutex)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %21
  %39 = load %struct.cpwd*, %struct.cpwd** %6, align 8
  %40 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %16
  %42 = call i32 @mutex_unlock(i32* @cpwd_mutex)
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = call i32 @stream_open(%struct.inode* %43, %struct.file* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %30, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @request_irq(i32, i32*, i32, i32, %struct.cpwd*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
