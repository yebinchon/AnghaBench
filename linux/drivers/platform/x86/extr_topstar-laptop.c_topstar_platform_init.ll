; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_topstar-laptop.c_topstar_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_topstar-laptop.c_topstar_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.topstar_laptop = type { i32 }

@TOPSTAR_LAPTOP_CLASS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.topstar_laptop*)* @topstar_platform_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @topstar_platform_init(%struct.topstar_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.topstar_laptop*, align 8
  %4 = alloca i32, align 4
  store %struct.topstar_laptop* %0, %struct.topstar_laptop** %3, align 8
  %5 = load i32, i32* @TOPSTAR_LAPTOP_CLASS, align 4
  %6 = call i32 @platform_device_alloc(i32 %5, i32 -1)
  %7 = load %struct.topstar_laptop*, %struct.topstar_laptop** %3, align 8
  %8 = getelementptr inbounds %struct.topstar_laptop, %struct.topstar_laptop* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.topstar_laptop*, %struct.topstar_laptop** %3, align 8
  %10 = getelementptr inbounds %struct.topstar_laptop, %struct.topstar_laptop* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.topstar_laptop*, %struct.topstar_laptop** %3, align 8
  %18 = getelementptr inbounds %struct.topstar_laptop, %struct.topstar_laptop* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.topstar_laptop*, %struct.topstar_laptop** %3, align 8
  %21 = call i32 @platform_set_drvdata(i32 %19, %struct.topstar_laptop* %20)
  %22 = load %struct.topstar_laptop*, %struct.topstar_laptop** %3, align 8
  %23 = getelementptr inbounds %struct.topstar_laptop, %struct.topstar_laptop* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @platform_device_add(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %36

30:                                               ; preds = %28
  %31 = load %struct.topstar_laptop*, %struct.topstar_laptop** %3, align 8
  %32 = getelementptr inbounds %struct.topstar_laptop, %struct.topstar_laptop* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @platform_device_put(i32 %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %29, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(i32, %struct.topstar_laptop*) #1

declare dso_local i32 @platform_device_add(i32) #1

declare dso_local i32 @platform_device_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
