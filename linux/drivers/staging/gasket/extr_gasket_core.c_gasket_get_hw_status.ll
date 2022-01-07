; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_get_hw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_get_hw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { i32, i32 }

@GASKET_STATUS_ALIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Hardware reported status %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Interrupt system reported status %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Page table %d reported status %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_dev*)* @gasket_get_hw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_get_hw_status(%struct.gasket_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_driver_desc*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  %7 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %10, align 8
  store %struct.gasket_driver_desc* %11, %struct.gasket_driver_desc** %6, align 8
  %12 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %13 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %14 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gasket_check_and_invoke_callback_nolock(%struct.gasket_dev* %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GASKET_STATUS_ALIVE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %22 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %1
  %28 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %29 = call i32 @gasket_interrupt_system_status(%struct.gasket_dev* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @GASKET_STATUS_ALIVE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %35 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %73

40:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %68, %40
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %44 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %49 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @gasket_page_table_system_status(i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @GASKET_STATUS_ALIVE, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %61 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %73

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %41

71:                                               ; preds = %41
  %72 = load i32, i32* @GASKET_STATUS_ALIVE, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %59, %33, %20
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @gasket_check_and_invoke_callback_nolock(%struct.gasket_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @gasket_interrupt_system_status(%struct.gasket_dev*) #1

declare dso_local i32 @gasket_page_table_system_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
