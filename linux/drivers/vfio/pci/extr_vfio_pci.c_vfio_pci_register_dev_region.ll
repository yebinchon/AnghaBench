; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_register_dev_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_register_dev_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, %struct.vfio_pci_region* }
%struct.vfio_pci_region = type { i32, i32, i64, i8*, i32, %struct.vfio_pci_regops* }
%struct.vfio_pci_regops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_pci_register_dev_region(%struct.vfio_pci_device* %0, i32 %1, i32 %2, %struct.vfio_pci_regops* %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfio_pci_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vfio_pci_regops*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.vfio_pci_region*, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.vfio_pci_regops* %3, %struct.vfio_pci_regops** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %17 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %18 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %17, i32 0, i32 1
  %19 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %18, align 8
  %20 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %21 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 40
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.vfio_pci_region* @krealloc(%struct.vfio_pci_region* %19, i32 %26, i32 %27)
  store %struct.vfio_pci_region* %28, %struct.vfio_pci_region** %16, align 8
  %29 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %16, align 8
  %30 = icmp ne %struct.vfio_pci_region* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %102

34:                                               ; preds = %7
  %35 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %16, align 8
  %36 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %37 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %36, i32 0, i32 1
  store %struct.vfio_pci_region* %35, %struct.vfio_pci_region** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %40 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %39, i32 0, i32 1
  %41 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %40, align 8
  %42 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %43 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %41, i64 %45
  %47 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %46, i32 0, i32 0
  store i32 %38, i32* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %50 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %49, i32 0, i32 1
  %51 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %50, align 8
  %52 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %53 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %51, i64 %55
  %57 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %56, i32 0, i32 1
  store i32 %48, i32* %57, align 4
  %58 = load %struct.vfio_pci_regops*, %struct.vfio_pci_regops** %12, align 8
  %59 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %60 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %59, i32 0, i32 1
  %61 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %60, align 8
  %62 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %63 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %61, i64 %65
  %67 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %66, i32 0, i32 5
  store %struct.vfio_pci_regops* %58, %struct.vfio_pci_regops** %67, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %70 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %69, i32 0, i32 1
  %71 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %70, align 8
  %72 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %73 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %71, i64 %75
  %77 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %76, i32 0, i32 2
  store i64 %68, i64* %77, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %80 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %79, i32 0, i32 1
  %81 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %80, align 8
  %82 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %83 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %81, i64 %85
  %87 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %86, i32 0, i32 4
  store i32 %78, i32* %87, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %90 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %89, i32 0, i32 1
  %91 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %90, align 8
  %92 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %93 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %91, i64 %95
  %97 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %96, i32 0, i32 3
  store i8* %88, i8** %97, align 8
  %98 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %9, align 8
  %99 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %34, %31
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local %struct.vfio_pci_region* @krealloc(%struct.vfio_pci_region*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
