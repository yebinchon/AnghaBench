; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd-adi.c_sprd_adi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd-adi.c_sprd_adi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i64 }
%struct.sprd_adi = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"no buffer for transfer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @sprd_adi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_adi_transfer_one(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.sprd_adi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %13 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %14 = call %struct.sprd_adi* @spi_controller_get_devdata(%struct.spi_controller* %13)
  store %struct.sprd_adi* %14, %struct.sprd_adi** %8, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %3
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sprd_adi*, %struct.sprd_adi** %8, align 8
  %26 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %9, align 8
  %29 = load %struct.sprd_adi*, %struct.sprd_adi** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @sprd_adi_check_paddr(%struct.sprd_adi* %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %95

36:                                               ; preds = %19
  %37 = load %struct.sprd_adi*, %struct.sprd_adi** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @sprd_adi_read(%struct.sprd_adi* %37, i64 %38, i64* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %95

44:                                               ; preds = %36
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 %45, i64* %49, align 8
  br label %94

50:                                               ; preds = %3
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %50
  %56 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %57 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64* %59, i64** %12, align 8
  %60 = load i64*, i64** %12, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %12, align 8
  %62 = load i64, i64* %60, align 8
  %63 = load %struct.sprd_adi*, %struct.sprd_adi** %8, align 8
  %64 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  store i64 %66, i64* %9, align 8
  %67 = load %struct.sprd_adi*, %struct.sprd_adi** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @sprd_adi_check_paddr(%struct.sprd_adi* %67, i64 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %95

74:                                               ; preds = %55
  %75 = load i64*, i64** %12, align 8
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %10, align 8
  %77 = load %struct.sprd_adi*, %struct.sprd_adi** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @sprd_adi_write(%struct.sprd_adi* %77, i64 %78, i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %95

85:                                               ; preds = %74
  br label %93

86:                                               ; preds = %50
  %87 = load %struct.sprd_adi*, %struct.sprd_adi** %8, align 8
  %88 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %95

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %44
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %86, %83, %72, %42, %34
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.sprd_adi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @sprd_adi_check_paddr(%struct.sprd_adi*, i64) #1

declare dso_local i32 @sprd_adi_read(%struct.sprd_adi*, i64, i64*) #1

declare dso_local i32 @sprd_adi_write(%struct.sprd_adi*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
