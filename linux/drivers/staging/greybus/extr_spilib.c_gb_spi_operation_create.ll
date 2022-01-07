; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spi_operation_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spi_operation_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gb_spi_transfer_request* }
%struct.gb_spi_transfer_request = type { %struct.gb_spi_transfer*, i32, i32, i8* }
%struct.gb_spi_transfer = type { i32, i32, i32, i8*, i8*, i8* }
%struct.gb_spilib = type { i64, i64, i64, i32, %struct.spi_transfer*, %struct.spi_transfer*, i32 }
%struct.spi_transfer = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.gb_connection = type { i32 }
%struct.spi_message = type { i64, i64, %struct.spi_device* }
%struct.spi_device = type { i32, i32 }

@GB_SPI_STATE_OP_READY = common dso_local global i64 0, align 8
@GB_SPI_STATE_MSG_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"bufferless transfer, length %u\0A\00", align 1
@GB_SPI_STATE_MSG_ERROR = common dso_local global i64 0, align 8
@GB_SPI_TYPE_TRANSFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GB_SPI_STATE_OP_DONE = common dso_local global i64 0, align 8
@MSEC_PER_SEC = common dso_local global i64 0, align 8
@GB_OPERATION_TIMEOUT_DEFAULT = common dso_local global i64 0, align 8
@GB_SPI_XFER_WRITE = common dso_local global i32 0, align 4
@GB_SPI_XFER_READ = common dso_local global i32 0, align 4
@GB_SPI_XFER_INPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gb_operation* (%struct.gb_spilib*, %struct.gb_connection*, %struct.spi_message*)* @gb_spi_operation_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gb_operation* @gb_spi_operation_create(%struct.gb_spilib* %0, %struct.gb_connection* %1, %struct.spi_message* %2) #0 {
  %4 = alloca %struct.gb_operation*, align 8
  %5 = alloca %struct.gb_spilib*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.spi_message*, align 8
  %8 = alloca %struct.gb_spi_transfer_request*, align 8
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca %struct.spi_transfer*, align 8
  %11 = alloca %struct.gb_spi_transfer*, align 8
  %12 = alloca %struct.gb_operation*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store %struct.gb_spilib* %0, %struct.gb_spilib** %5, align 8
  store %struct.gb_connection* %1, %struct.gb_connection** %6, align 8
  store %struct.spi_message* %2, %struct.spi_message** %7, align 8
  %25 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %26 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %25, i32 0, i32 2
  %27 = load %struct.spi_device*, %struct.spi_device** %26, align 8
  store %struct.spi_device* %27, %struct.spi_device** %9, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %21, align 8
  %28 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %29 = call i64 @gb_operation_get_payload_size_max(%struct.gb_connection* %28)
  store i64 %29, i64* %23, align 8
  %30 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %31 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %30, i32 0, i32 5
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %31, align 8
  store %struct.spi_transfer* %32, %struct.spi_transfer** %10, align 8
  br label %33

33:                                               ; preds = %141, %3
  %34 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %35 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GB_SPI_STATE_OP_READY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %142

39:                                               ; preds = %33
  %40 = load i64, i64* @GB_SPI_STATE_MSG_RUNNING, align 8
  %41 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %42 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %44 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %45 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %44, i32 0, i32 4
  store %struct.spi_transfer* %43, %struct.spi_transfer** %45, align 8
  %46 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %39
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %57 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = load i64, i64* @GB_SPI_STATE_MSG_ERROR, align 8
  %64 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %65 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store %struct.gb_operation* null, %struct.gb_operation** %4, align 8
  br label %328

