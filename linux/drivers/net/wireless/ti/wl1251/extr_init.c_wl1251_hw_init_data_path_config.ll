; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_data_path_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_data_path_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*)* @wl1251_hw_init_data_path_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_hw_init_data_path_config(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32* @kzalloc(i32 4, i32 %5)
  %7 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %8 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %7, i32 0, i32 0
  store i32* %6, i32** %8, align 8
  %9 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %10 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %18 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %19 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @wl1251_acx_data_path_params(%struct.wl1251* %17, i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %26 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %30 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %24, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_acx_data_path_params(%struct.wl1251*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
