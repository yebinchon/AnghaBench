; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_device_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_device_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_device = type { i32 }
%struct.device = type { i64 }

@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvmem_device* @nvmem_device_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.nvmem_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmem_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.nvmem_device* @of_nvmem_device_get(i64 %14, i8* %15)
  store %struct.nvmem_device* %16, %struct.nvmem_device** %6, align 8
  %17 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %18 = call i32 @IS_ERR(%struct.nvmem_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.nvmem_device* %21)
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %11
  %27 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  store %struct.nvmem_device* %27, %struct.nvmem_device** %3, align 8
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i8*, i8** %5, align 8
  %31 = call %struct.nvmem_device* @__nvmem_device_get(i32* null, i8* %30)
  store %struct.nvmem_device* %31, %struct.nvmem_device** %3, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.nvmem_device*, %struct.nvmem_device** %3, align 8
  ret %struct.nvmem_device* %33
}

declare dso_local %struct.nvmem_device* @of_nvmem_device_get(i64, i8*) #1

declare dso_local i32 @IS_ERR(%struct.nvmem_device*) #1

declare dso_local i32 @PTR_ERR(%struct.nvmem_device*) #1

declare dso_local %struct.nvmem_device* @__nvmem_device_get(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
