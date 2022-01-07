; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_register_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_register_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@ctrl_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SLIM_MIN_CLK_GEAR = common dso_local global i64 0, align 8
@SLIM_MAX_CLK_GEAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Bus [%s] registered:dev:%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slim_register_controller(%struct.slim_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slim_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.slim_controller* %0, %struct.slim_controller** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @ida_simple_get(i32* @ctrl_ida, i32 0, i32 0, i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %65

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %14 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %16 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = load i64, i64* @SLIM_MIN_CLK_GEAR, align 8
  %21 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %22 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %21, i32 0, i32 9
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %19, %11
  %24 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %25 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @SLIM_MAX_CLK_GEAR, align 8
  %30 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %31 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %30, i32 0, i32 8
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %34 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %33, i32 0, i32 7
  %35 = call i32 @ida_init(i32* %34)
  %36 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %37 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %36, i32 0, i32 6
  %38 = call i32 @idr_init(i32* %37)
  %39 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %40 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %39, i32 0, i32 5
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %43 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %47 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @init_completion(i32* %48)
  %50 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %51 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %50, i32 0, i32 3
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %54 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %57 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %60 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %64 = call i32 @of_register_slim_devices(%struct.slim_controller* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %32, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @of_register_slim_devices(%struct.slim_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
