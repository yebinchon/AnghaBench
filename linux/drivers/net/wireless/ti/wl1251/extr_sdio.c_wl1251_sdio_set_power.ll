; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.sdio_func = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, i32)* @wl1251_sdio_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_sdio_set_power(%struct.wl1251* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %8 = call %struct.sdio_func* @wl_to_func(%struct.wl1251* %7)
  store %struct.sdio_func* %8, %struct.sdio_func** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %13 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @gpio_is_valid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %19 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gpio_set_value(i32 %20, i32 1)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 0
  %25 = call i32 @pm_runtime_get_sync(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %30 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_put_sync(i32* %30)
  br label %65

32:                                               ; preds = %22
  %33 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %34 = call i32 @sdio_claim_host(%struct.sdio_func* %33)
  %35 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %36 = call i32 @sdio_enable_func(%struct.sdio_func* %35)
  %37 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %38 = call i32 @sdio_release_host(%struct.sdio_func* %37)
  br label %64

39:                                               ; preds = %2
  %40 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %41 = call i32 @sdio_claim_host(%struct.sdio_func* %40)
  %42 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %43 = call i32 @sdio_disable_func(%struct.sdio_func* %42)
  %44 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %45 = call i32 @sdio_release_host(%struct.sdio_func* %44)
  %46 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %47 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %46, i32 0, i32 0
  %48 = call i32 @pm_runtime_put_sync(i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %65

52:                                               ; preds = %39
  %53 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %54 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @gpio_is_valid(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %60 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gpio_set_value(i32 %61, i32 0)
  br label %63

63:                                               ; preds = %58, %52
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %51, %28
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.sdio_func* @wl_to_func(%struct.wl1251*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
