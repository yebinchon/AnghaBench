; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_of_clock_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_of_clock_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7192_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@AD7192_CLK_INT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"adi,int-clock-output-enable\00", align 1
@AD7192_CLK_INT_CO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"adi,clock-xtal\00", align 1
@AD7192_CLK_EXT_MCLK1_2 = common dso_local global i32 0, align 4
@AD7192_CLK_EXT_MCLK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7192_state*)* @ad7192_of_clock_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_of_clock_select(%struct.ad7192_state* %0) #0 {
  %2 = alloca %struct.ad7192_state*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.ad7192_state* %0, %struct.ad7192_state** %2, align 8
  %5 = load %struct.ad7192_state*, %struct.ad7192_state** %2, align 8
  %6 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %3, align 8
  %12 = load i32, i32* @AD7192_CLK_INT, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ad7192_state*, %struct.ad7192_state** %2, align 8
  %14 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @PTR_ERR(i32 %15)
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %3, align 8
  %22 = call i64 @of_property_read_bool(%struct.device_node* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @AD7192_CLK_INT_CO, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %20
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %3, align 8
  %29 = call i64 @of_property_read_bool(%struct.device_node* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @AD7192_CLK_EXT_MCLK1_2, align 4
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @AD7192_CLK_EXT_MCLK2, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
