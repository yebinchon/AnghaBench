; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_read_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_read_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32 }

@SPI_NO_ERR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SPI_HW_ERR = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SF_PAGE_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@STATUS_ERROR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_256 = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SPI_COMMAND = common dso_local global i32 0, align 4
@SPI_ADDR0 = common dso_local global i32 0, align 4
@SPI_ADDR1 = common dso_local global i32 0, align 4
@SPI_ADDR2 = common dso_local global i32 0, align 4
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_COMMAND_BIT_8 = common dso_local global i32 0, align 4
@SPI_ADDRESS_BIT_24 = common dso_local global i32 0, align 4
@SPI_ADDR3 = common dso_local global i32 0, align 4
@SPI_ADDRESS_BIT_32 = common dso_local global i32 0, align 4
@SPI_LENGTH1 = common dso_local global i32 0, align 4
@SPI_LENGTH0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CADI_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4
@TO_XFER_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_read_flash(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %16 = load i32, i32* @SPI_NO_ERR, align 4
  %17 = call i32 @spi_set_err_code(%struct.rtsx_chip* %15, i32 %16)
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %28, %34
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %35, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %47, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 9
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  %59 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %60 = call i32 @spi_set_init_para(%struct.rtsx_chip* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @STATUS_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %2
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %66 = load i32, i32* @SPI_HW_ERR, align 4
  %67 = call i32 @spi_set_err_code(%struct.rtsx_chip* %65, i32 %66)
  %68 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %68, i32* %3, align 4
  br label %215

69:                                               ; preds = %2
  %70 = load i32, i32* @SF_PAGE_LEN, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32* @kmalloc(i32 %70, i32 %71)
  store i32* %72, i32** %13, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %76, i32* %3, align 4
  br label %215

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %197, %77
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %209

81:                                               ; preds = %78
  %82 = load i32, i32* @SF_PAGE_LEN, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %88, %81
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %92 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %91)
  %93 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %95 = load i32, i32* @DMA_256, align 4
  %96 = call i32 @trans_dma_enable(i32 %93, %struct.rtsx_chip* %94, i32 256, i32 %95)
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %98 = load i32, i32* @WRITE_REG_CMD, align 4
  %99 = load i32, i32* @SPI_COMMAND, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %97, i32 %98, i32 %99, i32 255, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %90
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %106 = load i32, i32* @WRITE_REG_CMD, align 4
  %107 = load i32, i32* @SPI_ADDR0, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %105, i32 %106, i32 %107, i32 255, i32 %108)
  %110 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %111 = load i32, i32* @WRITE_REG_CMD, align 4
  %112 = load i32, i32* @SPI_ADDR1, align 4
  %113 = load i32, i32* %11, align 4
  %114 = ashr i32 %113, 8
  %115 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %110, i32 %111, i32 %112, i32 255, i32 %114)
  %116 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %117 = load i32, i32* @WRITE_REG_CMD, align 4
  %118 = load i32, i32* @SPI_ADDR2, align 4
  %119 = load i32, i32* %11, align 4
  %120 = ashr i32 %119, 16
  %121 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %116, i32 %117, i32 %118, i32 255, i32 %120)
  %122 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %123 = load i32, i32* @WRITE_REG_CMD, align 4
  %124 = load i32, i32* @SPI_CA_NUMBER, align 4
  %125 = load i32, i32* @SPI_COMMAND_BIT_8, align 4
  %126 = load i32, i32* @SPI_ADDRESS_BIT_24, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %122, i32 %123, i32 %124, i32 255, i32 %127)
  br label %154

129:                                              ; preds = %90
  %130 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %131 = load i32, i32* @WRITE_REG_CMD, align 4
  %132 = load i32, i32* @SPI_ADDR1, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %130, i32 %131, i32 %132, i32 255, i32 %133)
  %135 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %136 = load i32, i32* @WRITE_REG_CMD, align 4
  %137 = load i32, i32* @SPI_ADDR2, align 4
  %138 = load i32, i32* %11, align 4
  %139 = ashr i32 %138, 8
  %140 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %135, i32 %136, i32 %137, i32 255, i32 %139)
  %141 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %142 = load i32, i32* @WRITE_REG_CMD, align 4
  %143 = load i32, i32* @SPI_ADDR3, align 4
  %144 = load i32, i32* %11, align 4
  %145 = ashr i32 %144, 16
  %146 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %141, i32 %142, i32 %143, i32 255, i32 %145)
  %147 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %148 = load i32, i32* @WRITE_REG_CMD, align 4
  %149 = load i32, i32* @SPI_CA_NUMBER, align 4
  %150 = load i32, i32* @SPI_COMMAND_BIT_8, align 4
  %151 = load i32, i32* @SPI_ADDRESS_BIT_32, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %147, i32 %148, i32 %149, i32 255, i32 %152)
  br label %154

154:                                              ; preds = %129, %104
  %155 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %156 = load i32, i32* @WRITE_REG_CMD, align 4
  %157 = load i32, i32* @SPI_LENGTH1, align 4
  %158 = load i32, i32* %14, align 4
  %159 = ashr i32 %158, 8
  %160 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %155, i32 %156, i32 %157, i32 255, i32 %159)
  %161 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %162 = load i32, i32* @WRITE_REG_CMD, align 4
  %163 = load i32, i32* @SPI_LENGTH0, align 4
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %161, i32 %162, i32 %163, i32 255, i32 %164)
  %166 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %167 = load i32, i32* @WRITE_REG_CMD, align 4
  %168 = load i32, i32* @SPI_TRANSFER0, align 4
  %169 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %170 = load i32, i32* @SPI_CADI_MODE0, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %166, i32 %167, i32 %168, i32 255, i32 %171)
  %173 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %174 = load i32, i32* @CHECK_REG_CMD, align 4
  %175 = load i32, i32* @SPI_TRANSFER0, align 4
  %176 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %177 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %178 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %180 = call i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip* %179)
  %181 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %185 = call i32 @rtsx_transfer_data(%struct.rtsx_chip* %181, i32 0, i32* %182, i32 %183, i32 0, i32 %184, i32 10000)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %154
  %189 = load i32*, i32** %13, align 8
  %190 = call i32 @kfree(i32* %189)
  %191 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %192 = call i32 @rtsx_clear_spi_error(%struct.rtsx_chip* %191)
  %193 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %194 = load i32, i32* @SPI_HW_ERR, align 4
  %195 = call i32 @spi_set_err_code(%struct.rtsx_chip* %193, i32 %194)
  %196 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %196, i32* %3, align 4
  br label %215

197:                                              ; preds = %154
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %201 = load i32, i32* @TO_XFER_BUF, align 4
  %202 = call i32 @rtsx_stor_access_xfer_buf(i32* %198, i32 %199, %struct.scsi_cmnd* %200, i32* %7, i32* %8, i32 %201)
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %12, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %12, align 4
  br label %78

209:                                              ; preds = %78
  %210 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %211 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %210, i32 0)
  %212 = load i32*, i32** %13, align 8
  %213 = call i32 @kfree(i32* %212)
  %214 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %209, %188, %75, %64
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @spi_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @spi_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @trans_dma_enable(i32, %struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_transfer_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @rtsx_clear_spi_error(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_stor_access_xfer_buf(i32*, i32, %struct.scsi_cmnd*, i32*, i32*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
