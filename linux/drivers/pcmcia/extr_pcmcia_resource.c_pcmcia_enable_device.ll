; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, i32, i8, i32, i32, i32, i64, %struct.TYPE_14__*, %struct.pcmcia_socket* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.pcmcia_socket = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, %struct.TYPE_15__, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.pcmcia_socket*, %struct.TYPE_13__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_15__*)* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i32 }

@SOCKET_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Configuration is locked\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to set socket state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_ENABLE_IOCARD = common dso_local global i32 0, align 4
@SS_IOCARD = common dso_local global i32 0, align 4
@CONF_ENABLE_ZVCARD = common dso_local global i32 0, align 4
@SS_ZVCARD = common dso_local global i32 0, align 4
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@SS_SPKR_ENA = common dso_local global i32 0, align 4
@CCSR_AUDIO_ENA = common dso_local global i8 0, align 1
@PRESENT_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"speaker requested, but PRESENT_STATUS not set!\0A\00", align 1
@CONF_ENABLE_ESR = common dso_local global i32 0, align 4
@PRESENT_EXT_STATUS = common dso_local global i32 0, align 4
@ESR_REQ_ATTN_ENA = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"enable_device: V %d, flags %x, base %x, regs %x, idx %x\0A\00", align 1
@PRESENT_COPY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"clearing CISREG_SCR\0A\00", align 1
@CISREG_SCR = common dso_local global i32 0, align 4
@PRESENT_PIN_REPLACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"clearing CISREG_PRR\0A\00", align 1
@CISREG_PRR = common dso_local global i32 0, align 4
@PRESENT_OPTION = common dso_local global i32 0, align 4
@COR_CONFIG_MASK = common dso_local global i8 0, align 1
@COR_MFC_CONFIG_MASK = common dso_local global i8 0, align 1
@COR_FUNC_ENA = common dso_local global i8 0, align 1
@COR_IREQ_ENA = common dso_local global i8 0, align 1
@PRESENT_IOBASE_0 = common dso_local global i32 0, align 4
@COR_ADDR_DECODE = common dso_local global i8 0, align 1
@CONF_ENABLE_PULSE_IRQ = common dso_local global i32 0, align 4
@COR_LEVEL_REQ = common dso_local global i8 0, align 1
@CISREG_COR = common dso_local global i32 0, align 4
@CISREG_CCSR = common dso_local global i32 0, align 4
@CISREG_ESR = common dso_local global i32 0, align 4
@CISREG_IOBASE_0 = common dso_local global i32 0, align 4
@CISREG_IOBASE_1 = common dso_local global i32 0, align 4
@PRESENT_IOSIZE = common dso_local global i32 0, align 4
@CISREG_IOSIZE = common dso_local global i32 0, align 4
@CONFIG_IO_REQ = common dso_local global i32 0, align 4
@io_speed = common dso_local global i32 0, align 4
@MAX_IO_WIN = common dso_local global i32 0, align 4
@MAP_ACTIVE = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@MAP_16BIT = common dso_local global i32 0, align 4
@MAP_AUTOSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 9
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %18, align 8
  store %struct.pcmcia_socket* %19, %struct.pcmcia_socket** %6, align 8
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SOCKET_PRESENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %518

32:                                               ; preds = %1
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %34 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %7, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CONFIG_LOCKED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %47 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 5
  %51 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %518

