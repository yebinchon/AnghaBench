; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_xo175_ec = type { i32, i32, i32*, i32*, i32, %struct.TYPE_16__*, i32, i32, i8*, i64, %struct.TYPE_15__, i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.device }
%struct.device = type { i32 }
%struct.power_supply = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"SPI transfer failed: %d\0A\00", align 1
@CMD_STATE_ERROR_RECEIVED = common dso_local global i8* null, align 8
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"spurious FIFO read packet\0A\00", align 1
@CMD_STATE_CMD_SENT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"spurious SWITCH packet\0A\00", align 1
@CMD_ECHO = common dso_local global i32 0, align 4
@CMD_STATE_CMD_IN_TX_FIFO = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"spurious response packet\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"too many response packets\0A\00", align 1
@CMD_STATE_RESP_RECEIVED = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"spurious cmd error packet\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"keyboard is not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"touchpad is not supported\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"got event %.2x\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"olpc-ac\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"olpc-battery\00", align 1
@KEY_POWER = common dso_local global i32 0, align 4
@PM_WAKEUP_TIME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"ignored unknown event %.2x\0A\00", align 1
@LOG_BUF_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"unknown channel: %d, %.2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @olpc_xo175_ec_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @olpc_xo175_ec_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.olpc_xo175_ec*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.olpc_xo175_ec*
  store %struct.olpc_xo175_ec* %11, %struct.olpc_xo175_ec** %3, align 8
  %12 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %13 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %12, i32 0, i32 14
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %17 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %16, i32 0, i32 13
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %27 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %26, i32 0, i32 6
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %31 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %36 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i8*, i8** @CMD_STATE_ERROR_RECEIVED, align 8
  %38 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %39 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %41 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %40, i32 0, i32 7
  %42 = call i32 @complete(i32* %41)
  br label %43

43:                                               ; preds = %34, %22
  %44 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %45 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %44, i32 0, i32 6
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @EINTR, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %54 = call i32 @olpc_xo175_ec_read_packet(%struct.olpc_xo175_ec* %53)
  br label %55

55:                                               ; preds = %52, %43
  br label %328

56:                                               ; preds = %1
  %57 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %58 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %57, i32 0, i32 12
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %7, align 4
  %62 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %63 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %62, i32 0, i32 12
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  switch i32 %67, label %320 [
    i32 138, label %68
    i32 137, label %103
    i32 142, label %138
    i32 143, label %193
    i32 139, label %224
    i32 136, label %227
    i32 140, label %230
    i32 141, label %288
  ]

68:                                               ; preds = %56
  %69 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %70 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %69, i32 0, i32 6
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %74 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %81 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %80, i32 0, i32 6
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %328

84:                                               ; preds = %68
  %85 = load i8*, i8** @CMD_STATE_CMD_SENT, align 8
  %86 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %87 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  %88 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %89 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %84
  %93 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %94 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %93, i32 0, i32 7
  %95 = call i32 @complete(i32* %94)
  br label %96

96:                                               ; preds = %92, %84
  %97 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %98 = call i32 @olpc_xo175_ec_read_packet(%struct.olpc_xo175_ec* %97)
  %99 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %100 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %99, i32 0, i32 6
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %328

103:                                              ; preds = %56
  %104 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %105 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %104, i32 0, i32 6
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %109 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %108, i32 0, i32 9
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %103
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %115 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %116 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %115, i32 0, i32 10
  %117 = call i32 @memset(%struct.TYPE_15__* %116, i32 0, i32 4)
  %118 = load i32, i32* @CMD_ECHO, align 4
  %119 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %120 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %119, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %112, %103
  %123 = load i8*, i8** @CMD_STATE_CMD_IN_TX_FIFO, align 8
  %124 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %125 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %124, i32 0, i32 8
  store i8* %123, i8** %125, align 8
  %126 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %127 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @gpiod_set_value_cansleep(i32 %128, i32 0)
  %130 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %131 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %132 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %131, i32 0, i32 10
  %133 = call i32 @olpc_xo175_ec_send_command(%struct.olpc_xo175_ec* %130, %struct.TYPE_15__* %132, i32 4)
  %134 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %135 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %134, i32 0, i32 6
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  br label %328

138:                                              ; preds = %56
  %139 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %140 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %139, i32 0, i32 6
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @spin_lock_irqsave(i32* %140, i64 %141)
  %143 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %144 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %138
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %188

150:                                              ; preds = %138
  %151 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %152 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %155 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp sge i32 %153, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %187

161:                                              ; preds = %150
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %164 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %167 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  store i32 %162, i32* %171, align 4
  %172 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %173 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %176 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %174, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %161
  %180 = load i8*, i8** @CMD_STATE_RESP_RECEIVED, align 8
  %181 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %182 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %181, i32 0, i32 8
  store i8* %180, i8** %182, align 8
  %183 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %184 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %183, i32 0, i32 7
  %185 = call i32 @complete(i32* %184)
  br label %186

186:                                              ; preds = %179, %161
  br label %187

187:                                              ; preds = %186, %158
  br label %188

188:                                              ; preds = %187, %147
  %189 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %190 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %189, i32 0, i32 6
  %191 = load i64, i64* %6, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  br label %325

193:                                              ; preds = %56
  %194 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %195 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %194, i32 0, i32 6
  %196 = load i64, i64* %6, align 8
  %197 = call i32 @spin_lock_irqsave(i32* %195, i64 %196)
  %198 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %199 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %198, i32 0, i32 9
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %193
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %203, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %219

