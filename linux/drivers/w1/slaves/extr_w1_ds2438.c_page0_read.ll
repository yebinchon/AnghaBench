; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_page0_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_page0_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DS2438_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @page0_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page0_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.kobject*, %struct.kobject** %9, align 8
  %20 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %19)
  store %struct.w1_slave* %20, %struct.w1_slave** %14, align 8
  %21 = load i32, i32* @DS2438_PAGE_SIZE, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %69

29:                                               ; preds = %6
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %69

35:                                               ; preds = %29
  %36 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %37 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i64, i64* %13, align 8
  %42 = load i32, i32* @DS2438_PAGE_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @DS2438_PAGE_SIZE, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %45, %35
  %49 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %50 = call i64 @w1_ds2438_get_page(%struct.w1_slave* %49, i32 0, i32* %25)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = bitcast i32* %25 to i32**
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @memcpy(i8* %53, i32** %54, i64 %55)
  %57 = load i64, i64* %13, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %15, align 4
  br label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %64 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %69

69:                                               ; preds = %62, %32, %28
  %70 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_ds2438_get_page(%struct.w1_slave*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i32**, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