54:                                               ; preds = %32
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %59 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %62 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %61, i32 0, i32 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64 (%struct.pcmcia_socket*, %struct.TYPE_15__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_15__*)** %64, align 8
  %66 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %67 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %68 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %67, i32 0, i32 6
  %69 = call i64 %65(%struct.pcmcia_socket* %66, %struct.TYPE_15__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %54
  %72 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %73 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %72, i32 0, i32 2
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 5
  %77 = call i32 @dev_warn(i32* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %518

80:                                               ; preds = %54
  %81 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %82 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85, %80
  %91 = load i32, i32* @CONF_ENABLE_IOCARD, align 4
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @CONF_ENABLE_IOCARD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i32, i32* @SS_IOCARD, align 4
  %101 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %102 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %99, %94
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @CONF_ENABLE_ZVCARD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load i32, i32* @SS_ZVCARD, align 4
  %113 = load i32, i32* @SS_IOCARD, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %116 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %111, %106
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %120
  %126 = load i32, i32* @SS_SPKR_ENA, align 4
  %127 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %128 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load i8, i8* @CCSR_AUDIO_ENA, align 1
  store i8 %132, i8* %9, align 1
  %133 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %134 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PRESENT_STATUS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %125
  %140 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %141 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %140, i32 0, i32 5
  %142 = call i32 @dev_warn(i32* %141, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %143

143:                                              ; preds = %139, %125
  br label %144

144:                                              ; preds = %143, %120
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %151 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %150, i32 0, i32 7
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %154 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  store i64 %152, i64* %155, align 8
  br label %160

156:                                              ; preds = %144
  %157 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %158 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %149
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @CONF_ENABLE_ESR, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32, i32* @PRESENT_EXT_STATUS, align 4
  %167 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %168 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load i8, i8* @ESR_REQ_ATTN_ENA, align 1
  store i8 %171, i8* %10, align 1
  br label %172

172:                                              ; preds = %165, %160
  %173 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %174 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %173, i32 0, i32 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i64 (%struct.pcmcia_socket*, %struct.TYPE_15__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_15__*)** %176, align 8
  %178 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %179 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %180 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %179, i32 0, i32 6
  %181 = call i64 %177(%struct.pcmcia_socket* %178, %struct.TYPE_15__* %180)
  %182 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %183 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %187 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %186, i32 0, i32 5
  %188 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %189 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %193 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %196 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %199 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %198, i32 0, i32 3
  %200 = load i8, i8* %199, align 4
  %201 = zext i8 %200 to i32
  %202 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %187, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %191, i32 %194, i32 %197, i32 %201)
  %203 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %204 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %5, align 4
  %206 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %207 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @PRESENT_COPY, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %172
  store i8 0, i8* %13, align 1
  %213 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %214 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %213, i32 0, i32 5
  %215 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %216 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* @CISREG_SCR, align 4
  %219 = add i32 %217, %218
  %220 = lshr i32 %219, 1
  %221 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %216, i32 1, i32 %220, i32 1, i8* %13)
  br label %222

222:                                              ; preds = %212, %172
  %223 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %224 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @PRESENT_PIN_REPLACE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %222
  store i8 0, i8* %14, align 1
  %230 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %231 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %230, i32 0, i32 5
  %232 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %231, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %233 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* @CISREG_PRR, align 4
  %236 = add i32 %234, %235
  %237 = lshr i32 %236, 1
  %238 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %233, i32 1, i32 %237, i32 1, i8* %14)
  br label %239

239:                                              ; preds = %229, %222
  %240 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %241 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @PRESENT_OPTION, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %317

246:                                              ; preds = %239
  %247 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %248 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %253 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %252, i32 0, i32 3
  %254 = load i8, i8* %253, align 4
  %255 = zext i8 %254 to i32
  %256 = load i8, i8* @COR_CONFIG_MASK, align 1
  %257 = zext i8 %256 to i32
  %258 = and i32 %255, %257
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %11, align 1
  br label %292

260:                                              ; preds = %246
  %261 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %262 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %261, i32 0, i32 3
  %263 = load i8, i8* %262, align 4
  %264 = zext i8 %263 to i32
  %265 = load i8, i8* @COR_MFC_CONFIG_MASK, align 1
  %266 = zext i8 %265 to i32
  %267 = and i32 %264, %266
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %11, align 1
  %269 = load i8, i8* @COR_FUNC_ENA, align 1
  %270 = zext i8 %269 to i32
  %271 = load i8, i8* @COR_IREQ_ENA, align 1
  %272 = zext i8 %271 to i32
  %273 = or i32 %270, %272
  %274 = load i8, i8* %11, align 1
  %275 = zext i8 %274 to i32
  %276 = or i32 %275, %273
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %11, align 1
  %278 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %279 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @PRESENT_IOBASE_0, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %260
  %285 = load i8, i8* @COR_ADDR_DECODE, align 1
  %286 = zext i8 %285 to i32
  %287 = load i8, i8* %11, align 1
  %288 = zext i8 %287 to i32
  %289 = or i32 %288, %286
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %11, align 1
  br label %291