205:                                              ; preds = %193
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %208 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %206, i32* %210, align 4
  %211 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %212 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %211, i32 0, i32 0
  store i32 1, i32* %212, align 8
  %213 = load i8*, i8** @CMD_STATE_ERROR_RECEIVED, align 8
  %214 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %215 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %214, i32 0, i32 8
  store i8* %213, i8** %215, align 8
  %216 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %217 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %216, i32 0, i32 7
  %218 = call i32 @complete(i32* %217)
  br label %219

219:                                              ; preds = %205, %202
  %220 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %221 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %220, i32 0, i32 6
  %222 = load i64, i64* %6, align 8
  %223 = call i32 @spin_unlock_irqrestore(i32* %221, i64 %222)
  br label %325

224:                                              ; preds = %56
  %225 = load %struct.device*, %struct.device** %4, align 8
  %226 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %225, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %325

227:                                              ; preds = %56
  %228 = load %struct.device*, %struct.device** %4, align 8
  %229 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %228, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %325

230:                                              ; preds = %56
  %231 = load %struct.device*, %struct.device** %4, align 8
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @dev_dbg(%struct.device* %231, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %8, align 4
  switch i32 %234, label %283 [
    i32 135, label %235
    i32 131, label %245
    i32 134, label %245
    i32 132, label %245
    i32 133, label %245
    i32 130, label %255
    i32 129, label %274
    i32 128, label %274
  ]

235:                                              ; preds = %230
  %236 = call %struct.power_supply* @power_supply_get_by_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store %struct.power_supply* %236, %struct.power_supply** %5, align 8
  %237 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %238 = icmp ne %struct.power_supply* %237, null
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %241 = call i32 @power_supply_changed(%struct.power_supply* %240)
  %242 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %243 = call i32 @power_supply_put(%struct.power_supply* %242)
  br label %244

244:                                              ; preds = %239, %235
  br label %287

245:                                              ; preds = %230, %230, %230, %230
  %246 = call %struct.power_supply* @power_supply_get_by_name(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store %struct.power_supply* %246, %struct.power_supply** %5, align 8
  %247 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %248 = icmp ne %struct.power_supply* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %245
  %250 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %251 = call i32 @power_supply_changed(%struct.power_supply* %250)
  %252 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %253 = call i32 @power_supply_put(%struct.power_supply* %252)
  br label %254

254:                                              ; preds = %249, %245
  br label %287

255:                                              ; preds = %230
  %256 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %257 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %256, i32 0, i32 5
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = load i32, i32* @KEY_POWER, align 4
  %260 = call i32 @input_report_key(%struct.TYPE_16__* %258, i32 %259, i32 1)
  %261 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %262 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %261, i32 0, i32 5
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %262, align 8
  %264 = call i32 @input_sync(%struct.TYPE_16__* %263)
  %265 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %266 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %265, i32 0, i32 5
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = load i32, i32* @KEY_POWER, align 4
  %269 = call i32 @input_report_key(%struct.TYPE_16__* %267, i32 %268, i32 0)
  %270 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %271 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %270, i32 0, i32 5
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %271, align 8
  %273 = call i32 @input_sync(%struct.TYPE_16__* %272)
  br label %274

274:                                              ; preds = %230, %230, %255
  %275 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %276 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %275, i32 0, i32 5
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @PM_WAKEUP_TIME, align 4
  %282 = call i32 @pm_wakeup_event(i32 %280, i32 %281)
  br label %287

283:                                              ; preds = %230
  %284 = load %struct.device*, %struct.device** %4, align 8
  %285 = load i32, i32* %8, align 4
  %286 = call i32 @dev_dbg(%struct.device* %284, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %285)
  br label %287

287:                                              ; preds = %283, %274, %254, %244
  br label %325

288:                                              ; preds = %56
  %289 = load i32, i32* %8, align 4
  %290 = icmp eq i32 %289, 10
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %293 = call i32 @olpc_xo175_ec_flush_logbuf(%struct.olpc_xo175_ec* %292)
  br label %319

294:                                              ; preds = %288
  %295 = load i32, i32* %8, align 4
  %296 = call i32 @isprint(i32 %295) #3
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %318

298:                                              ; preds = %294
  %299 = load i32, i32* %8, align 4
  %300 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %301 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %300, i32 0, i32 3
  %302 = load i32*, i32** %301, align 8
  %303 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %304 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %304, align 8
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i32, i32* %302, i64 %307
  store i32 %299, i32* %308, align 4
  %309 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %310 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @LOG_BUF_SIZE, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %298
  %315 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %316 = call i32 @olpc_xo175_ec_flush_logbuf(%struct.olpc_xo175_ec* %315)
  br label %317

317:                                              ; preds = %314, %298
  br label %318

318:                                              ; preds = %317, %294
  br label %319

319:                                              ; preds = %318, %291
  br label %325

320:                                              ; preds = %56
  %321 = load %struct.device*, %struct.device** %4, align 8
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* %8, align 4
  %324 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %321, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %320, %319, %287, %227, %224, %219, %188
  %326 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %3, align 8
  %327 = call i32 @olpc_xo175_ec_read_packet(%struct.olpc_xo175_ec* %326)
  br label %328

328:                                              ; preds = %325, %122, %96, %77, %55
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @olpc_xo175_ec_read_packet(%struct.olpc_xo175_ec*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @olpc_xo175_ec_send_command(%struct.olpc_xo175_ec*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.power_supply* @power_supply_get_by_name(i8*) #1

declare dso_local i32 @power_supply_changed(%struct.power_supply*) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

declare dso_local i32 @input_report_key(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @olpc_xo175_ec_flush_logbuf(%struct.olpc_xo175_ec*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
