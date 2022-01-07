; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ion\00", align 1
@ion_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ion: failed to register misc device.\0A\00", align 1
@internal_dev = common dso_local global %struct.ion_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ion_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ion_device_create() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ion_device*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.ion_device* @kzalloc(i32 48, i32 %4)
  store %struct.ion_device* %5, %struct.ion_device** %2, align 8
  %6 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %7 = icmp ne %struct.ion_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %46

11:                                               ; preds = %0
  %12 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %13 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %14 = getelementptr inbounds %struct.ion_device, %struct.ion_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 8
  %16 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %17 = getelementptr inbounds %struct.ion_device, %struct.ion_device* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %20 = getelementptr inbounds %struct.ion_device, %struct.ion_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32* @ion_fops, i32** %21, align 8
  %22 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %23 = getelementptr inbounds %struct.ion_device, %struct.ion_device* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %26 = getelementptr inbounds %struct.ion_device, %struct.ion_device* %25, i32 0, i32 3
  %27 = call i32 @misc_register(%struct.TYPE_2__* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %11
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %33 = call i32 @kfree(%struct.ion_device* %32)
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %1, align 4
  br label %46

35:                                               ; preds = %11
  %36 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  %37 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %38 = getelementptr inbounds %struct.ion_device, %struct.ion_device* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %40 = getelementptr inbounds %struct.ion_device, %struct.ion_device* %39, i32 0, i32 1
  %41 = call i32 @init_rwsem(i32* %40)
  %42 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  %43 = getelementptr inbounds %struct.ion_device, %struct.ion_device* %42, i32 0, i32 0
  %44 = call i32 @plist_head_init(i32* %43)
  %45 = load %struct.ion_device*, %struct.ion_device** %2, align 8
  store %struct.ion_device* %45, %struct.ion_device** @internal_dev, align 8
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %35, %30, %8
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local %struct.ion_device* @kzalloc(i32, i32) #1

declare dso_local i32 @misc_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.ion_device*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @plist_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
