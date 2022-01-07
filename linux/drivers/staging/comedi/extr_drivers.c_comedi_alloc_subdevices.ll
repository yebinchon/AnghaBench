; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_alloc_subdevices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_alloc_subdevices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, %struct.comedi_device* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.comedi_subdevice* @kcalloc(i32 %14, i32 24, i32 %15)
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %6, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %18 = icmp ne %struct.comedi_subdevice* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %13
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 1
  store %struct.comedi_subdevice* %23, %struct.comedi_subdevice** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %54, %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 1
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i64 %38
  store %struct.comedi_subdevice* %39, %struct.comedi_subdevice** %6, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 4
  store %struct.comedi_device* %40, %struct.comedi_device** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @DMA_NONE, align 4
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 2
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 1
  store i32 -1, i32* %53, align 4
  br label %54

54:                                               ; preds = %33
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %29

57:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %19, %10
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.comedi_subdevice* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
