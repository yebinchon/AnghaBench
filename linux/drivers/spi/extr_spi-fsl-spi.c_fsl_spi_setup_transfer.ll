; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, %struct.spi_mpc8xxx_cs* }
%struct.spi_mpc8xxx_cs = type { i32 }
%struct.spi_transfer = type { i32, i32 }
%struct.mpc8xxx_spi = type { i32, i32 }

@SPI_CPM_MODE = common dso_local global i32 0, align 4
@SPI_QE = common dso_local global i32 0, align 4
@SPMODE_DIV16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s: Requested speed is too low: %d Hz. Will use %d Hz instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @fsl_spi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_spi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.mpc8xxx_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_mpc8xxx_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 4
  %13 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %12, align 8
  store %struct.spi_mpc8xxx_cs* %13, %struct.spi_mpc8xxx_cs** %10, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mpc8xxx_spi* @spi_master_get_devdata(i32 %16)
  store %struct.mpc8xxx_spi* %17, %struct.mpc8xxx_spi** %6, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %19 = icmp ne %struct.spi_transfer* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %20, %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %43 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SPI_CPM_MODE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %10, align 8
  %50 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %51 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @mspi_apply_cpu_mode_quirks(%struct.spi_mpc8xxx_cs* %49, %struct.spi_device* %50, %struct.mpc8xxx_spi* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %67

54:                                               ; preds = %41
  %55 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %56 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SPI_QE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %10, align 8
  %63 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mspi_apply_qe_mode_quirks(%struct.spi_mpc8xxx_cs* %62, %struct.spi_device* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %156

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 32
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = call i32 @SPMODE_LEN(i32 15)
  %81 = load i32, i32* @SPMODE_DIV16, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @SPMODE_PM(i32 15)
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %10, align 8
  %87 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @SPMODE_LEN(i32 %90)
  %92 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %10, align 8
  %93 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %97 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sdiv i32 %98, %99
  %101 = icmp sgt i32 %100, 64
  br i1 %101, label %102, label %132

102:                                              ; preds = %79
  %103 = load i32, i32* @SPMODE_DIV16, align 4
  %104 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %10, align 8
  %105 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %109 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 %112, 64
  %114 = sdiv i32 %111, %113
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp sgt i32 %116, 16
  %118 = zext i1 %117 to i32
  %119 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %120 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %119, i32 0, i32 2
  %121 = call i32 @dev_name(i32* %120)
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %124 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %125, 1024
  %127 = call i32 @WARN_ONCE(i32 %118, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %122, i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = icmp sgt i32 %128, 16
  br i1 %129, label %130, label %131

130:                                              ; preds = %102
  store i32 16, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %102
  br label %141

132:                                              ; preds = %79
  %133 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %6, align 8
  %134 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 %137, 4
  %139 = sdiv i32 %136, %138
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %132, %131
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @SPMODE_PM(i32 %148)
  %150 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %10, align 8
  %151 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %155 = call i32 @fsl_spi_change_mode(%struct.spi_device* %154)
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %147, %70
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.mpc8xxx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @mspi_apply_cpu_mode_quirks(%struct.spi_mpc8xxx_cs*, %struct.spi_device*, %struct.mpc8xxx_spi*, i32) #1

declare dso_local i32 @mspi_apply_qe_mode_quirks(%struct.spi_mpc8xxx_cs*, %struct.spi_device*, i32) #1

declare dso_local i32 @SPMODE_LEN(i32) #1

declare dso_local i32 @SPMODE_PM(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @fsl_spi_change_mode(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
