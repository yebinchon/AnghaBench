; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_reset_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_reset_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i64, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { i32 (%struct.gasket_dev.0*)*, i32 }
%struct.gasket_dev.0 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"Device reset cb returned %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to reinit interrupts: %d.\0A\00", align 1
@GASKET_STATUS_DEAD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Device reported as dead.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_reset_nolock(%struct.gasket_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_driver_desc*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  %7 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %10, align 8
  store %struct.gasket_driver_desc* %11, %struct.gasket_driver_desc** %6, align 8
  %12 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %13 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %12, i32 0, i32 0
  %14 = load i32 (%struct.gasket_dev.0*)*, i32 (%struct.gasket_dev.0*)** %13, align 8
  %15 = icmp ne i32 (%struct.gasket_dev.0*)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

17:                                               ; preds = %1
  %18 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %19 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %18, i32 0, i32 0
  %20 = load i32 (%struct.gasket_dev.0*)*, i32 (%struct.gasket_dev.0*)** %19, align 8
  %21 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %22 = bitcast %struct.gasket_dev* %21 to %struct.gasket_dev.0*
  %23 = call i32 %20(%struct.gasket_dev.0* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %28 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32, i8*, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %82

33:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %37 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %42 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gasket_page_table_reset(i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %54 = call i32 @gasket_interrupt_reinit(%struct.gasket_dev* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %59 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i32, i8*, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %82

64:                                               ; preds = %52
  %65 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %66 = call i64 @gasket_get_hw_status(%struct.gasket_dev* %65)
  %67 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %68 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %70 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @GASKET_STATUS_DEAD, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %76 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %74, %57, %26, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @gasket_page_table_reset(i32) #1

declare dso_local i32 @gasket_interrupt_reinit(%struct.gasket_dev*) #1

declare dso_local i64 @gasket_get_hw_status(%struct.gasket_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
