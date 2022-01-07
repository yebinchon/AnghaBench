; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.pi433_instance* }
%struct.pi433_instance = type { %struct.TYPE_2__, %struct.pi433_device* }
%struct.TYPE_2__ = type { i32 }
%struct.pi433_device = type { i32 }

@minor_lock = common dso_local global i32 0, align 4
@pi433_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"device: minor %d unknown.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pi433_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi433_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.pi433_device*, align 8
  %7 = alloca %struct.pi433_instance*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = call i32 @mutex_lock(i32* @minor_lock)
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  %11 = call %struct.pi433_device* @idr_find(i32* @pi433_idr, i32 %10)
  store %struct.pi433_device* %11, %struct.pi433_device** %6, align 8
  %12 = call i32 @mutex_unlock(i32* @minor_lock)
  %13 = load %struct.pi433_device*, %struct.pi433_device** %6, align 8
  %14 = icmp ne %struct.pi433_device* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @iminor(%struct.inode* %16)
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.pi433_instance* @kzalloc(i32 16, i32 %22)
  store %struct.pi433_instance* %23, %struct.pi433_instance** %7, align 8
  %24 = load %struct.pi433_instance*, %struct.pi433_instance** %7, align 8
  %25 = icmp ne %struct.pi433_instance* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %21
  %30 = load %struct.pi433_device*, %struct.pi433_device** %6, align 8
  %31 = load %struct.pi433_instance*, %struct.pi433_instance** %7, align 8
  %32 = getelementptr inbounds %struct.pi433_instance, %struct.pi433_instance* %31, i32 0, i32 1
  store %struct.pi433_device* %30, %struct.pi433_device** %32, align 8
  %33 = load %struct.pi433_instance*, %struct.pi433_instance** %7, align 8
  %34 = getelementptr inbounds %struct.pi433_instance, %struct.pi433_instance* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 4711, i32* %35, align 8
  %36 = load %struct.pi433_instance*, %struct.pi433_instance** %7, align 8
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store %struct.pi433_instance* %36, %struct.pi433_instance** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = call i32 @stream_open(%struct.inode* %39, %struct.file* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %29, %26, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pi433_device* @idr_find(i32*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.pi433_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
