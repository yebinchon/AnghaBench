; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c__ffs_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c__ffs_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_dev = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ffs_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ffs_dev* ()* @_ffs_alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ffs_dev* @_ffs_alloc_dev() #0 {
  %1 = alloca %struct.ffs_dev*, align 8
  %2 = alloca %struct.ffs_dev*, align 8
  %3 = alloca i32, align 4
  %4 = call i64 (...) @_ffs_get_single_dev()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  %9 = call %struct.ffs_dev* @ERR_PTR(i32 %8)
  store %struct.ffs_dev* %9, %struct.ffs_dev** %1, align 8
  br label %37

10:                                               ; preds = %0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ffs_dev* @kzalloc(i32 4, i32 %11)
  store %struct.ffs_dev* %12, %struct.ffs_dev** %2, align 8
  %13 = load %struct.ffs_dev*, %struct.ffs_dev** %2, align 8
  %14 = icmp ne %struct.ffs_dev* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ffs_dev* @ERR_PTR(i32 %17)
  store %struct.ffs_dev* %18, %struct.ffs_dev** %1, align 8
  br label %37

19:                                               ; preds = %10
  %20 = call i64 @list_empty(i32* @ffs_devices)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = call i32 (...) @functionfs_init()
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.ffs_dev*, %struct.ffs_dev** %2, align 8
  %28 = call i32 @kfree(%struct.ffs_dev* %27)
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.ffs_dev* @ERR_PTR(i32 %29)
  store %struct.ffs_dev* %30, %struct.ffs_dev** %1, align 8
  br label %37

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.ffs_dev*, %struct.ffs_dev** %2, align 8
  %34 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %33, i32 0, i32 0
  %35 = call i32 @list_add(i32* %34, i32* @ffs_devices)
  %36 = load %struct.ffs_dev*, %struct.ffs_dev** %2, align 8
  store %struct.ffs_dev* %36, %struct.ffs_dev** %1, align 8
  br label %37

37:                                               ; preds = %32, %26, %15, %6
  %38 = load %struct.ffs_dev*, %struct.ffs_dev** %1, align 8
  ret %struct.ffs_dev* %38
}

declare dso_local i64 @_ffs_get_single_dev(...) #1

declare dso_local %struct.ffs_dev* @ERR_PTR(i32) #1

declare dso_local %struct.ffs_dev* @kzalloc(i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @functionfs_init(...) #1

declare dso_local i32 @kfree(%struct.ffs_dev*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
