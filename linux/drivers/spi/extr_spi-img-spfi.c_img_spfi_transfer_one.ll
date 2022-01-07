; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* }
%struct.spi_device = type opaque
%struct.spi_device.0 = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.img_spfi = type { i32 }

@SPFI_TRANSACTION_TSIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Transfer length (%d) is greater than the max supported (%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device.0*, %struct.spi_transfer*)* @img_spfi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spfi_transfer_one(%struct.spi_master* %0, %struct.spi_device.0* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device.0*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.img_spfi*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device.0* %1, %struct.spi_device.0** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_device.0*, %struct.spi_device.0** %6, align 8
  %11 = getelementptr inbounds %struct.spi_device.0, %struct.spi_device.0* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.img_spfi* @spi_master_get_devdata(i32 %12)
  store %struct.img_spfi* %13, %struct.img_spfi** %8, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SPFI_TRANSACTION_TSIZE_MASK, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %21 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SPFI_TRANSACTION_TSIZE_MASK, align 4
  %27 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %61

30:                                               ; preds = %3
  %31 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %32 = load %struct.spi_device.0*, %struct.spi_device.0** %6, align 8
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %34 = call i32 @img_spfi_config(%struct.spi_master* %31, %struct.spi_device.0* %32, %struct.spi_transfer* %33)
  %35 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %36 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %35, i32 0, i32 0
  %37 = load i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)*, i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)** %36, align 8
  %38 = icmp ne i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %30
  %40 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %41 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %40, i32 0, i32 0
  %42 = load i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)*, i64 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)** %41, align 8
  %43 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %44 = load %struct.spi_device.0*, %struct.spi_device.0** %6, align 8
  %45 = bitcast %struct.spi_device.0* %44 to %struct.spi_device*
  %46 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %47 = call i64 %42(%struct.spi_master* %43, %struct.spi_device* %45, %struct.spi_transfer* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %51 = load %struct.spi_device.0*, %struct.spi_device.0** %6, align 8
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %53 = call i32 @img_spfi_start_dma(%struct.spi_master* %50, %struct.spi_device.0* %51, %struct.spi_transfer* %52)
  store i32 %53, i32* %9, align 4
  br label %59

54:                                               ; preds = %39, %30
  %55 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %56 = load %struct.spi_device.0*, %struct.spi_device.0** %6, align 8
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %58 = call i32 @img_spfi_start_pio(%struct.spi_master* %55, %struct.spi_device.0* %56, %struct.spi_transfer* %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.img_spfi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @img_spfi_config(%struct.spi_master*, %struct.spi_device.0*, %struct.spi_transfer*) #1

declare dso_local i32 @img_spfi_start_dma(%struct.spi_master*, %struct.spi_device.0*, %struct.spi_transfer*) #1

declare dso_local i32 @img_spfi_start_pio(%struct.spi_master*, %struct.spi_device.0*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