291:                                              ; preds = %284, %260
  br label %292

292:                                              ; preds = %291, %251
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %309

297:                                              ; preds = %292
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* @CONF_ENABLE_PULSE_IRQ, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %309, label %302

302:                                              ; preds = %297
  %303 = load i8, i8* @COR_LEVEL_REQ, align 1
  %304 = zext i8 %303 to i32
  %305 = load i8, i8* %11, align 1
  %306 = zext i8 %305 to i32
  %307 = or i32 %306, %304
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %11, align 1
  br label %309

309:                                              ; preds = %302, %297, %292
  %310 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %311 = load i32, i32* %5, align 4
  %312 = load i32, i32* @CISREG_COR, align 4
  %313 = add i32 %311, %312
  %314 = lshr i32 %313, 1
  %315 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %310, i32 1, i32 %314, i32 1, i8* %11)
  %316 = call i32 @msleep(i32 40)
  br label %317

317:                                              ; preds = %309, %239
  %318 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %319 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @PRESENT_STATUS, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %317
  %325 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %326 = load i32, i32* %5, align 4
  %327 = load i32, i32* @CISREG_CCSR, align 4
  %328 = add i32 %326, %327
  %329 = lshr i32 %328, 1
  %330 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %325, i32 1, i32 %329, i32 1, i8* %9)
  br label %331

331:                                              ; preds = %324, %317
  %332 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %333 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @PRESENT_EXT_STATUS, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %331
  %339 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %340 = load i32, i32* %5, align 4
  %341 = load i32, i32* @CISREG_ESR, align 4
  %342 = add i32 %340, %341
  %343 = lshr i32 %342, 1
  %344 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %339, i32 1, i32 %343, i32 1, i8* %10)
  br label %345

345:                                              ; preds = %338, %331
  %346 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %347 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @PRESENT_IOBASE_0, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %382

352:                                              ; preds = %345
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i64 0
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = and i32 %358, 255
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %15, align 1
  %361 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %362 = load i32, i32* %5, align 4
  %363 = load i32, i32* @CISREG_IOBASE_0, align 4
  %364 = add i32 %362, %363
  %365 = lshr i32 %364, 1
  %366 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %361, i32 1, i32 %365, i32 1, i8* %15)
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 1
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i64 0
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = ashr i32 %372, 8
  %374 = and i32 %373, 255
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %15, align 1
  %376 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %377 = load i32, i32* %5, align 4
  %378 = load i32, i32* @CISREG_IOBASE_1, align 4
  %379 = add i32 %377, %378
  %380 = lshr i32 %379, 1
  %381 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %376, i32 1, i32 %380, i32 1, i8* %15)
  br label %382

382:                                              ; preds = %352, %345
  %383 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %384 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @PRESENT_IOSIZE, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %411

389:                                              ; preds = %382
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i64 0
  %394 = call zeroext i8 @resource_size(%struct.TYPE_16__* %393)
  %395 = zext i8 %394 to i32
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i64 1
  %400 = call zeroext i8 @resource_size(%struct.TYPE_16__* %399)
  %401 = zext i8 %400 to i32
  %402 = add nsw i32 %395, %401
  %403 = sub nsw i32 %402, 1
  %404 = trunc i32 %403 to i8
  store i8 %404, i8* %16, align 1
  %405 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %406 = load i32, i32* %5, align 4
  %407 = load i32, i32* @CISREG_IOSIZE, align 4
  %408 = add i32 %406, %407
  %409 = lshr i32 %408, 1
  %410 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %405, i32 1, i32 %409, i32 1, i8* %16)
  br label %411

