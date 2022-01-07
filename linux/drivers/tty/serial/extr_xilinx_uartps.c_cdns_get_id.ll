; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@bitmap_lock = common dso_local global i32 0, align 4
@alias_bitmap_initialized = common dso_local global i32 0, align 4
@cdns_uart_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@alias_bitmap = common dso_local global i32 0, align 4
@MAX_UART_INSTANCES = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@bitmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Alias bitmap: %*pb\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"No serial alias passed. Using the first free id\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Checking id %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"No free ID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"The empty id is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Selected ID %d allocation passed\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Selected ID %d allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_get_id(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = call i32 @mutex_lock(i32* @bitmap_lock)
  %7 = load i32, i32* @alias_bitmap_initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @cdns_uart_of_match, align 4
  %11 = load i32, i32* @alias_bitmap, align 4
  %12 = load i32, i32* @MAX_UART_INSTANCES, align 4
  %13 = call i32 @of_alias_get_alias_list(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EOVERFLOW, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @mutex_unlock(i32* @bitmap_lock)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %16, %9
  %25 = load i32, i32* @alias_bitmap_initialized, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @alias_bitmap_initialized, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i32, i32* @bitmap, align 4
  %29 = load i32, i32* @bitmap, align 4
  %30 = load i32, i32* @alias_bitmap, align 4
  %31 = load i32, i32* @MAX_UART_INSTANCES, align 4
  %32 = call i32 @bitmap_or(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @MAX_UART_INSTANCES, align 4
  %36 = load i32, i32* @bitmap, align 4
  %37 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @of_alias_get_id(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %90

45:                                               ; preds = %27
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_warn(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %82, %45
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @dev_info(%struct.TYPE_5__* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @bitmap, align 4
  %55 = load i32, i32* @MAX_UART_INSTANCES, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @find_next_zero_bit(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @MAX_UART_INSTANCES, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(%struct.TYPE_5__* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 @mutex_unlock(i32* @bitmap_lock)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %93

68:                                               ; preds = %49
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_5__* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @bitmap, align 4
  %75 = call i32 @test_and_set_bit(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_5__* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  br label %89

82:                                               ; preds = %68
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_5__* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %49

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %27
  %91 = call i32 @mutex_unlock(i32* @bitmap_lock)
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %61, %21
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @of_alias_get_alias_list(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32, ...) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
