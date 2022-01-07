; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { %struct.raw3270* }
%struct.ccw_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raw3270* (%struct.ccw_device*)* @raw3270_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raw3270* @raw3270_create_device(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.raw3270*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.raw3270*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @GFP_DMA, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.raw3270* @kzalloc(i32 8, i32 %9)
  store %struct.raw3270* %10, %struct.raw3270** %4, align 8
  %11 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %12 = icmp ne %struct.raw3270* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.raw3270* @ERR_PTR(i32 %15)
  store %struct.raw3270* %16, %struct.raw3270** %2, align 8
  br label %49

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 256, i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %24 = call i32 @kfree(%struct.raw3270* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.raw3270* @ERR_PTR(i32 %26)
  store %struct.raw3270* %27, %struct.raw3270** %2, align 8
  br label %49

28:                                               ; preds = %17
  %29 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %30 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @raw3270_setup_device(%struct.ccw_device* %29, %struct.raw3270* %30, i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %37 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %36, i32 0, i32 0
  %38 = load %struct.raw3270*, %struct.raw3270** %37, align 8
  %39 = call i32 @kfree(%struct.raw3270* %38)
  %40 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  %41 = call i32 @kfree(%struct.raw3270* %40)
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.raw3270* @ERR_PTR(i32 %42)
  store %struct.raw3270* %43, %struct.raw3270** %4, align 8
  br label %44

44:                                               ; preds = %35, %28
  %45 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 0
  %47 = call i32 @get_device(i32* %46)
  %48 = load %struct.raw3270*, %struct.raw3270** %4, align 8
  store %struct.raw3270* %48, %struct.raw3270** %2, align 8
  br label %49

49:                                               ; preds = %44, %22, %13
  %50 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  ret %struct.raw3270* %50
}

declare dso_local %struct.raw3270* @kzalloc(i32, i32) #1

declare dso_local %struct.raw3270* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.raw3270*) #1

declare dso_local i32 @raw3270_setup_device(%struct.ccw_device*, %struct.raw3270*, i8*) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