411:                                              ; preds = %389, %382
  %412 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* @CONFIG_IO_REQ, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %507

418:                                              ; preds = %411
  %419 = load i32, i32* @io_speed, align 4
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  store i32 %419, i32* %420, align 4
  store i32 0, i32* %4, align 4
  br label %421

421:                                              ; preds = %503, %418
  %422 = load i32, i32* %4, align 4
  %423 = load i32, i32* @MAX_IO_WIN, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %506

425:                                              ; preds = %421
  %426 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %427 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %426, i32 0, i32 3
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** %427, align 8
  %429 = load i32, i32* %4, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %431, i32 0, i32 1
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %432, align 8
  %434 = icmp ne %struct.TYPE_10__* %433, null
  br i1 %434, label %435, label %502

435:                                              ; preds = %425
  %436 = load i32, i32* %4, align 4
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 %436, i32* %437, align 4
  %438 = load i32, i32* @MAP_ACTIVE, align 4
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32 %438, i32* %439, align 4
  %440 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %441 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %440, i32 0, i32 3
  %442 = load %struct.TYPE_11__*, %struct.TYPE_11__** %441, align 8
  %443 = load i32, i32* %4, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 1
  %447 = load %struct.TYPE_10__*, %struct.TYPE_10__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %451 = and i32 %449, %450
  switch i32 %451, label %462 [
    i32 129, label %452
    i32 128, label %457
  ]

452:                                              ; preds = %435
  %453 = load i32, i32* @MAP_16BIT, align 4
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %455 = load i32, i32* %454, align 4
  %456 = or i32 %455, %453
  store i32 %456, i32* %454, align 4
  br label %463

457:                                              ; preds = %435
  %458 = load i32, i32* @MAP_AUTOSZ, align 4
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = or i32 %460, %458
  store i32 %461, i32* %459, align 4
  br label %463

462:                                              ; preds = %435
  br label %463

463:                                              ; preds = %462, %457, %452
  %464 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %465 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %464, i32 0, i32 3
  %466 = load %struct.TYPE_11__*, %struct.TYPE_11__** %465, align 8
  %467 = load i32, i32* %4, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 1
  %471 = load %struct.TYPE_10__*, %struct.TYPE_10__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 4
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i32 %473, i32* %474, align 4
  %475 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %476 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %475, i32 0, i32 3
  %477 = load %struct.TYPE_11__*, %struct.TYPE_11__** %476, align 8
  %478 = load i32, i32* %4, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i32 0, i32 1
  %482 = load %struct.TYPE_10__*, %struct.TYPE_10__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 %484, i32* %485, align 4
  %486 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %487 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %486, i32 0, i32 4
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 0
  %490 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_13__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_13__*)** %489, align 8
  %491 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %492 = call i32 %490(%struct.pcmcia_socket* %491, %struct.TYPE_13__* %8)
  %493 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %494 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %493, i32 0, i32 3
  %495 = load %struct.TYPE_11__*, %struct.TYPE_11__** %494, align 8
  %496 = load i32, i32* %4, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %499, align 8
  br label %502

502:                                              ; preds = %463, %425
  br label %503

503:                                              ; preds = %502
  %504 = load i32, i32* %4, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %4, align 4
  br label %421

506:                                              ; preds = %421
  br label %507

507:                                              ; preds = %506, %411
  %508 = load i32, i32* @CONFIG_LOCKED, align 4
  %509 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = or i32 %511, %508
  store i32 %512, i32* %510, align 8
  %513 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %514 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %513, i32 0, i32 4
  store i32 1, i32* %514, align 8
  %515 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %516 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %515, i32 0, i32 2
  %517 = call i32 @mutex_unlock(i32* %516)
  store i32 0, i32* %2, align 4
  br label %518

518:                                              ; preds = %507, %71, %45, %29
  %519 = load i32, i32* %2, align 4
  ret i32 %519
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket*, i32, i32, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local zeroext i8 @resource_size(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
