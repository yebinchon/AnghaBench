; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_major_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_major_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32, i32*, i32 }

@uio_major_init.name = internal constant [4 x i8] c"uio\00", align 1
@UIO_MAX_DEVICES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@uio_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@uio_major = common dso_local global i32 0, align 4
@uio_cdev = common dso_local global %struct.cdev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @uio_major_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_major_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cdev* null, %struct.cdev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @UIO_MAX_DEVICES, align 4
  %6 = call i32 @alloc_chrdev_region(i32* %3, i32 0, i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @uio_major_init.name, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %45

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  %13 = call %struct.cdev* (...) @cdev_alloc()
  store %struct.cdev* %13, %struct.cdev** %2, align 8
  %14 = load %struct.cdev*, %struct.cdev** %2, align 8
  %15 = icmp ne %struct.cdev* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %41

17:                                               ; preds = %10
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = load %struct.cdev*, %struct.cdev** %2, align 8
  %20 = getelementptr inbounds %struct.cdev, %struct.cdev* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.cdev*, %struct.cdev** %2, align 8
  %22 = getelementptr inbounds %struct.cdev, %struct.cdev* %21, i32 0, i32 1
  store i32* @uio_fops, i32** %22, align 8
  %23 = load %struct.cdev*, %struct.cdev** %2, align 8
  %24 = getelementptr inbounds %struct.cdev, %struct.cdev* %23, i32 0, i32 0
  %25 = call i32 @kobject_set_name(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @uio_major_init.name, i64 0, i64 0))
  %26 = load %struct.cdev*, %struct.cdev** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @UIO_MAX_DEVICES, align 4
  %29 = call i32 @cdev_add(%struct.cdev* %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %37

33:                                               ; preds = %17
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @MAJOR(i32 %34)
  store i32 %35, i32* @uio_major, align 4
  %36 = load %struct.cdev*, %struct.cdev** %2, align 8
  store %struct.cdev* %36, %struct.cdev** @uio_cdev, align 8
  store i32 0, i32* %1, align 4
  br label %47

37:                                               ; preds = %32
  %38 = load %struct.cdev*, %struct.cdev** %2, align 8
  %39 = getelementptr inbounds %struct.cdev, %struct.cdev* %38, i32 0, i32 0
  %40 = call i32 @kobject_put(i32* %39)
  br label %41

41:                                               ; preds = %37, %16
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @UIO_MAX_DEVICES, align 4
  %44 = call i32 @unregister_chrdev_region(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %9
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %45, %33
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local %struct.cdev* @cdev_alloc(...) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i8*) #1

declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
