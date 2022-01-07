; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_system_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_system_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Interrupt data is null\0A\00", align 1
@GASKET_STATUS_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Not all interrupts were configured\0A\00", align 1
@GASKET_STATUS_LAMED = common dso_local global i32 0, align 4
@GASKET_STATUS_ALIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_interrupt_system_status(%struct.gasket_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_dev*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  %4 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %5 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GASKET_STATUS_DEAD, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %16 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %21 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %28 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @GASKET_STATUS_LAMED, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %14
  %33 = load i32, i32* @GASKET_STATUS_ALIVE, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %26, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
