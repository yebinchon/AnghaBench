; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vhost_test* }
%struct.vhost_test = type { %struct.vhost_virtqueue*, %struct.vhost_dev }
%struct.vhost_virtqueue = type { i32 }
%struct.vhost_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VHOST_TEST_VQ_MAX = common dso_local global i32 0, align 4
@VHOST_TEST_VQ = common dso_local global i64 0, align 8
@handle_vq_kick = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i32 0, align 4
@VHOST_TEST_PKT_WEIGHT = common dso_local global i32 0, align 4
@VHOST_TEST_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vhost_test_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_test_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vhost_test*, align 8
  %7 = alloca %struct.vhost_dev*, align 8
  %8 = alloca %struct.vhost_virtqueue**, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vhost_test* @kmalloc(i32 16, i32 %9)
  store %struct.vhost_test* %10, %struct.vhost_test** %6, align 8
  %11 = load %struct.vhost_test*, %struct.vhost_test** %6, align 8
  %12 = icmp ne %struct.vhost_test* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load i32, i32* @VHOST_TEST_VQ_MAX, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.vhost_virtqueue** @kmalloc_array(i32 %17, i32 8, i32 %18)
  store %struct.vhost_virtqueue** %19, %struct.vhost_virtqueue*** %8, align 8
  %20 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %8, align 8
  %21 = icmp ne %struct.vhost_virtqueue** %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.vhost_test*, %struct.vhost_test** %6, align 8
  %24 = call i32 @kfree(%struct.vhost_test* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %16
  %28 = load %struct.vhost_test*, %struct.vhost_test** %6, align 8
  %29 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %28, i32 0, i32 1
  store %struct.vhost_dev* %29, %struct.vhost_dev** %7, align 8
  %30 = load %struct.vhost_test*, %struct.vhost_test** %6, align 8
  %31 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %30, i32 0, i32 0
  %32 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %31, align 8
  %33 = load i64, i64* @VHOST_TEST_VQ, align 8
  %34 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %32, i64 %33
  %35 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %8, align 8
  %36 = load i64, i64* @VHOST_TEST_VQ, align 8
  %37 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %35, i64 %36
  store %struct.vhost_virtqueue* %34, %struct.vhost_virtqueue** %37, align 8
  %38 = load i32, i32* @handle_vq_kick, align 4
  %39 = load %struct.vhost_test*, %struct.vhost_test** %6, align 8
  %40 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %39, i32 0, i32 0
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %40, align 8
  %42 = load i64, i64* @VHOST_TEST_VQ, align 8
  %43 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %41, i64 %42
  %44 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 4
  %45 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %46 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %8, align 8
  %47 = load i32, i32* @VHOST_TEST_VQ_MAX, align 4
  %48 = load i32, i32* @UIO_MAXIOV, align 4
  %49 = load i32, i32* @VHOST_TEST_PKT_WEIGHT, align 4
  %50 = load i32, i32* @VHOST_TEST_WEIGHT, align 4
  %51 = call i32 @vhost_dev_init(%struct.vhost_dev* %45, %struct.vhost_virtqueue** %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.vhost_test*, %struct.vhost_test** %6, align 8
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  store %struct.vhost_test* %52, %struct.vhost_test** %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %27, %22, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.vhost_test* @kmalloc(i32, i32) #1

declare dso_local %struct.vhost_virtqueue** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.vhost_test*) #1

declare dso_local i32 @vhost_dev_init(%struct.vhost_dev*, %struct.vhost_virtqueue**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
