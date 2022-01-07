; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c_ulpi_read_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c_ulpi_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulpi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ULPI_SCRATCH = common dso_local global i32 0, align 4
@ULPI_VENDOR_ID_LOW = common dso_local global i32 0, align 4
@ULPI_VENDOR_ID_HIGH = common dso_local global i32 0, align 4
@ULPI_PRODUCT_ID_LOW = common dso_local global i32 0, align 4
@ULPI_PRODUCT_ID_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ulpi:v%04xp%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ulpi*)* @ulpi_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpi_read_id(%struct.ulpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ulpi*, align 8
  %4 = alloca i32, align 4
  store %struct.ulpi* %0, %struct.ulpi** %3, align 8
  %5 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %6 = load i32, i32* @ULPI_SCRATCH, align 4
  %7 = call i32 @ulpi_write(%struct.ulpi* %5, i32 %6, i32 170)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %70

11:                                               ; preds = %1
  %12 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %13 = load i32, i32* @ULPI_SCRATCH, align 4
  %14 = call i32 @ulpi_read(%struct.ulpi* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %74

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 170
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %70

23:                                               ; preds = %19
  %24 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %25 = load i32, i32* @ULPI_VENDOR_ID_LOW, align 4
  %26 = call i32 @ulpi_read(%struct.ulpi* %24, i32 %25)
  %27 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %28 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %31 = load i32, i32* @ULPI_VENDOR_ID_HIGH, align 4
  %32 = call i32 @ulpi_read(%struct.ulpi* %30, i32 %31)
  %33 = shl i32 %32, 8
  %34 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %35 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %40 = load i32, i32* @ULPI_PRODUCT_ID_LOW, align 4
  %41 = call i32 @ulpi_read(%struct.ulpi* %39, i32 %40)
  %42 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %43 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %46 = load i32, i32* @ULPI_PRODUCT_ID_HIGH, align 4
  %47 = call i32 @ulpi_read(%struct.ulpi* %45, i32 %46)
  %48 = shl i32 %47, 8
  %49 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %50 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %55 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %23
  br label %70

60:                                               ; preds = %23
  %61 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %62 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %66 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @request_module(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %68)
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %59, %22, %10
  %71 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %72 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %71, i32 0, i32 0
  %73 = call i32 @of_device_request_module(i32* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %60, %17
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @ulpi_write(%struct.ulpi*, i32, i32) #1

declare dso_local i32 @ulpi_read(%struct.ulpi*, i32) #1

declare dso_local i32 @request_module(i8*, i32, i32) #1

declare dso_local i32 @of_device_request_module(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
