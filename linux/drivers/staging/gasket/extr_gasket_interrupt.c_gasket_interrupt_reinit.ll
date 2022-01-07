; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Attempted to reinit uninitialized interrupt data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Couldn't reinit interrupts: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_interrupt_reinit(%struct.gasket_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  %5 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %6 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %11 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %18 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %37 [
    i32 128, label %22
  ]

22:                                               ; preds = %16
  %23 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %24 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call i32 @gasket_interrupt_msix_cleanup(%struct.TYPE_3__* %25)
  %27 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %28 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @gasket_interrupt_msix_init(%struct.TYPE_3__* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %40

34:                                               ; preds = %22
  %35 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %36 = call i32 @force_msix_interrupt_unmasking(%struct.gasket_dev* %35)
  br label %40

37:                                               ; preds = %16
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %34, %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %45 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 0, i32* %2, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %51 = call i32 @gasket_interrupt_setup(%struct.gasket_dev* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %43, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @gasket_interrupt_msix_cleanup(%struct.TYPE_3__*) #1

declare dso_local i32 @gasket_interrupt_msix_init(%struct.TYPE_3__*) #1

declare dso_local i32 @force_msix_interrupt_unmasking(%struct.gasket_dev*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @gasket_interrupt_setup(%struct.gasket_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
