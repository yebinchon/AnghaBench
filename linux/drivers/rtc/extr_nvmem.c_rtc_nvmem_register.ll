; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_nvmem.c_rtc_nvmem_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_nvmem.c_rtc_nvmem_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nvmem_config = type { i32, i32, i32 }
%struct.nvmem_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_nvmem_register(%struct.rtc_device* %0, %struct.nvmem_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.nvmem_config*, align 8
  %6 = alloca %struct.nvmem_device*, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.nvmem_config* %1, %struct.nvmem_config** %5, align 8
  %7 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %8 = icmp ne %struct.nvmem_config* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %23 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %29 = call %struct.nvmem_device* @devm_nvmem_register(i32 %27, %struct.nvmem_config* %28)
  store %struct.nvmem_device* %29, %struct.nvmem_device** %6, align 8
  %30 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %31 = call i64 @IS_ERR(%struct.nvmem_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %12
  %34 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.nvmem_device* %34)
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %12
  %37 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %43 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %44 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %45 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rtc_nvram_register(%struct.rtc_device* %42, %struct.nvmem_device* %43, i32 %46)
  br label %48

48:                                               ; preds = %41, %36
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %33, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.nvmem_device* @devm_nvmem_register(i32, %struct.nvmem_config*) #1

declare dso_local i64 @IS_ERR(%struct.nvmem_device*) #1

declare dso_local i32 @PTR_ERR(%struct.nvmem_device*) #1

declare dso_local i32 @rtc_nvram_register(%struct.rtc_device*, %struct.nvmem_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
