; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_driver_override_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_driver_override_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spi_device = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @driver_override_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @driver_override_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.spi_device* @to_spi_device(%struct.device* %15)
  store %struct.spi_device* %16, %struct.spi_device** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i8* @memchr(i8* %17, i8 signext 10, i64 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i8*, i8** %11, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  br label %30

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i64 [ %27, %22 ], [ %29, %28 ]
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %73

40:                                               ; preds = %30
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kstrndup(i8* %41, i64 %42, i32 %43)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* @ENOMEM, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %73

50:                                               ; preds = %40
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @device_lock(%struct.device* %51)
  %53 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %14, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i8*, i8** %13, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %67

62:                                               ; preds = %50
  %63 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  store i8* null, i8** %64, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @kfree(i8* %65)
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i32 @device_unlock(%struct.device* %68)
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @kfree(i8* %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %67, %47, %37
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
