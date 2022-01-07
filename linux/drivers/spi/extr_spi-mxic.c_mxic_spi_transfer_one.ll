; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i64, i32, i32 }
%struct.mxic_spi = type { i64 }

@OP_BUSW_1 = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@OP_BUSW_4 = common dso_local global i32 0, align 4
@OP_BUSW_2 = common dso_local global i32 0, align 4
@OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @mxic_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.mxic_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %12 = call %struct.mxic_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.mxic_spi* %12, %struct.mxic_spi** %8, align 8
  %13 = load i32, i32* @OP_BUSW_1, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %3
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %18
  %24 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SPI_TX_QUAD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SPI_RX_QUAD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30, %23
  %38 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SPI_TX_DUAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SPI_RX_DUAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %30
  %52 = load i32, i32* @ENOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %158

54:                                               ; preds = %44, %37
  br label %55

55:                                               ; preds = %54, %18, %3
  %56 = load %struct.mxic_spi*, %struct.mxic_spi** %8, align 8
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mxic_spi_set_freq(%struct.mxic_spi* %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %158

65:                                               ; preds = %55
  %66 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SPI_TX_QUAD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @OP_BUSW_4, align 4
  store i32 %78, i32* %9, align 4
  br label %89

79:                                               ; preds = %70
  %80 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SPI_TX_DUAL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @OP_BUSW_2, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %79
  br label %89

89:                                               ; preds = %88, %77
  br label %116

90:                                               ; preds = %65
  %91 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %92 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SPI_RX_QUAD, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @OP_BUSW_4, align 4
  store i32 %103, i32* %9, align 4
  br label %114

104:                                              ; preds = %95
  %105 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %106 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SPI_RX_DUAL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @OP_BUSW_2, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %111, %104
  br label %114

114:                                              ; preds = %113, %102
  br label %115

115:                                              ; preds = %114, %90
  br label %116

116:                                              ; preds = %115, %89
  %117 = call i32 @OP_CMD_BYTES(i32 1)
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @OP_CMD_BUSW(i32 %118)
  %120 = or i32 %117, %119
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @OP_DATA_BUSW(i32 %121)
  %123 = or i32 %120, %122
  %124 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %125 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %116
  %129 = load i32, i32* @OP_READ, align 4
  br label %131

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 0, %130 ]
  %133 = or i32 %123, %132
  %134 = load %struct.mxic_spi*, %struct.mxic_spi** %8, align 8
  %135 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @SS_CTRL(i32 0)
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  %140 = load %struct.mxic_spi*, %struct.mxic_spi** %8, align 8
  %141 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %142 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %145 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %148 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @mxic_spi_data_xfer(%struct.mxic_spi* %140, i32 %143, i64 %146, i32 %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %131
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %4, align 4
  br label %158

155:                                              ; preds = %131
  %156 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %157 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %156)
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %155, %153, %63, %51
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.mxic_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @mxic_spi_set_freq(%struct.mxic_spi*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @OP_CMD_BYTES(i32) #1

declare dso_local i32 @OP_CMD_BUSW(i32) #1

declare dso_local i32 @OP_DATA_BUSW(i32) #1

declare dso_local i64 @SS_CTRL(i32) #1

declare dso_local i32 @mxic_spi_data_xfer(%struct.mxic_spi*, i32, i64, i32) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
