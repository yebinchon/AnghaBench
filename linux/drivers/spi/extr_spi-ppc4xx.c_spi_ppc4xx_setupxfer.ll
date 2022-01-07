; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_spi_ppc4xx_setupxfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_spi_ppc4xx_setupxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32, i32, %struct.spi_ppc4xx_cs*, i32 }
%struct.spi_ppc4xx_cs = type { i64 }
%struct.spi_transfer = type { i64, i32 }
%struct.ppc4xx_spi = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.spi_device*, i32)*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid speed_hz (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"setting pre-scaler to %d (hz %d)\0A\00", align 1
@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_ppc4xx_setupxfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_ppc4xx_setupxfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.ppc4xx_spi*, align 8
  %7 = alloca %struct.spi_ppc4xx_cs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ppc4xx_spi* @spi_master_get_devdata(i32 %14)
  store %struct.ppc4xx_spi* %15, %struct.ppc4xx_spi** %6, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 3
  %18 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %17, align 8
  store %struct.spi_ppc4xx_cs* %18, %struct.spi_ppc4xx_cs** %7, align 8
  store i64 0, i64* %9, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %26 = icmp ne %struct.spi_transfer* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @min(i32 %44, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %41, %36
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54, %51
  %61 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 2
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %131

67:                                               ; preds = %54
  %68 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %69 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %7, align 8
  %73 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @out_8(i32* %71, i64 %74)
  %76 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %77 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sdiv i32 %78, %79
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %67
  %85 = load i32, i32* %8, align 4
  %86 = call i8* @min(i32 %85, i32 255)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %84, %67
  %89 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 2
  %91 = load i64, i64* %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %91, i32 %92)
  %94 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %95 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i64 @in_8(i32* %97)
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %88
  %102 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %103 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @out_8(i32* %105, i64 %106)
  br label %108

108:                                              ; preds = %101, %88
  %109 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %110 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = call i32 @mutex_lock(i32* %111)
  %113 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %114 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %108
  %119 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %120 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %121, align 8
  %123 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %124 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %125 = call i32 %122(%struct.spi_device* %123, i32 %124)
  br label %126

126:                                              ; preds = %118, %108
  %127 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %6, align 8
  %128 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %126, %60
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.ppc4xx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @out_8(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i64 @in_8(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
