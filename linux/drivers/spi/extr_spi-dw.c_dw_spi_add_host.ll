; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_add_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32 }
%struct.dw_spi = type { i32, %struct.TYPE_2__*, i64, i64, i32, i32, i32, i64, i64, i32, %struct.spi_controller* }
%struct.TYPE_2__ = type { i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)*, i32 }
%struct.spi_controller = type { i32, i32, %struct.device, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SSI_MOTO_SPI = common dso_local global i32 0, align 4
@DW_SPI_DR = common dso_local global i64 0, align 8
@dw_spi_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"can not get IRQ\0A\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@dw_spi_setup = common dso_local global i32 0, align 4
@dw_spi_cleanup = common dso_local global i32 0, align 4
@dw_spi_set_cs = common dso_local global i64 0, align 8
@dw_spi_transfer_one = common dso_local global i32 0, align 4
@dw_spi_handle_err = common dso_local global i32 0, align 4
@SPI_MASTER_GPIO_SS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"DMA init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"problem registering spi master\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dw_spi_add_host(%struct.device* %0, %struct.dw_spi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dw_spi*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.dw_spi* %1, %struct.dw_spi** %5, align 8
  %8 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %9 = icmp eq %struct.dw_spi* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.spi_controller* @spi_alloc_master(%struct.device* %12, i32 0)
  store %struct.spi_controller* %13, %struct.spi_controller** %6, align 8
  %14 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %15 = icmp ne %struct.spi_controller* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %204

19:                                               ; preds = %2
  %20 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %21 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %22 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %21, i32 0, i32 10
  store %struct.spi_controller* %20, %struct.spi_controller** %22, align 8
  %23 = load i32, i32* @SSI_MOTO_SPI, align 4
  %24 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %25 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %27 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %29 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DW_SPI_DR, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %34 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %33, i32 0, i32 8
  store i64 %32, i64* %34, align 8
  %35 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %36 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %37 = call i32 @spi_controller_set_devdata(%struct.spi_controller* %35, %struct.dw_spi* %36)
  %38 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %39 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @dw_spi_irq, align 4
  %42 = load i32, i32* @IRQF_SHARED, align 4
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_name(%struct.device* %43)
  %45 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %46 = call i32 @request_irq(i32 %40, i32 %41, i32 %42, i32 %44, %struct.spi_controller* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %19
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %200

52:                                               ; preds = %19
  %53 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %54 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @SPI_CPOL, align 4
  %56 = load i32, i32* @SPI_CPHA, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SPI_LOOP, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %61 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = call i32 @SPI_BPW_RANGE_MASK(i32 4, i32 16)
  %63 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %64 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 8
  %65 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %66 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %69 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %71 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %74 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @dw_spi_setup, align 4
  %76 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %77 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @dw_spi_cleanup, align 4
  %79 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %80 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* @dw_spi_set_cs, align 8
  %82 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %83 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %82, i32 0, i32 4
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @dw_spi_transfer_one, align 4
  %85 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %86 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @dw_spi_handle_err, align 4
  %88 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %89 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 8
  %90 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %91 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %94 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %99 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.device, %struct.device* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = getelementptr inbounds %struct.device, %struct.device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %105 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.device, %struct.device* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @SPI_MASTER_GPIO_SS, align 4
  %108 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %109 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %111 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %52
  %115 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %116 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %119 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %114, %52
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %123 = call i32 @spi_hw_init(%struct.device* %121, %struct.dw_spi* %122)
  %124 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %125 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = icmp ne %struct.TYPE_2__* %126, null
  br i1 %127, label %128, label %159

128:                                              ; preds = %120
  %129 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %130 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)** %132, align 8
  %134 = icmp ne i32 (%struct.dw_spi*)* %133, null
  br i1 %134, label %135, label %159

135:                                              ; preds = %128
  %136 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %137 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)** %139, align 8
  %141 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %142 = call i32 %140(%struct.dw_spi* %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %135
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call i32 @dev_warn(%struct.device* %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %148 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %149 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  br label %158

150:                                              ; preds = %135
  %151 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %152 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %157 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %150, %145
  br label %159

159:                                              ; preds = %158, %128, %120
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %162 = call i32 @devm_spi_register_controller(%struct.device* %160, %struct.spi_controller* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %167 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %166, i32 0, i32 2
  %168 = call i32 @dev_err(%struct.device* %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %172

169:                                              ; preds = %159
  %170 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %171 = call i32 @dw_spi_debugfs_init(%struct.dw_spi* %170)
  store i32 0, i32* %3, align 4
  br label %204

172:                                              ; preds = %165
  %173 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %174 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %173, i32 0, i32 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = icmp ne %struct.TYPE_2__* %175, null
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %179 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)** %181, align 8
  %183 = icmp ne i32 (%struct.dw_spi*)* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %177
  %185 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %186 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %185, i32 0, i32 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)** %188, align 8
  %190 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %191 = call i32 %189(%struct.dw_spi* %190)
  br label %192

192:                                              ; preds = %184, %177, %172
  %193 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %194 = call i32 @spi_enable_chip(%struct.dw_spi* %193, i32 0)
  %195 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %196 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %199 = call i32 @free_irq(i32 %197, %struct.spi_controller* %198)
  br label %200

200:                                              ; preds = %192, %49
  %201 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %202 = call i32 @spi_controller_put(%struct.spi_controller* %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %200, %169, %16
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local i32 @spi_controller_set_devdata(%struct.spi_controller*, %struct.dw_spi*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.spi_controller*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local i32 @spi_hw_init(%struct.device*, %struct.dw_spi*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @devm_spi_register_controller(%struct.device*, %struct.spi_controller*) #1

declare dso_local i32 @dw_spi_debugfs_init(%struct.dw_spi*) #1

declare dso_local i32 @spi_enable_chip(%struct.dw_spi*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.spi_controller*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
