; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.subchannel = type { i64, i64 }
%struct.css_driver = type { %struct.css_device_id* }
%struct.css_device_id = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @css_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.subchannel*, align 8
  %7 = alloca %struct.css_driver*, align 8
  %8 = alloca %struct.css_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.subchannel* @to_subchannel(%struct.device* %9)
  store %struct.subchannel* %10, %struct.subchannel** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.css_driver* @to_cssdriver(%struct.device_driver* %11)
  store %struct.css_driver* %12, %struct.css_driver** %7, align 8
  %13 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %22 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcmp(i64 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %50

27:                                               ; preds = %17, %2
  %28 = load %struct.css_driver*, %struct.css_driver** %7, align 8
  %29 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %28, i32 0, i32 0
  %30 = load %struct.css_device_id*, %struct.css_device_id** %29, align 8
  store %struct.css_device_id* %30, %struct.css_device_id** %8, align 8
  br label %31

31:                                               ; preds = %46, %27
  %32 = load %struct.css_device_id*, %struct.css_device_id** %8, align 8
  %33 = getelementptr inbounds %struct.css_device_id, %struct.css_device_id* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %38 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.css_device_id*, %struct.css_device_id** %8, align 8
  %41 = getelementptr inbounds %struct.css_device_id, %struct.css_device_id* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %50

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.css_device_id*, %struct.css_device_id** %8, align 8
  %48 = getelementptr inbounds %struct.css_device_id, %struct.css_device_id* %47, i32 1
  store %struct.css_device_id* %48, %struct.css_device_id** %8, align 8
  br label %31

49:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %26
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

declare dso_local %struct.css_driver* @to_cssdriver(%struct.device_driver*) #1

declare dso_local i64 @strcmp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