66:                                               ; preds = %50, %39
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %73 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %76 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %74, %77
  store i64 %78, i64* %20, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %23, align 8
  %82 = call i32 @tx_header_fit_operation(i64 %79, i64 %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %71
  br label %142

85:                                               ; preds = %71
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %23, align 8
  %90 = call i64 @calc_tx_xfer_size(i64 %86, i64 %87, i64 %88, i64 %89)
  store i64 %90, i64* %18, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %93 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %85, %66
  %95 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %101 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %104 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %102, %105
  store i64 %106, i64* %20, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %23, align 8
  %110 = call i64 @calc_rx_xfer_size(i64 %107, i64* %18, i64 %108, i64 %109)
  store i64 %110, i64* %19, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %113 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %99, %94
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %13, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %19, align 8
  %119 = load i64, i64* %14, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %14, align 8
  %121 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %122 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %21, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %21, align 8
  %126 = load i64, i64* %15, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %15, align 8
  %128 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %129 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %130 = call %struct.spi_transfer* @get_next_xfer(%struct.spi_transfer* %128, %struct.spi_message* %129)
  store %struct.spi_transfer* %130, %struct.spi_transfer** %10, align 8
  %131 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %132 = icmp ne %struct.spi_transfer* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %114
  %134 = load i64, i64* %21, align 8
  %135 = load i64, i64* %23, align 8
  %136 = icmp uge i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133, %114
  %138 = load i64, i64* @GB_SPI_STATE_OP_READY, align 8
  %139 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %140 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %137, %133
  br label %33

142:                                              ; preds = %84, %33
  store i64 24, i64* %17, align 8
  %143 = load i64, i64* %15, align 8
  %144 = mul i64 %143, 40
  %145 = load i64, i64* %17, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %17, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %17, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %17, align 8
  %150 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %151 = load i32, i32* @GB_SPI_TYPE_TRANSFER, align 4
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %14, align 8
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call %struct.gb_operation* @gb_operation_create(%struct.gb_connection* %150, i32 %151, i64 %152, i64 %153, i32 %154)
  store %struct.gb_operation* %155, %struct.gb_operation** %12, align 8
  %156 = load %struct.gb_operation*, %struct.gb_operation** %12, align 8
  %157 = icmp ne %struct.gb_operation* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %142
  store %struct.gb_operation* null, %struct.gb_operation** %4, align 8
  br label %328

159:                                              ; preds = %142
  %160 = load %struct.gb_operation*, %struct.gb_operation** %12, align 8
  %161 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load %struct.gb_spi_transfer_request*, %struct.gb_spi_transfer_request** %163, align 8
  store %struct.gb_spi_transfer_request* %164, %struct.gb_spi_transfer_request** %8, align 8
  %165 = load i64, i64* %15, align 8
  %166 = call i8* @cpu_to_le16(i64 %165)
  %167 = load %struct.gb_spi_transfer_request*, %struct.gb_spi_transfer_request** %8, align 8
  %168 = getelementptr inbounds %struct.gb_spi_transfer_request, %struct.gb_spi_transfer_request* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  %169 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %170 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.gb_spi_transfer_request*, %struct.gb_spi_transfer_request** %8, align 8
  %173 = getelementptr inbounds %struct.gb_spi_transfer_request, %struct.gb_spi_transfer_request* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %175 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.gb_spi_transfer_request*, %struct.gb_spi_transfer_request** %8, align 8
  %178 = getelementptr inbounds %struct.gb_spi_transfer_request, %struct.gb_spi_transfer_request* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load %struct.gb_spi_transfer_request*, %struct.gb_spi_transfer_request** %8, align 8
  %180 = getelementptr inbounds %struct.gb_spi_transfer_request, %struct.gb_spi_transfer_request* %179, i32 0, i32 0
  %181 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %180, align 8
  %182 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %181, i64 0
  store %struct.gb_spi_transfer* %182, %struct.gb_spi_transfer** %11, align 8
  %183 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %184 = load i64, i64* %15, align 8
  %185 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %183, i64 %184
  %186 = bitcast %struct.gb_spi_transfer* %185 to i8*
  store i8* %186, i8** %24, align 8
  %187 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %188 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %187, i32 0, i32 5
  %189 = load %struct.spi_transfer*, %struct.spi_transfer** %188, align 8
  store %struct.spi_transfer* %189, %struct.spi_transfer** %10, align 8
  br label %190

190:                                              ; preds = %315, %311, %159
  %191 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %192 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @GB_SPI_STATE_OP_DONE, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %321

196:                                              ; preds = %190
  %197 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %198 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %199 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %198, i32 0, i32 4
  %200 = load %struct.spi_transfer*, %struct.spi_transfer** %199, align 8
  %201 = icmp eq %struct.spi_transfer* %197, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %204 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %16, align 8
  br label %210

206:                                              ; preds = %196
  %207 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %208 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %16, align 8
  br label %210

210:                                              ; preds = %206, %202
  %211 = load i64, i64* %16, align 8
  %212 = mul i64 %211, 8
  %213 = load i64, i64* @MSEC_PER_SEC, align 8
  %214 = mul i64 %212, %213
  %215 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %216 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = udiv i64 %214, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %22, align 4
  %220 = load i64, i64* @GB_OPERATION_TIMEOUT_DEFAULT, align 8
  %221 = load i32, i32* %22, align 4
  %222 = zext i32 %221 to i64
  %223 = add nsw i64 %222, %220
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %22, align 4
  %225 = load i32, i32* %22, align 4
  %226 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %227 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = icmp ugt i32 %225, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %210
  %231 = load i32, i32* %22, align 4
  %232 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %233 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %230, %210
  %235 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %236 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call i8* @cpu_to_le32(i64 %237)
  %239 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %240 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %239, i32 0, i32 5
  store i8* %238, i8** %240, align 8
  %241 = load i64, i64* %16, align 8
  %242 = call i8* @cpu_to_le32(i64 %241)
  %243 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %244 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %243, i32 0, i32 4
  store i8* %242, i8** %244, align 8
  %245 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %246 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = call i8* @cpu_to_le16(i64 %247)
  %249 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %250 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  %251 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %252 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %255 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 8
  %256 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %257 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %260 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 4
  %261 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %262 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %234
  %266 = load i32, i32* @GB_SPI_XFER_WRITE, align 4
  %267 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %268 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load i8*, i8** %24, align 8
  %272 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %273 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %276 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = add i64 %274, %277
  %279 = load i64, i64* %16, align 8
  %280 = call i32 @memcpy(i8* %271, i64 %278, i64 %279)
  %281 = load i64, i64* %16, align 8
  %282 = load i8*, i8** %24, align 8
  %283 = getelementptr i8, i8* %282, i64 %281
  store i8* %283, i8** %24, align 8
  br label %284

284:                                              ; preds = %265, %234
  %285 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %286 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %284
  %290 = load i32, i32* @GB_SPI_XFER_READ, align 4
  %291 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %292 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %289, %284
  %296 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %297 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %298 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %297, i32 0, i32 4
  %299 = load %struct.spi_transfer*, %struct.spi_transfer** %298, align 8
  %300 = icmp eq %struct.spi_transfer* %296, %299
  br i1 %300, label %301, label %315

301:                                              ; preds = %295
  %302 = load %struct.gb_spilib*, %struct.gb_spilib** %5, align 8
  %303 = call i32 @is_last_xfer_done(%struct.gb_spilib* %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %301
  %306 = load i32, i32* @GB_SPI_XFER_INPROGRESS, align 4
  %307 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %308 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 8
  br label %311

311:                                              ; preds = %305, %301
  %312 = load i64, i64* @GB_SPI_STATE_OP_DONE, align 8
  %313 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %314 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %313, i32 0, i32 0
  store i64 %312, i64* %314, align 8
  br label %190

315:                                              ; preds = %295
  %316 = load %struct.gb_spi_transfer*, %struct.gb_spi_transfer** %11, align 8
  %317 = getelementptr inbounds %struct.gb_spi_transfer, %struct.gb_spi_transfer* %316, i32 1
  store %struct.gb_spi_transfer* %317, %struct.gb_spi_transfer** %11, align 8
  %318 = load %struct.spi_transfer*, %struct.spi_transfer** %10, align 8
  %319 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %320 = call %struct.spi_transfer* @get_next_xfer(%struct.spi_transfer* %318, %struct.spi_message* %319)
  store %struct.spi_transfer* %320, %struct.spi_transfer** %10, align 8
  br label %190

321:                                              ; preds = %190
  %322 = load i64, i64* %21, align 8
  %323 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %324 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = add i64 %325, %322
  store i64 %326, i64* %324, align 8
  %327 = load %struct.gb_operation*, %struct.gb_operation** %12, align 8
  store %struct.gb_operation* %327, %struct.gb_operation** %4, align 8
  br label %328

328:                                              ; preds = %321, %158, %55
  %329 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  ret %struct.gb_operation* %329
}

declare dso_local i64 @gb_operation_get_payload_size_max(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @tx_header_fit_operation(i64, i64, i64) #1

declare dso_local i64 @calc_tx_xfer_size(i64, i64, i64, i64) #1

declare dso_local i64 @calc_rx_xfer_size(i64, i64*, i64, i64) #1

declare dso_local %struct.spi_transfer* @get_next_xfer(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local %struct.gb_operation* @gb_operation_create(%struct.gb_connection*, i32, i64, i64, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @is_last_xfer_done(%struct.gb_spilib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
