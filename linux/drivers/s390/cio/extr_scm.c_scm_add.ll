; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_scm.c_scm_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_scm.c_scm_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_scm_info = type { i32, i32, %struct.sale* }
%struct.sale = type { i32 }
%struct.scm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chsc_scm_info*, i64)* @scm_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scm_add(%struct.chsc_scm_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chsc_scm_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sale*, align 8
  %7 = alloca %struct.sale*, align 8
  %8 = alloca %struct.scm_device*, align 8
  %9 = alloca i32, align 4
  store %struct.chsc_scm_info* %0, %struct.chsc_scm_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %4, align 8
  %11 = getelementptr inbounds %struct.chsc_scm_info, %struct.chsc_scm_info* %10, i32 0, i32 2
  %12 = load %struct.sale*, %struct.sale** %11, align 8
  store %struct.sale* %12, %struct.sale** %7, align 8
  %13 = load %struct.sale*, %struct.sale** %7, align 8
  store %struct.sale* %13, %struct.sale** %6, align 8
  br label %14

14:                                               ; preds = %61, %2
  %15 = load %struct.sale*, %struct.sale** %6, align 8
  %16 = load %struct.sale*, %struct.sale** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.sale, %struct.sale* %16, i64 %17
  %19 = icmp ult %struct.sale* %15, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %14
  %21 = load %struct.sale*, %struct.sale** %6, align 8
  %22 = call %struct.scm_device* @scmdev_find(%struct.sale* %21)
  store %struct.scm_device* %22, %struct.scm_device** %8, align 8
  %23 = load %struct.scm_device*, %struct.scm_device** %8, align 8
  %24 = icmp ne %struct.scm_device* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.scm_device*, %struct.scm_device** %8, align 8
  %27 = load %struct.sale*, %struct.sale** %6, align 8
  %28 = call i32 @scmdev_update(%struct.scm_device* %26, %struct.sale* %27)
  %29 = load %struct.scm_device*, %struct.scm_device** %8, align 8
  %30 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %29, i32 0, i32 0
  %31 = call i32 @put_device(i32* %30)
  br label %61

32:                                               ; preds = %20
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.scm_device* @kzalloc(i32 4, i32 %33)
  store %struct.scm_device* %34, %struct.scm_device** %8, align 8
  %35 = load %struct.scm_device*, %struct.scm_device** %8, align 8
  %36 = icmp ne %struct.scm_device* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %32
  %41 = load %struct.scm_device*, %struct.scm_device** %8, align 8
  %42 = load %struct.sale*, %struct.sale** %6, align 8
  %43 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %4, align 8
  %44 = getelementptr inbounds %struct.chsc_scm_info, %struct.chsc_scm_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %4, align 8
  %47 = getelementptr inbounds %struct.chsc_scm_info, %struct.chsc_scm_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @scmdev_setup(%struct.scm_device* %41, %struct.sale* %42, i32 %45, i32 %48)
  %50 = load %struct.scm_device*, %struct.scm_device** %8, align 8
  %51 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %50, i32 0, i32 0
  %52 = call i32 @device_register(i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct.scm_device*, %struct.scm_device** %8, align 8
  %57 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %56, i32 0, i32 0
  %58 = call i32 @put_device(i32* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60, %25
  %62 = load %struct.sale*, %struct.sale** %6, align 8
  %63 = getelementptr inbounds %struct.sale, %struct.sale* %62, i32 1
  store %struct.sale* %63, %struct.sale** %6, align 8
  br label %14

64:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %55, %37
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.scm_device* @scmdev_find(%struct.sale*) #1

declare dso_local i32 @scmdev_update(%struct.scm_device*, %struct.sale*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local %struct.scm_device* @kzalloc(i32, i32) #1

declare dso_local i32 @scmdev_setup(%struct.scm_device*, %struct.sale*, i32, i32) #1

declare dso_local i32 @device_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
