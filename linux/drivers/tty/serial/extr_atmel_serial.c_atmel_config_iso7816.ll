; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_config_iso7816.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_config_iso7816.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.serial_iso7816, i32 }
%struct.serial_iso7816 = type { i32, i32 }
%struct.atmel_uart_port = type { i32, i32, i32, i32, i32 }

@ATMEL_US_IDR = common dso_local global i32 0, align 4
@ATMEL_US_MR = common dso_local global i32 0, align 4
@SER_ISO7816_ENABLED = common dso_local global i32 0, align 4
@ATMEL_US_USMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ISO7816: Timeguard exceeding 255\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SER_ISO7816_T_PARAM = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_ISO7816_T0 = common dso_local global i32 0, align 4
@ATMEL_US_DSNACK = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_ISO7816_T1 = common dso_local global i32 0, align 4
@ATMEL_US_INACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ISO7816: Type not supported\0A\00", align 1
@ATMEL_US_USCLKS = common dso_local global i32 0, align 4
@ATMEL_US_NBSTOP = common dso_local global i32 0, align 4
@ATMEL_US_PAR = common dso_local global i32 0, align 4
@ATMEL_US_USCLKS_MCK = common dso_local global i32 0, align 4
@ATMEL_US_CLKO = common dso_local global i32 0, align 4
@ATMEL_US_PAR_EVEN = common dso_local global i32 0, align 4
@ATMEL_US_NBSTOP_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"ISO7816 fidi = 0, Generator generates no signal\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ISO7816 fidi = %u, value not supported\0A\00", align 1
@ATMEL_US_BRGR = common dso_local global i32 0, align 4
@ATMEL_US_TTGR = common dso_local global i32 0, align 4
@ATMEL_US_FIDI = common dso_local global i32 0, align 4
@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_TXDIS = common dso_local global i32 0, align 4
@ATMEL_US_RXEN = common dso_local global i32 0, align 4
@ATMEL_US_TXEMPTY = common dso_local global i32 0, align 4
@ATMEL_US_NACK = common dso_local global i32 0, align 4
@ATMEL_US_ITERATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Setting UART back to RS232\0A\00", align 1
@ATMEL_US_ENDTX = common dso_local global i32 0, align 4
@ATMEL_US_TXBUFE = common dso_local global i32 0, align 4
@ATMEL_US_TXRDY = common dso_local global i32 0, align 4
@ATMEL_US_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_iso7816*)* @atmel_config_iso7816 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_config_iso7816(%struct.uart_port* %0, %struct.serial_iso7816* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.serial_iso7816*, align 8
  %5 = alloca %struct.atmel_uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.serial_iso7816* %1, %struct.serial_iso7816** %4, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %10)
  store %struct.atmel_uart_port* %11, %struct.atmel_uart_port** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = load i32, i32* @ATMEL_US_IDR, align 4
  %14 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @atmel_uart_writel(%struct.uart_port* %12, i32 %13, i32 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = load i32, i32* @ATMEL_US_MR, align 4
  %20 = call i8* @atmel_uart_readl(%struct.uart_port* %18, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %23 = getelementptr inbounds %struct.serial_iso7816, %struct.serial_iso7816* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SER_ISO7816_ENABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %190

28:                                               ; preds = %2
  %29 = load i32, i32* @ATMEL_US_USMODE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %34 = getelementptr inbounds %struct.serial_iso7816, %struct.serial_iso7816* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 255
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %43 = call i32 @memset(%struct.serial_iso7816* %42, i32 0, i32 8)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %236

46:                                               ; preds = %28
  %47 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %48 = getelementptr inbounds %struct.serial_iso7816, %struct.serial_iso7816* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SER_ISO7816_T_PARAM, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @SER_ISO7816_T(i32 0)
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i32, i32* @ATMEL_US_USMODE_ISO7816_T0, align 4
  %56 = load i32, i32* @ATMEL_US_DSNACK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %84

60:                                               ; preds = %46
  %61 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %62 = getelementptr inbounds %struct.serial_iso7816, %struct.serial_iso7816* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SER_ISO7816_T_PARAM, align 4
  %65 = and i32 %63, %64
  %66 = call i32 @SER_ISO7816_T(i32 1)
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* @ATMEL_US_USMODE_ISO7816_T1, align 4
  %70 = load i32, i32* @ATMEL_US_INACK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %83

74:                                               ; preds = %60
  %75 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %80 = call i32 @memset(%struct.serial_iso7816* %79, i32 0, i32 8)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %236

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %54
  %85 = load i32, i32* @ATMEL_US_USCLKS, align 4
  %86 = load i32, i32* @ATMEL_US_NBSTOP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @ATMEL_US_PAR, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @ATMEL_US_USCLKS_MCK, align 4
  %94 = load i32, i32* @ATMEL_US_CLKO, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @ATMEL_US_PAR_EVEN, align 4
  %99 = load i32, i32* @ATMEL_US_NBSTOP_1, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @ATMEL_US_MAX_ITER(i32 3)
  %102 = or i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %106 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %107 = call i32 @atmel_calc_cd(%struct.uart_port* %105, %struct.serial_iso7816* %106)
  store i32 %107, i32* %7, align 4
  %108 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %109 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %110 = call i32 @atmel_calc_fidi(%struct.uart_port* %108, %struct.serial_iso7816* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %84
  %114 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_warn(i32 %116, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %141

118:                                              ; preds = %84
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %121 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ult i32 %119, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %127 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ugt i32 %125, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %124, %118
  %131 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (i32, i8*, ...) @dev_err(i32 %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  %136 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %137 = call i32 @memset(%struct.serial_iso7816* %136, i32 0, i32 8)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %9, align 4
  br label %236

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %113
  %142 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %143 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.serial_iso7816, %struct.serial_iso7816* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SER_ISO7816_ENABLED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %141
  %150 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %151 = load i32, i32* @ATMEL_US_MR, align 4
  %152 = call i8* @atmel_uart_readl(%struct.uart_port* %150, i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %155 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %157 = load i32, i32* @ATMEL_US_BRGR, align 4
  %158 = call i8* @atmel_uart_readl(%struct.uart_port* %156, i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %161 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %149, %141
  %163 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %164 = load i32, i32* @ATMEL_US_TTGR, align 4
  %165 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %166 = getelementptr inbounds %struct.serial_iso7816, %struct.serial_iso7816* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @atmel_uart_writel(%struct.uart_port* %163, i32 %164, i32 %167)
  %169 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %170 = load i32, i32* @ATMEL_US_BRGR, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @atmel_uart_writel(%struct.uart_port* %169, i32 %170, i32 %171)
  %173 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %174 = load i32, i32* @ATMEL_US_FIDI, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @atmel_uart_writel(%struct.uart_port* %173, i32 %174, i32 %175)
  %177 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %178 = load i32, i32* @ATMEL_US_CR, align 4
  %179 = load i32, i32* @ATMEL_US_TXDIS, align 4
  %180 = load i32, i32* @ATMEL_US_RXEN, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @atmel_uart_writel(%struct.uart_port* %177, i32 %178, i32 %181)
  %183 = load i32, i32* @ATMEL_US_TXEMPTY, align 4
  %184 = load i32, i32* @ATMEL_US_NACK, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @ATMEL_US_ITERATION, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %189 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  br label %226

190:                                              ; preds = %2
  %191 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %192 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @dev_dbg(i32 %193, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %195 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %196 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %6, align 4
  %198 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %199 = call i32 @memset(%struct.serial_iso7816* %198, i32 0, i32 8)
  %200 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %201 = load i32, i32* @ATMEL_US_TTGR, align 4
  %202 = call i32 @atmel_uart_writel(%struct.uart_port* %200, i32 %201, i32 0)
  %203 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %204 = load i32, i32* @ATMEL_US_BRGR, align 4
  %205 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %206 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @atmel_uart_writel(%struct.uart_port* %203, i32 %204, i32 %207)
  %209 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %210 = load i32, i32* @ATMEL_US_FIDI, align 4
  %211 = call i32 @atmel_uart_writel(%struct.uart_port* %209, i32 %210, i32 372)
  %212 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %213 = call i64 @atmel_use_pdc_tx(%struct.uart_port* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %190
  %216 = load i32, i32* @ATMEL_US_ENDTX, align 4
  %217 = load i32, i32* @ATMEL_US_TXBUFE, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %220 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 4
  br label %225

221:                                              ; preds = %190
  %222 = load i32, i32* @ATMEL_US_TXRDY, align 4
  %223 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %224 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %221, %215
  br label %226

226:                                              ; preds = %225, %162
  %227 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %228 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %227, i32 0, i32 0
  %229 = load %struct.serial_iso7816*, %struct.serial_iso7816** %4, align 8
  %230 = bitcast %struct.serial_iso7816* %228 to i8*
  %231 = bitcast %struct.serial_iso7816* %229 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %230, i8* align 4 %231, i64 8, i1 false)
  %232 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %233 = load i32, i32* @ATMEL_US_MR, align 4
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @atmel_uart_writel(%struct.uart_port* %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %226, %130, %74, %37
  %237 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %238 = load i32, i32* @ATMEL_US_IER, align 4
  %239 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %240 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @atmel_uart_writel(%struct.uart_port* %237, i32 %238, i32 %241)
  %243 = load i32, i32* %9, align 4
  ret i32 %243
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i8* @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.serial_iso7816*, i32, i32) #1

declare dso_local i32 @SER_ISO7816_T(i32) #1

declare dso_local i32 @ATMEL_US_MAX_ITER(i32) #1

declare dso_local i32 @atmel_calc_cd(%struct.uart_port*, %struct.serial_iso7816*) #1

declare dso_local i32 @atmel_calc_fidi(%struct.uart_port*, %struct.serial_iso7816*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @atmel_use_pdc_tx(%struct.uart_port*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
