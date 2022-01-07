; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_read_flash_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_read_flash_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32 }

@SPI_NO_ERR = common dso_local global i32 0, align 4
@SPI_INVALID_COMMAND = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SPI_HW_ERR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@SPI_COMMAND = common dso_local global i32 0, align 4
@SPI_ADDR2 = common dso_local global i32 0, align 4
@SPI_ADDR1 = common dso_local global i32 0, align 4
@SPI_ADDR0 = common dso_local global i32 0, align 4
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_COMMAND_BIT_8 = common dso_local global i32 0, align 4
@SPI_ADDRESS_BIT_24 = common dso_local global i32 0, align 4
@SPI_LENGTH1 = common dso_local global i32 0, align 4
@SPI_LENGTH0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CA_MODE0 = common dso_local global i32 0, align 4
@SPI_C_MODE0 = common dso_local global i32 0, align 4
@SPI_CADI_MODE0 = common dso_local global i32 0, align 4
@SPI_CDI_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@STATUS_ERROR = common dso_local global i32 0, align 4
@SPI_READ_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_read_flash_id(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %10 = load i32, i32* @SPI_NO_ERR, align 4
  %11 = call i32 @spi_set_err_code(%struct.rtsx_chip* %9, i32 %10)
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 7
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %17, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 512
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %28 = load i32, i32* @SPI_INVALID_COMMAND, align 4
  %29 = call i32 @spi_set_err_code(%struct.rtsx_chip* %27, i32 %28)
  %30 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %217

31:                                               ; preds = %2
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %33 = call i32 @spi_set_init_para(%struct.rtsx_chip* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @STATUS_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %39 = load i32, i32* @SPI_HW_ERR, align 4
  %40 = call i32 @spi_set_err_code(%struct.rtsx_chip* %38, i32 %39)
  %41 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %41, i32* %3, align 4
  br label %217

42:                                               ; preds = %31
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %44 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %43)
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %46 = load i32, i32* @WRITE_REG_CMD, align 4
  %47 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %48 = load i32, i32* @PINGPONG_BUFFER, align 4
  %49 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %45, i32 %46, i32 %47, i32 1, i32 %48)
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %51 = load i32, i32* @WRITE_REG_CMD, align 4
  %52 = load i32, i32* @SPI_COMMAND, align 4
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %50, i32 %51, i32 %52, i32 255, i32 %57)
  %59 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %60 = load i32, i32* @WRITE_REG_CMD, align 4
  %61 = load i32, i32* @SPI_ADDR2, align 4
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %59, i32 %60, i32 %61, i32 255, i32 %66)
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %69 = load i32, i32* @WRITE_REG_CMD, align 4
  %70 = load i32, i32* @SPI_ADDR1, align 4
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %68, i32 %69, i32 %70, i32 255, i32 %75)
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %78 = load i32, i32* @WRITE_REG_CMD, align 4
  %79 = load i32, i32* @SPI_ADDR0, align 4
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %77, i32 %78, i32 %79, i32 255, i32 %84)
  %86 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %87 = load i32, i32* @WRITE_REG_CMD, align 4
  %88 = load i32, i32* @SPI_CA_NUMBER, align 4
  %89 = load i32, i32* @SPI_COMMAND_BIT_8, align 4
  %90 = load i32, i32* @SPI_ADDRESS_BIT_24, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %86, i32 %87, i32 %88, i32 255, i32 %91)
  %93 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %94 = load i32, i32* @WRITE_REG_CMD, align 4
  %95 = load i32, i32* @SPI_LENGTH1, align 4
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %93, i32 %94, i32 %95, i32 255, i32 %100)
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %103 = load i32, i32* @WRITE_REG_CMD, align 4
  %104 = load i32, i32* @SPI_LENGTH0, align 4
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %102, i32 %103, i32 %104, i32 255, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %42
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 9
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %122 = load i32, i32* @WRITE_REG_CMD, align 4
  %123 = load i32, i32* @SPI_TRANSFER0, align 4
  %124 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %125 = load i32, i32* @SPI_CA_MODE0, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %121, i32 %122, i32 %123, i32 255, i32 %126)
  br label %136

128:                                              ; preds = %113
  %129 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %130 = load i32, i32* @WRITE_REG_CMD, align 4
  %131 = load i32, i32* @SPI_TRANSFER0, align 4
  %132 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %133 = load i32, i32* @SPI_C_MODE0, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %129, i32 %130, i32 %131, i32 255, i32 %134)
  br label %136

136:                                              ; preds = %128, %120
  br label %161

137:                                              ; preds = %42
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 9
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %146 = load i32, i32* @WRITE_REG_CMD, align 4
  %147 = load i32, i32* @SPI_TRANSFER0, align 4
  %148 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %149 = load i32, i32* @SPI_CADI_MODE0, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %145, i32 %146, i32 %147, i32 255, i32 %150)
  br label %160

152:                                              ; preds = %137
  %153 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %154 = load i32, i32* @WRITE_REG_CMD, align 4
  %155 = load i32, i32* @SPI_TRANSFER0, align 4
  %156 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %157 = load i32, i32* @SPI_CDI_MODE0, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %153, i32 %154, i32 %155, i32 255, i32 %158)
  br label %160

160:                                              ; preds = %152, %144
  br label %161

161:                                              ; preds = %160, %136
  %162 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %163 = load i32, i32* @CHECK_REG_CMD, align 4
  %164 = load i32, i32* @SPI_TRANSFER0, align 4
  %165 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %166 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %167 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %162, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %169 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %168, i32 0, i32 100)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %161
  %173 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %174 = call i32 @rtsx_clear_spi_error(%struct.rtsx_chip* %173)
  %175 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %176 = load i32, i32* @SPI_HW_ERR, align 4
  %177 = call i32 @spi_set_err_code(%struct.rtsx_chip* %175, i32 %176)
  %178 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %178, i32* %3, align 4
  br label %217

179:                                              ; preds = %161
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %215

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call i32* @kmalloc(i32 %183, i32 %184)
  store i32* %185, i32** %8, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %182
  %189 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %189, i32* %3, align 4
  br label %217

190:                                              ; preds = %182
  %191 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @rtsx_read_ppbuf(%struct.rtsx_chip* %191, i32* %192, i32 %193)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @STATUS_SUCCESS, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %190
  %199 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %200 = load i32, i32* @SPI_READ_ERR, align 4
  %201 = call i32 @spi_set_err_code(%struct.rtsx_chip* %199, i32 %200)
  %202 = load i32*, i32** %8, align 8
  %203 = call i32 @kfree(i32* %202)
  %204 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %204, i32* %3, align 4
  br label %217

205:                                              ; preds = %190
  %206 = load i32*, i32** %8, align 8
  %207 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %208 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %207)
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %210 = call i32 @rtsx_stor_set_xfer_buf(i32* %206, i32 %208, %struct.scsi_cmnd* %209)
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %212 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %211, i32 0)
  %213 = load i32*, i32** %8, align 8
  %214 = call i32 @kfree(i32* %213)
  br label %215

215:                                              ; preds = %205, %179
  %216 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %215, %198, %188, %172, %37, %26
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @spi_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @spi_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_clear_spi_error(%struct.rtsx_chip*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @rtsx_read_ppbuf(%struct.rtsx_chip*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @rtsx_stor_set_xfer_buf(i32*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
