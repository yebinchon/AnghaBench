; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@vmlogrdr_cdev = common dso_local global i32* null, align 8
@MAXMINOR = common dso_local global i32 0, align 4
@sys_ser = common dso_local global %struct.TYPE_3__* null, align 8
@vmlogrdr_major = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vmlogrdr_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmlogrdr_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @vmlogrdr_cdev, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @vmlogrdr_cdev, align 8
  %6 = call i32 @cdev_del(i32* %5)
  store i32* null, i32** @vmlogrdr_cdev, align 8
  br label %7

7:                                                ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %25, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @MAXMINOR, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sys_ser, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = call i32 @vmlogrdr_unregister_device(%struct.TYPE_3__* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sys_ser, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @free_page(i64 %23)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %8

28:                                               ; preds = %8
  %29 = call i32 (...) @vmlogrdr_unregister_driver()
  %30 = load i64, i64* @vmlogrdr_major, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* @vmlogrdr_major, align 8
  %34 = call i32 @MKDEV(i64 %33, i32 0)
  %35 = load i32, i32* @MAXMINOR, align 4
  %36 = call i32 @unregister_chrdev_region(i32 %34, i32 %35)
  store i64 0, i64* @vmlogrdr_major, align 8
  br label %37

37:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @vmlogrdr_unregister_device(%struct.TYPE_3__*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @vmlogrdr_unregister_driver(...) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @MKDEV(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
