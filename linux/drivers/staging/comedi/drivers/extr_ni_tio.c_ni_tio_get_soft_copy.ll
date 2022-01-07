; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_soft_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_soft_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32, i32**, i32 }

@NITIO_NUM_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca %struct.ni_gpct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %10 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %9, i32 0, i32 1
  %11 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %10, align 8
  store %struct.ni_gpct_device* %11, %struct.ni_gpct_device** %5, align 8
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %13 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NITIO_NUM_REGS, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %21 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %26 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %25, i32 0, i32 2
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %30 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %41 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %40, i32 0, i32 2
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %24, %18, %2
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
