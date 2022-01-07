; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_handle_env_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_handle_env_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ERRORLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"FORMAT 0 - Invalid Command\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"FORMAT 0 - Invalid Command Sequence\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"FORMAT 0 - CCW Count less than required\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"FORMAT 0 - Invalid Parameter\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"FORMAT 0 - Diagnostic of Special Command Violates File Mask\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"FORMAT 0 - Channel Returned with Incorrect retry CCW\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"FORMAT 0 - Reset Notification\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"FORMAT 0 - Storage Path Restart\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"FORMAT 0 - Channel requested ... %02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"FORMAT 0 - Invalid Defective/Alternate Track Pointer\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"FORMAT 0 - DPS Installation Check\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"FORMAT 0 - Command Invalid on Secondary Address\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"FORMAT 0 - Status Not As Required: reason %02x\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"FORMAT 0 - Reserved\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"FORMAT 0 - Device Error Source\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"FORMAT 0 - Device Fenced - device = %02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"FORMAT 0 - Data Pinned for Device\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"FORMAT 1 - Device Status 1 not as expected\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"FORMAT 1 - Index missing\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"FORMAT 1 - Interruption cannot be reset\0A\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"FORMAT 1 - Device did not respond to selection\0A\00", align 1
@.str.21 = private unnamed_addr constant [63 x i8] c"FORMAT 1 - Device check-2 error or Set Sector is not complete\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"FORMAT 1 - Head address does not compare\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"FORMAT 1 - Device status 1 not valid\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"FORMAT 1 - Device not ready\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"FORMAT 1 - Track physical address did not compare\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"FORMAT 1 - Missing device address bit\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"FORMAT 1 - Drive motor switch is off\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"FORMAT 1 - Seek incomplete\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"FORMAT 1 - Cylinder address did not compare\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"FORMAT 1 - Offset active cannot be reset\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"FORMAT 1 - Reserved\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"FORMAT 2 - 3990 check-2 error\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"FORMAT 2 - Support facility errors\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"FORMAT 2 - Microcode detected error %02x\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"FORMAT 2 - Reserved\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"FORMAT 3 - Allegiance terminated\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"FORMAT 3 - Reserved\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"FORMAT 4 - Home address area error\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"FORMAT 4 - Count area error\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"FORMAT 4 - Key area error\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"FORMAT 4 - Data area error\0A\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"FORMAT 4 - No sync byte in home address area\0A\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"FORMAT 4 - No sync byte in count address area\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"FORMAT 4 - No sync byte in key area\0A\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"FORMAT 4 - No sync byte in data area\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"FORMAT 4 - Home address area error; offset active\0A\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"FORMAT 4 - Count area error; offset active\0A\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"FORMAT 4 - Key area error; offset active\0A\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"FORMAT 4 - Data area error; offset active\0A\00", align 1
@.str.50 = private unnamed_addr constant [61 x i8] c"FORMAT 4 - No sync byte in home address area; offset active\0A\00", align 1
@.str.51 = private unnamed_addr constant [62 x i8] c"FORMAT 4 - No sync byte in count address area; offset active\0A\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"FORMAT 4 - No sync byte in key area; offset active\0A\00", align 1
@.str.53 = private unnamed_addr constant [53 x i8] c"FORMAT 4 - No sync byte in data area; offset active\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"FORMAT 4 - Reserved\0A\00", align 1
@.str.55 = private unnamed_addr constant [48 x i8] c"FORMAT 5 - Data Check in the home address area\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"FORMAT 5 - Data Check in the count area\0A\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"FORMAT 5 - Data Check in the key area\0A\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"FORMAT 5 - Data Check in the data area\0A\00", align 1
@.str.59 = private unnamed_addr constant [63 x i8] c"FORMAT 5 - Data Check in the home address area; offset active\0A\00", align 1
@.str.60 = private unnamed_addr constant [56 x i8] c"FORMAT 5 - Data Check in the count area; offset active\0A\00", align 1
@.str.61 = private unnamed_addr constant [54 x i8] c"FORMAT 5 - Data Check in the key area; offset active\0A\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"FORMAT 5 - Data Check in the data area; offset active\0A\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"FORMAT 5 - Reserved\0A\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"FORMAT 6 - Overrun on channel A\0A\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"FORMAT 6 - Overrun on channel B\0A\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"FORMAT 6 - Overrun on channel C\0A\00", align 1
@.str.67 = private unnamed_addr constant [33 x i8] c"FORMAT 6 - Overrun on channel D\0A\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"FORMAT 6 - Overrun on channel E\0A\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"FORMAT 6 - Overrun on channel F\0A\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"FORMAT 6 - Overrun on channel G\0A\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"FORMAT 6 - Overrun on channel H\0A\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"FORMAT 6 - Reserved\0A\00", align 1
@.str.73 = private unnamed_addr constant [54 x i8] c"FORMAT 7 - RCC initiated by a connection check alert\0A\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"FORMAT 7 - RCC 1 sequence not successful\0A\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"FORMAT 7 - RCC 1 and RCC 2 sequences not successful\0A\00", align 1
@.str.76 = private unnamed_addr constant [53 x i8] c"FORMAT 7 - Invalid tag-in during selection sequence\0A\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"FORMAT 7 - extra RCC required\0A\00", align 1
@.str.78 = private unnamed_addr constant [54 x i8] c"FORMAT 7 - Invalid DCC selection response or timeout\0A\00", align 1
@.str.79 = private unnamed_addr constant [60 x i8] c"FORMAT 7 - Missing end operation; device transfer complete\0A\00", align 1
@.str.80 = private unnamed_addr constant [62 x i8] c"FORMAT 7 - Missing end operation; device transfer incomplete\0A\00", align 1
@.str.81 = private unnamed_addr constant [61 x i8] c"FORMAT 7 - Invalid tag-in for an immediate command sequence\0A\00", align 1
@.str.82 = private unnamed_addr constant [60 x i8] c"FORMAT 7 - Invalid tag-in for an extended command sequence\0A\00", align 1
@.str.83 = private unnamed_addr constant [60 x i8] c"FORMAT 7 - 3990 microcode time out when stopping selection\0A\00", align 1
@.str.84 = private unnamed_addr constant [63 x i8] c"FORMAT 7 - No response to selection after a poll interruption\0A\00", align 1
@.str.85 = private unnamed_addr constant [65 x i8] c"FORMAT 7 - Permanent path error (DASD controller not available)\0A\00", align 1
@.str.86 = private unnamed_addr constant [72 x i8] c"FORMAT 7 - DASD controller not available on disconnected command chain\0A\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"FORMAT 7 - Reserved\0A\00", align 1
@.str.88 = private unnamed_addr constant [49 x i8] c"FORMAT 8 - Error correction code hardware fault\0A\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"FORMAT 8 - Unexpected end operation response code\0A\00", align 1
@.str.90 = private unnamed_addr constant [55 x i8] c"FORMAT 8 - End operation with transfer count not zero\0A\00", align 1
@.str.91 = private unnamed_addr constant [51 x i8] c"FORMAT 8 - End operation with transfer count zero\0A\00", align 1
@.str.92 = private unnamed_addr constant [63 x i8] c"FORMAT 8 - DPS checks after a system reset or selective reset\0A\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"FORMAT 8 - DPS cannot be filled\0A\00", align 1
@.str.94 = private unnamed_addr constant [56 x i8] c"FORMAT 8 - Short busy time-out during device selection\0A\00", align 1
@.str.95 = private unnamed_addr constant [71 x i8] c"FORMAT 8 - DASD controller failed to set or reset the long busy latch\0A\00", align 1
@.str.96 = private unnamed_addr constant [63 x i8] c"FORMAT 8 - No interruption from device during a command chain\0A\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"FORMAT 8 - Reserved\0A\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"FORMAT 9 - Device check-2 error\0A\00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c"FORMAT 9 - Head address did not compare\0A\00", align 1
@.str.100 = private unnamed_addr constant [66 x i8] c"FORMAT 9 - Track physical address did not compare while oriented\0A\00", align 1
@.str.101 = private unnamed_addr constant [45 x i8] c"FORMAT 9 - Cylinder address did not compare\0A\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"FORMAT 9 - Reserved\0A\00", align 1
@.str.103 = private unnamed_addr constant [33 x i8] c"FORMAT F - Operation Terminated\0A\00", align 1
@.str.104 = private unnamed_addr constant [39 x i8] c"FORMAT F - Subsystem Processing Error\0A\00", align 1
@.str.105 = private unnamed_addr constant [59 x i8] c"FORMAT F - Cache or nonvolatile storage equipment failure\0A\00", align 1
@.str.106 = private unnamed_addr constant [31 x i8] c"FORMAT F - Caching terminated\0A\00", align 1
@.str.107 = private unnamed_addr constant [51 x i8] c"FORMAT F - Cache fast write access not authorized\0A\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"FORMAT F - Track format incorrect\0A\00", align 1
@.str.109 = private unnamed_addr constant [32 x i8] c"FORMAT F - Caching reinitiated\0A\00", align 1
@.str.110 = private unnamed_addr constant [43 x i8] c"FORMAT F - Nonvolatile storage terminated\0A\00", align 1
@.str.111 = private unnamed_addr constant [39 x i8] c"FORMAT F - Volume is suspended duplex\0A\00", align 1
@DASD_EER_PPRCSUSPEND = common dso_local global i32 0, align 4
@.str.112 = private unnamed_addr constant [50 x i8] c"FORMAT F - Subsystem status cannot be determined\0A\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"FORMAT F - Caching status reset to default\0A\00", align 1
@.str.114 = private unnamed_addr constant [38 x i8] c"FORMAT F - DASD Fast Write inhibited\0A\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"FORMAT F - Reserved\0A\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"03 %x02\00", align 1
@.str.117 = private unnamed_addr constant [56 x i8] c"An error occurred in the DASD device driver, reason=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*, i8*)* @dasd_3990_handle_env_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_3990_handle_env_data(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %10, i32 0, i32 1
  %12 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  store %struct.dasd_device* %12, %struct.dasd_device** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 7
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = and i32 %16, 240
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 7
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = and i32 %22, 15
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %7, align 1
  %25 = load i32, i32* @ERRORLENGTH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %821 [
    i32 0, label %31
    i32 16, label %175
    i32 32, label %270
    i32 48, label %302
    i32 64, label %318
    i32 80, label %424
    i32 96, label %482
    i32 112, label %540
    i32 128, label %634
    i32 144, label %698
    i32 240, label %733
  ]

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 16
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %135

38:                                               ; preds = %31
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %128 [
    i32 0, label %41
    i32 1, label %42
    i32 2, label %48
    i32 3, label %54
    i32 4, label %60
    i32 5, label %66
    i32 7, label %72
    i32 8, label %78
    i32 9, label %84
    i32 10, label %90
    i32 11, label %100
    i32 12, label %106
    i32 14, label %112
    i32 15, label %118
  ]

41:                                               ; preds = %38
  br label %134

42:                                               ; preds = %38
  %43 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %44 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_warn(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %134

48:                                               ; preds = %38
  %49 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %50 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_warn(i32* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %134

54:                                               ; preds = %38
  %55 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %56 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_warn(i32* %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %134

60:                                               ; preds = %38
  %61 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %62 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_warn(i32* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %134

66:                                               ; preds = %38
  %67 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %68 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @dev_warn(i32* %70, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  br label %134

72:                                               ; preds = %38
  %73 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %74 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 (i32*, i8*, ...) @dev_warn(i32* %76, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %134

78:                                               ; preds = %38
  %79 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %80 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_warn(i32* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %134

84:                                               ; preds = %38
  %85 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %86 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_warn(i32* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %134

90:                                               ; preds = %38
  %91 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %92 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = call i32 (i32*, i8*, ...) @dev_warn(i32* %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  br label %134

100:                                              ; preds = %38
  %101 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %102 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 (i32*, i8*, ...) @dev_warn(i32* %104, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  br label %134

106:                                              ; preds = %38
  %107 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %108 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_warn(i32* %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %134

112:                                              ; preds = %38
  %113 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %114 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_warn(i32* %116, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %134

118:                                              ; preds = %38
  %119 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %120 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = call i32 (i32*, i8*, ...) @dev_warn(i32* %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %126)
  br label %134

128:                                              ; preds = %38
  %129 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %130 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = call i32 (i32*, i8*, ...) @dev_warn(i32* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  br label %134

134:                                              ; preds = %128, %118, %112, %106, %100, %90, %84, %78, %72, %66, %60, %54, %48, %42, %41
  br label %174

135:                                              ; preds = %31
  %136 = load i8, i8* %7, align 1
  %137 = sext i8 %136 to i32
  switch i32 %137, label %167 [
    i32 0, label %138
    i32 1, label %139
    i32 2, label %145
    i32 3, label %151
    i32 4, label %161
  ]

138:                                              ; preds = %135
  br label %173

139:                                              ; preds = %135
  %140 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %141 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = call i32 (i32*, i8*, ...) @dev_warn(i32* %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  br label %173

145:                                              ; preds = %135
  %146 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %147 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = call i32 (i32*, i8*, ...) @dev_warn(i32* %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  br label %173

151:                                              ; preds = %135
  %152 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %153 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 4
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = call i32 (i32*, i8*, ...) @dev_warn(i32* %155, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %159)
  br label %173

161:                                              ; preds = %135
  %162 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %163 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = call i32 (i32*, i8*, ...) @dev_warn(i32* %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  br label %173

167:                                              ; preds = %135
  %168 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %169 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = call i32 (i32*, i8*, ...) @dev_warn(i32* %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  br label %173

173:                                              ; preds = %167, %161, %151, %145, %139, %138
  br label %174

174:                                              ; preds = %173, %134
  br label %830

175:                                              ; preds = %2
  %176 = load i8, i8* %7, align 1
  %177 = sext i8 %176 to i32
  switch i32 %177, label %263 [
    i32 0, label %178
    i32 1, label %179
    i32 3, label %185
    i32 4, label %191
    i32 5, label %197
    i32 6, label %203
    i32 7, label %209
    i32 8, label %215
    i32 9, label %221
    i32 10, label %227
    i32 11, label %233
    i32 12, label %239
    i32 13, label %245
    i32 14, label %251
    i32 15, label %257
  ]

178:                                              ; preds = %175
  br label %269

179:                                              ; preds = %175
  %180 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %181 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = call i32 (i32*, i8*, ...) @dev_warn(i32* %183, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0))
  br label %269

185:                                              ; preds = %175
  %186 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %187 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = call i32 (i32*, i8*, ...) @dev_warn(i32* %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  br label %269

191:                                              ; preds = %175
  %192 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %193 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %192, i32 0, i32 0
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = call i32 (i32*, i8*, ...) @dev_warn(i32* %195, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  br label %269

197:                                              ; preds = %175
  %198 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %199 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %198, i32 0, i32 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = call i32 (i32*, i8*, ...) @dev_warn(i32* %201, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0))
  br label %269

203:                                              ; preds = %175
  %204 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %205 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %204, i32 0, i32 0
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = call i32 (i32*, i8*, ...) @dev_warn(i32* %207, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.21, i64 0, i64 0))
  br label %269

209:                                              ; preds = %175
  %210 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %211 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = call i32 (i32*, i8*, ...) @dev_warn(i32* %213, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  br label %269

215:                                              ; preds = %175
  %216 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %217 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %216, i32 0, i32 0
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = call i32 (i32*, i8*, ...) @dev_warn(i32* %219, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0))
  br label %269

221:                                              ; preds = %175
  %222 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %223 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %222, i32 0, i32 0
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = call i32 (i32*, i8*, ...) @dev_warn(i32* %225, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0))
  br label %269

227:                                              ; preds = %175
  %228 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %229 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %228, i32 0, i32 0
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = call i32 (i32*, i8*, ...) @dev_warn(i32* %231, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0))
  br label %269

233:                                              ; preds = %175
  %234 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %235 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %234, i32 0, i32 0
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = call i32 (i32*, i8*, ...) @dev_warn(i32* %237, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0))
  br label %269

239:                                              ; preds = %175
  %240 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %241 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %240, i32 0, i32 0
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = call i32 (i32*, i8*, ...) @dev_warn(i32* %243, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0))
  br label %269

245:                                              ; preds = %175
  %246 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %247 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %246, i32 0, i32 0
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = call i32 (i32*, i8*, ...) @dev_warn(i32* %249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  br label %269

251:                                              ; preds = %175
  %252 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %253 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %252, i32 0, i32 0
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = call i32 (i32*, i8*, ...) @dev_warn(i32* %255, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0))
  br label %269

257:                                              ; preds = %175
  %258 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %259 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %258, i32 0, i32 0
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = call i32 (i32*, i8*, ...) @dev_warn(i32* %261, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0))
  br label %269

263:                                              ; preds = %175
  %264 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %265 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %264, i32 0, i32 0
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = call i32 (i32*, i8*, ...) @dev_warn(i32* %267, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0))
  br label %269

269:                                              ; preds = %263, %257, %251, %245, %239, %233, %227, %221, %215, %209, %203, %197, %191, %185, %179, %178
  br label %830

270:                                              ; preds = %2
  %271 = load i8, i8* %7, align 1
  %272 = sext i8 %271 to i32
  switch i32 %272, label %295 [
    i32 8, label %273
    i32 14, label %279
    i32 15, label %285
  ]

273:                                              ; preds = %270
  %274 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %275 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %274, i32 0, i32 0
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = call i32 (i32*, i8*, ...) @dev_warn(i32* %277, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0))
  br label %301

279:                                              ; preds = %270
  %280 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %281 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %280, i32 0, i32 0
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 0
  %284 = call i32 (i32*, i8*, ...) @dev_warn(i32* %283, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0))
  br label %301

285:                                              ; preds = %270
  %286 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %287 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %286, i32 0, i32 0
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i8*, i8** %4, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 8
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = call i32 (i32*, i8*, ...) @dev_warn(i32* %289, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i64 0, i64 0), i32 %293)
  br label %301

295:                                              ; preds = %270
  %296 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %297 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %296, i32 0, i32 0
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = call i32 (i32*, i8*, ...) @dev_warn(i32* %299, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0))
  br label %301

301:                                              ; preds = %295, %285, %279, %273
  br label %830

302:                                              ; preds = %2
  %303 = load i8, i8* %7, align 1
  %304 = sext i8 %303 to i32
  switch i32 %304, label %311 [
    i32 15, label %305
  ]

305:                                              ; preds = %302
  %306 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %307 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %306, i32 0, i32 0
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 0
  %310 = call i32 (i32*, i8*, ...) @dev_warn(i32* %309, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0))
  br label %317

311:                                              ; preds = %302
  %312 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %313 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %312, i32 0, i32 0
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = call i32 (i32*, i8*, ...) @dev_warn(i32* %315, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  br label %317

317:                                              ; preds = %311, %305
  br label %830

318:                                              ; preds = %2
  %319 = load i8, i8* %7, align 1
  %320 = sext i8 %319 to i32
  switch i32 %320, label %417 [
    i32 0, label %321
    i32 1, label %327
    i32 2, label %333
    i32 3, label %339
    i32 4, label %345
    i32 5, label %351
    i32 6, label %357
    i32 7, label %363
    i32 8, label %369
    i32 9, label %375
    i32 10, label %381
    i32 11, label %387
    i32 12, label %393
    i32 13, label %399
    i32 14, label %405
    i32 15, label %411
  ]

321:                                              ; preds = %318
  %322 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %323 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %322, i32 0, i32 0
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = call i32 (i32*, i8*, ...) @dev_warn(i32* %325, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0))
  br label %423

327:                                              ; preds = %318
  %328 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %329 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %328, i32 0, i32 0
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  %332 = call i32 (i32*, i8*, ...) @dev_warn(i32* %331, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0))
  br label %423

333:                                              ; preds = %318
  %334 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %335 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %334, i32 0, i32 0
  %336 = load %struct.TYPE_2__*, %struct.TYPE_2__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 0
  %338 = call i32 (i32*, i8*, ...) @dev_warn(i32* %337, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0))
  br label %423

339:                                              ; preds = %318
  %340 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %341 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %340, i32 0, i32 0
  %342 = load %struct.TYPE_2__*, %struct.TYPE_2__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 0
  %344 = call i32 (i32*, i8*, ...) @dev_warn(i32* %343, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0))
  br label %423

345:                                              ; preds = %318
  %346 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %347 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %346, i32 0, i32 0
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 0
  %350 = call i32 (i32*, i8*, ...) @dev_warn(i32* %349, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i64 0, i64 0))
  br label %423

351:                                              ; preds = %318
  %352 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %353 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %352, i32 0, i32 0
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = call i32 (i32*, i8*, ...) @dev_warn(i32* %355, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i64 0, i64 0))
  br label %423

357:                                              ; preds = %318
  %358 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %359 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %358, i32 0, i32 0
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 0
  %362 = call i32 (i32*, i8*, ...) @dev_warn(i32* %361, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i64 0, i64 0))
  br label %423

363:                                              ; preds = %318
  %364 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %365 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %364, i32 0, i32 0
  %366 = load %struct.TYPE_2__*, %struct.TYPE_2__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 0
  %368 = call i32 (i32*, i8*, ...) @dev_warn(i32* %367, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i64 0, i64 0))
  br label %423

369:                                              ; preds = %318
  %370 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %371 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %370, i32 0, i32 0
  %372 = load %struct.TYPE_2__*, %struct.TYPE_2__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 0
  %374 = call i32 (i32*, i8*, ...) @dev_warn(i32* %373, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0))
  br label %423

375:                                              ; preds = %318
  %376 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %377 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %376, i32 0, i32 0
  %378 = load %struct.TYPE_2__*, %struct.TYPE_2__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 0
  %380 = call i32 (i32*, i8*, ...) @dev_warn(i32* %379, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.47, i64 0, i64 0))
  br label %423

381:                                              ; preds = %318
  %382 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %383 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %382, i32 0, i32 0
  %384 = load %struct.TYPE_2__*, %struct.TYPE_2__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 0
  %386 = call i32 (i32*, i8*, ...) @dev_warn(i32* %385, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i64 0, i64 0))
  br label %423

387:                                              ; preds = %318
  %388 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %389 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %388, i32 0, i32 0
  %390 = load %struct.TYPE_2__*, %struct.TYPE_2__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i32 0, i32 0
  %392 = call i32 (i32*, i8*, ...) @dev_warn(i32* %391, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0))
  br label %423

393:                                              ; preds = %318
  %394 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %395 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %394, i32 0, i32 0
  %396 = load %struct.TYPE_2__*, %struct.TYPE_2__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 0
  %398 = call i32 (i32*, i8*, ...) @dev_warn(i32* %397, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.50, i64 0, i64 0))
  br label %423

399:                                              ; preds = %318
  %400 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %401 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %400, i32 0, i32 0
  %402 = load %struct.TYPE_2__*, %struct.TYPE_2__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 0
  %404 = call i32 (i32*, i8*, ...) @dev_warn(i32* %403, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.51, i64 0, i64 0))
  br label %423

405:                                              ; preds = %318
  %406 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %407 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %406, i32 0, i32 0
  %408 = load %struct.TYPE_2__*, %struct.TYPE_2__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 0
  %410 = call i32 (i32*, i8*, ...) @dev_warn(i32* %409, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.52, i64 0, i64 0))
  br label %423

411:                                              ; preds = %318
  %412 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %413 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %412, i32 0, i32 0
  %414 = load %struct.TYPE_2__*, %struct.TYPE_2__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 0
  %416 = call i32 (i32*, i8*, ...) @dev_warn(i32* %415, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.53, i64 0, i64 0))
  br label %423

417:                                              ; preds = %318
  %418 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %419 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %418, i32 0, i32 0
  %420 = load %struct.TYPE_2__*, %struct.TYPE_2__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 0
  %422 = call i32 (i32*, i8*, ...) @dev_warn(i32* %421, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0))
  br label %423

423:                                              ; preds = %417, %411, %405, %399, %393, %387, %381, %375, %369, %363, %357, %351, %345, %339, %333, %327, %321
  br label %830

424:                                              ; preds = %2
  %425 = load i8, i8* %7, align 1
  %426 = sext i8 %425 to i32
  switch i32 %426, label %475 [
    i32 0, label %427
    i32 1, label %433
    i32 2, label %439
    i32 3, label %445
    i32 8, label %451
    i32 9, label %457
    i32 10, label %463
    i32 11, label %469
  ]

427:                                              ; preds = %424
  %428 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %429 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %428, i32 0, i32 0
  %430 = load %struct.TYPE_2__*, %struct.TYPE_2__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %430, i32 0, i32 0
  %432 = call i32 (i32*, i8*, ...) @dev_warn(i32* %431, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.55, i64 0, i64 0))
  br label %481

433:                                              ; preds = %424
  %434 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %435 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %434, i32 0, i32 0
  %436 = load %struct.TYPE_2__*, %struct.TYPE_2__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %436, i32 0, i32 0
  %438 = call i32 (i32*, i8*, ...) @dev_warn(i32* %437, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0))
  br label %481

439:                                              ; preds = %424
  %440 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %441 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %440, i32 0, i32 0
  %442 = load %struct.TYPE_2__*, %struct.TYPE_2__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 0
  %444 = call i32 (i32*, i8*, ...) @dev_warn(i32* %443, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i64 0, i64 0))
  br label %481

445:                                              ; preds = %424
  %446 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %447 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %446, i32 0, i32 0
  %448 = load %struct.TYPE_2__*, %struct.TYPE_2__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %448, i32 0, i32 0
  %450 = call i32 (i32*, i8*, ...) @dev_warn(i32* %449, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.58, i64 0, i64 0))
  br label %481

451:                                              ; preds = %424
  %452 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %453 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %452, i32 0, i32 0
  %454 = load %struct.TYPE_2__*, %struct.TYPE_2__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %454, i32 0, i32 0
  %456 = call i32 (i32*, i8*, ...) @dev_warn(i32* %455, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.59, i64 0, i64 0))
  br label %481

457:                                              ; preds = %424
  %458 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %459 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %458, i32 0, i32 0
  %460 = load %struct.TYPE_2__*, %struct.TYPE_2__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %460, i32 0, i32 0
  %462 = call i32 (i32*, i8*, ...) @dev_warn(i32* %461, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0))
  br label %481

463:                                              ; preds = %424
  %464 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %465 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %464, i32 0, i32 0
  %466 = load %struct.TYPE_2__*, %struct.TYPE_2__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %466, i32 0, i32 0
  %468 = call i32 (i32*, i8*, ...) @dev_warn(i32* %467, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.61, i64 0, i64 0))
  br label %481

469:                                              ; preds = %424
  %470 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %471 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %470, i32 0, i32 0
  %472 = load %struct.TYPE_2__*, %struct.TYPE_2__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %472, i32 0, i32 0
  %474 = call i32 (i32*, i8*, ...) @dev_warn(i32* %473, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.62, i64 0, i64 0))
  br label %481

475:                                              ; preds = %424
  %476 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %477 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %476, i32 0, i32 0
  %478 = load %struct.TYPE_2__*, %struct.TYPE_2__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %478, i32 0, i32 0
  %480 = call i32 (i32*, i8*, ...) @dev_warn(i32* %479, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0))
  br label %481

481:                                              ; preds = %475, %469, %463, %457, %451, %445, %439, %433, %427
  br label %830

482:                                              ; preds = %2
  %483 = load i8, i8* %7, align 1
  %484 = sext i8 %483 to i32
  switch i32 %484, label %533 [
    i32 0, label %485
    i32 1, label %491
    i32 2, label %497
    i32 3, label %503
    i32 4, label %509
    i32 5, label %515
    i32 6, label %521
    i32 7, label %527
  ]

485:                                              ; preds = %482
  %486 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %487 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %486, i32 0, i32 0
  %488 = load %struct.TYPE_2__*, %struct.TYPE_2__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %488, i32 0, i32 0
  %490 = call i32 (i32*, i8*, ...) @dev_warn(i32* %489, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i64 0, i64 0))
  br label %539

491:                                              ; preds = %482
  %492 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %493 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %492, i32 0, i32 0
  %494 = load %struct.TYPE_2__*, %struct.TYPE_2__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %494, i32 0, i32 0
  %496 = call i32 (i32*, i8*, ...) @dev_warn(i32* %495, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i64 0, i64 0))
  br label %539

497:                                              ; preds = %482
  %498 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %499 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %498, i32 0, i32 0
  %500 = load %struct.TYPE_2__*, %struct.TYPE_2__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %500, i32 0, i32 0
  %502 = call i32 (i32*, i8*, ...) @dev_warn(i32* %501, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.66, i64 0, i64 0))
  br label %539

503:                                              ; preds = %482
  %504 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %505 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %504, i32 0, i32 0
  %506 = load %struct.TYPE_2__*, %struct.TYPE_2__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %506, i32 0, i32 0
  %508 = call i32 (i32*, i8*, ...) @dev_warn(i32* %507, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i64 0, i64 0))
  br label %539

509:                                              ; preds = %482
  %510 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %511 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %510, i32 0, i32 0
  %512 = load %struct.TYPE_2__*, %struct.TYPE_2__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %512, i32 0, i32 0
  %514 = call i32 (i32*, i8*, ...) @dev_warn(i32* %513, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i64 0, i64 0))
  br label %539

515:                                              ; preds = %482
  %516 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %517 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %516, i32 0, i32 0
  %518 = load %struct.TYPE_2__*, %struct.TYPE_2__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %518, i32 0, i32 0
  %520 = call i32 (i32*, i8*, ...) @dev_warn(i32* %519, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i64 0, i64 0))
  br label %539

521:                                              ; preds = %482
  %522 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %523 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %522, i32 0, i32 0
  %524 = load %struct.TYPE_2__*, %struct.TYPE_2__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %524, i32 0, i32 0
  %526 = call i32 (i32*, i8*, ...) @dev_warn(i32* %525, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i64 0, i64 0))
  br label %539

527:                                              ; preds = %482
  %528 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %529 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %528, i32 0, i32 0
  %530 = load %struct.TYPE_2__*, %struct.TYPE_2__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %530, i32 0, i32 0
  %532 = call i32 (i32*, i8*, ...) @dev_warn(i32* %531, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.71, i64 0, i64 0))
  br label %539

533:                                              ; preds = %482
  %534 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %535 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %534, i32 0, i32 0
  %536 = load %struct.TYPE_2__*, %struct.TYPE_2__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %536, i32 0, i32 0
  %538 = call i32 (i32*, i8*, ...) @dev_warn(i32* %537, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i64 0, i64 0))
  br label %539

539:                                              ; preds = %533, %527, %521, %515, %509, %503, %497, %491, %485
  br label %830

540:                                              ; preds = %2
  %541 = load i8, i8* %7, align 1
  %542 = sext i8 %541 to i32
  switch i32 %542, label %627 [
    i32 0, label %543
    i32 1, label %549
    i32 2, label %555
    i32 3, label %561
    i32 4, label %567
    i32 5, label %573
    i32 6, label %579
    i32 7, label %585
    i32 8, label %591
    i32 9, label %597
    i32 10, label %603
    i32 11, label %609
    i32 12, label %615
    i32 13, label %621
  ]

543:                                              ; preds = %540
  %544 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %545 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %544, i32 0, i32 0
  %546 = load %struct.TYPE_2__*, %struct.TYPE_2__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %546, i32 0, i32 0
  %548 = call i32 (i32*, i8*, ...) @dev_warn(i32* %547, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.73, i64 0, i64 0))
  br label %633

549:                                              ; preds = %540
  %550 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %551 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %550, i32 0, i32 0
  %552 = load %struct.TYPE_2__*, %struct.TYPE_2__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %552, i32 0, i32 0
  %554 = call i32 (i32*, i8*, ...) @dev_warn(i32* %553, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i64 0, i64 0))
  br label %633

555:                                              ; preds = %540
  %556 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %557 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %556, i32 0, i32 0
  %558 = load %struct.TYPE_2__*, %struct.TYPE_2__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %558, i32 0, i32 0
  %560 = call i32 (i32*, i8*, ...) @dev_warn(i32* %559, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.75, i64 0, i64 0))
  br label %633

561:                                              ; preds = %540
  %562 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %563 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %562, i32 0, i32 0
  %564 = load %struct.TYPE_2__*, %struct.TYPE_2__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %564, i32 0, i32 0
  %566 = call i32 (i32*, i8*, ...) @dev_warn(i32* %565, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.76, i64 0, i64 0))
  br label %633

567:                                              ; preds = %540
  %568 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %569 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %568, i32 0, i32 0
  %570 = load %struct.TYPE_2__*, %struct.TYPE_2__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %570, i32 0, i32 0
  %572 = call i32 (i32*, i8*, ...) @dev_warn(i32* %571, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0))
  br label %633

573:                                              ; preds = %540
  %574 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %575 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %574, i32 0, i32 0
  %576 = load %struct.TYPE_2__*, %struct.TYPE_2__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %576, i32 0, i32 0
  %578 = call i32 (i32*, i8*, ...) @dev_warn(i32* %577, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.78, i64 0, i64 0))
  br label %633

579:                                              ; preds = %540
  %580 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %581 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %580, i32 0, i32 0
  %582 = load %struct.TYPE_2__*, %struct.TYPE_2__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %582, i32 0, i32 0
  %584 = call i32 (i32*, i8*, ...) @dev_warn(i32* %583, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.79, i64 0, i64 0))
  br label %633

585:                                              ; preds = %540
  %586 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %587 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %586, i32 0, i32 0
  %588 = load %struct.TYPE_2__*, %struct.TYPE_2__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %588, i32 0, i32 0
  %590 = call i32 (i32*, i8*, ...) @dev_warn(i32* %589, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.80, i64 0, i64 0))
  br label %633

591:                                              ; preds = %540
  %592 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %593 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %592, i32 0, i32 0
  %594 = load %struct.TYPE_2__*, %struct.TYPE_2__** %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %594, i32 0, i32 0
  %596 = call i32 (i32*, i8*, ...) @dev_warn(i32* %595, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.81, i64 0, i64 0))
  br label %633

597:                                              ; preds = %540
  %598 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %599 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %598, i32 0, i32 0
  %600 = load %struct.TYPE_2__*, %struct.TYPE_2__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %600, i32 0, i32 0
  %602 = call i32 (i32*, i8*, ...) @dev_warn(i32* %601, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.82, i64 0, i64 0))
  br label %633

603:                                              ; preds = %540
  %604 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %605 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %604, i32 0, i32 0
  %606 = load %struct.TYPE_2__*, %struct.TYPE_2__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %606, i32 0, i32 0
  %608 = call i32 (i32*, i8*, ...) @dev_warn(i32* %607, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.83, i64 0, i64 0))
  br label %633

609:                                              ; preds = %540
  %610 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %611 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %610, i32 0, i32 0
  %612 = load %struct.TYPE_2__*, %struct.TYPE_2__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %612, i32 0, i32 0
  %614 = call i32 (i32*, i8*, ...) @dev_warn(i32* %613, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.84, i64 0, i64 0))
  br label %633

615:                                              ; preds = %540
  %616 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %617 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %616, i32 0, i32 0
  %618 = load %struct.TYPE_2__*, %struct.TYPE_2__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %618, i32 0, i32 0
  %620 = call i32 (i32*, i8*, ...) @dev_warn(i32* %619, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.85, i64 0, i64 0))
  br label %633

621:                                              ; preds = %540
  %622 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %623 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %622, i32 0, i32 0
  %624 = load %struct.TYPE_2__*, %struct.TYPE_2__** %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %624, i32 0, i32 0
  %626 = call i32 (i32*, i8*, ...) @dev_warn(i32* %625, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.86, i64 0, i64 0))
  br label %633

627:                                              ; preds = %540
  %628 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %629 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %628, i32 0, i32 0
  %630 = load %struct.TYPE_2__*, %struct.TYPE_2__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %630, i32 0, i32 0
  %632 = call i32 (i32*, i8*, ...) @dev_warn(i32* %631, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i64 0, i64 0))
  br label %633

633:                                              ; preds = %627, %621, %615, %609, %603, %597, %591, %585, %579, %573, %567, %561, %555, %549, %543
  br label %830

634:                                              ; preds = %2
  %635 = load i8, i8* %7, align 1
  %636 = sext i8 %635 to i32
  switch i32 %636, label %691 [
    i32 0, label %637
    i32 1, label %637
    i32 3, label %643
    i32 4, label %649
    i32 5, label %655
    i32 6, label %661
    i32 7, label %667
    i32 8, label %673
    i32 9, label %679
    i32 10, label %685
  ]

637:                                              ; preds = %634, %634
  %638 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %639 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %638, i32 0, i32 0
  %640 = load %struct.TYPE_2__*, %struct.TYPE_2__** %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %640, i32 0, i32 0
  %642 = call i32 (i32*, i8*, ...) @dev_warn(i32* %641, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.88, i64 0, i64 0))
  br label %697

643:                                              ; preds = %634
  %644 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %645 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %644, i32 0, i32 0
  %646 = load %struct.TYPE_2__*, %struct.TYPE_2__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %646, i32 0, i32 0
  %648 = call i32 (i32*, i8*, ...) @dev_warn(i32* %647, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.89, i64 0, i64 0))
  br label %697

649:                                              ; preds = %634
  %650 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %651 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %650, i32 0, i32 0
  %652 = load %struct.TYPE_2__*, %struct.TYPE_2__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %652, i32 0, i32 0
  %654 = call i32 (i32*, i8*, ...) @dev_warn(i32* %653, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.90, i64 0, i64 0))
  br label %697

655:                                              ; preds = %634
  %656 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %657 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %656, i32 0, i32 0
  %658 = load %struct.TYPE_2__*, %struct.TYPE_2__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %658, i32 0, i32 0
  %660 = call i32 (i32*, i8*, ...) @dev_warn(i32* %659, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.91, i64 0, i64 0))
  br label %697

661:                                              ; preds = %634
  %662 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %663 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %662, i32 0, i32 0
  %664 = load %struct.TYPE_2__*, %struct.TYPE_2__** %663, align 8
  %665 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %664, i32 0, i32 0
  %666 = call i32 (i32*, i8*, ...) @dev_warn(i32* %665, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.92, i64 0, i64 0))
  br label %697

667:                                              ; preds = %634
  %668 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %669 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %668, i32 0, i32 0
  %670 = load %struct.TYPE_2__*, %struct.TYPE_2__** %669, align 8
  %671 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %670, i32 0, i32 0
  %672 = call i32 (i32*, i8*, ...) @dev_warn(i32* %671, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.93, i64 0, i64 0))
  br label %697

673:                                              ; preds = %634
  %674 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %675 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %674, i32 0, i32 0
  %676 = load %struct.TYPE_2__*, %struct.TYPE_2__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %676, i32 0, i32 0
  %678 = call i32 (i32*, i8*, ...) @dev_warn(i32* %677, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.94, i64 0, i64 0))
  br label %697

679:                                              ; preds = %634
  %680 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %681 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %680, i32 0, i32 0
  %682 = load %struct.TYPE_2__*, %struct.TYPE_2__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %682, i32 0, i32 0
  %684 = call i32 (i32*, i8*, ...) @dev_warn(i32* %683, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.95, i64 0, i64 0))
  br label %697

685:                                              ; preds = %634
  %686 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %687 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %686, i32 0, i32 0
  %688 = load %struct.TYPE_2__*, %struct.TYPE_2__** %687, align 8
  %689 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %688, i32 0, i32 0
  %690 = call i32 (i32*, i8*, ...) @dev_warn(i32* %689, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.96, i64 0, i64 0))
  br label %697

691:                                              ; preds = %634
  %692 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %693 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %692, i32 0, i32 0
  %694 = load %struct.TYPE_2__*, %struct.TYPE_2__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %694, i32 0, i32 0
  %696 = call i32 (i32*, i8*, ...) @dev_warn(i32* %695, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i64 0, i64 0))
  br label %697

697:                                              ; preds = %691, %685, %679, %673, %667, %661, %655, %649, %643, %637
  br label %830

698:                                              ; preds = %2
  %699 = load i8, i8* %7, align 1
  %700 = sext i8 %699 to i32
  switch i32 %700, label %726 [
    i32 0, label %701
    i32 6, label %702
    i32 7, label %708
    i32 10, label %714
    i32 14, label %720
  ]

701:                                              ; preds = %698
  br label %732

702:                                              ; preds = %698
  %703 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %704 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %703, i32 0, i32 0
  %705 = load %struct.TYPE_2__*, %struct.TYPE_2__** %704, align 8
  %706 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %705, i32 0, i32 0
  %707 = call i32 (i32*, i8*, ...) @dev_warn(i32* %706, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.98, i64 0, i64 0))
  br label %732

708:                                              ; preds = %698
  %709 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %710 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %709, i32 0, i32 0
  %711 = load %struct.TYPE_2__*, %struct.TYPE_2__** %710, align 8
  %712 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %711, i32 0, i32 0
  %713 = call i32 (i32*, i8*, ...) @dev_warn(i32* %712, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i64 0, i64 0))
  br label %732

714:                                              ; preds = %698
  %715 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %716 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %715, i32 0, i32 0
  %717 = load %struct.TYPE_2__*, %struct.TYPE_2__** %716, align 8
  %718 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %717, i32 0, i32 0
  %719 = call i32 (i32*, i8*, ...) @dev_warn(i32* %718, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.100, i64 0, i64 0))
  br label %732

720:                                              ; preds = %698
  %721 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %722 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %721, i32 0, i32 0
  %723 = load %struct.TYPE_2__*, %struct.TYPE_2__** %722, align 8
  %724 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %723, i32 0, i32 0
  %725 = call i32 (i32*, i8*, ...) @dev_warn(i32* %724, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.101, i64 0, i64 0))
  br label %732

726:                                              ; preds = %698
  %727 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %728 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %727, i32 0, i32 0
  %729 = load %struct.TYPE_2__*, %struct.TYPE_2__** %728, align 8
  %730 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %729, i32 0, i32 0
  %731 = call i32 (i32*, i8*, ...) @dev_warn(i32* %730, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i64 0, i64 0))
  br label %732

732:                                              ; preds = %726, %720, %714, %708, %702, %701
  br label %830

733:                                              ; preds = %2
  %734 = load i8, i8* %7, align 1
  %735 = sext i8 %734 to i32
  switch i32 %735, label %814 [
    i32 0, label %736
    i32 1, label %742
    i32 2, label %748
    i32 4, label %754
    i32 6, label %760
    i32 7, label %766
    i32 9, label %772
    i32 10, label %778
    i32 11, label %784
    i32 12, label %796
    i32 13, label %802
    i32 14, label %808
  ]

736:                                              ; preds = %733
  %737 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %738 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %737, i32 0, i32 0
  %739 = load %struct.TYPE_2__*, %struct.TYPE_2__** %738, align 8
  %740 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %739, i32 0, i32 0
  %741 = call i32 (i32*, i8*, ...) @dev_warn(i32* %740, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.103, i64 0, i64 0))
  br label %820

742:                                              ; preds = %733
  %743 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %744 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %743, i32 0, i32 0
  %745 = load %struct.TYPE_2__*, %struct.TYPE_2__** %744, align 8
  %746 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %745, i32 0, i32 0
  %747 = call i32 (i32*, i8*, ...) @dev_warn(i32* %746, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.104, i64 0, i64 0))
  br label %820

748:                                              ; preds = %733
  %749 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %750 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %749, i32 0, i32 0
  %751 = load %struct.TYPE_2__*, %struct.TYPE_2__** %750, align 8
  %752 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %751, i32 0, i32 0
  %753 = call i32 (i32*, i8*, ...) @dev_warn(i32* %752, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.105, i64 0, i64 0))
  br label %820

754:                                              ; preds = %733
  %755 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %756 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %755, i32 0, i32 0
  %757 = load %struct.TYPE_2__*, %struct.TYPE_2__** %756, align 8
  %758 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %757, i32 0, i32 0
  %759 = call i32 (i32*, i8*, ...) @dev_warn(i32* %758, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.106, i64 0, i64 0))
  br label %820

760:                                              ; preds = %733
  %761 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %762 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %761, i32 0, i32 0
  %763 = load %struct.TYPE_2__*, %struct.TYPE_2__** %762, align 8
  %764 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %763, i32 0, i32 0
  %765 = call i32 (i32*, i8*, ...) @dev_warn(i32* %764, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.107, i64 0, i64 0))
  br label %820

766:                                              ; preds = %733
  %767 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %768 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %767, i32 0, i32 0
  %769 = load %struct.TYPE_2__*, %struct.TYPE_2__** %768, align 8
  %770 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %769, i32 0, i32 0
  %771 = call i32 (i32*, i8*, ...) @dev_warn(i32* %770, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.108, i64 0, i64 0))
  br label %820

772:                                              ; preds = %733
  %773 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %774 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %773, i32 0, i32 0
  %775 = load %struct.TYPE_2__*, %struct.TYPE_2__** %774, align 8
  %776 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %775, i32 0, i32 0
  %777 = call i32 (i32*, i8*, ...) @dev_warn(i32* %776, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.109, i64 0, i64 0))
  br label %820

778:                                              ; preds = %733
  %779 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %780 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %779, i32 0, i32 0
  %781 = load %struct.TYPE_2__*, %struct.TYPE_2__** %780, align 8
  %782 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %781, i32 0, i32 0
  %783 = call i32 (i32*, i8*, ...) @dev_warn(i32* %782, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.110, i64 0, i64 0))
  br label %820

784:                                              ; preds = %733
  %785 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %786 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %785, i32 0, i32 0
  %787 = load %struct.TYPE_2__*, %struct.TYPE_2__** %786, align 8
  %788 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %787, i32 0, i32 0
  %789 = call i32 (i32*, i8*, ...) @dev_warn(i32* %788, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.111, i64 0, i64 0))
  %790 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %791 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %792 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 8
  %794 = load i32, i32* @DASD_EER_PPRCSUSPEND, align 4
  %795 = call i32 @dasd_eer_write(%struct.dasd_device* %790, i32 %793, i32 %794)
  br label %820

796:                                              ; preds = %733
  %797 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %798 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %797, i32 0, i32 0
  %799 = load %struct.TYPE_2__*, %struct.TYPE_2__** %798, align 8
  %800 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %799, i32 0, i32 0
  %801 = call i32 (i32*, i8*, ...) @dev_warn(i32* %800, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.112, i64 0, i64 0))
  br label %820

802:                                              ; preds = %733
  %803 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %804 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %803, i32 0, i32 0
  %805 = load %struct.TYPE_2__*, %struct.TYPE_2__** %804, align 8
  %806 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %805, i32 0, i32 0
  %807 = call i32 (i32*, i8*, ...) @dev_warn(i32* %806, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.113, i64 0, i64 0))
  br label %820

808:                                              ; preds = %733
  %809 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %810 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %809, i32 0, i32 0
  %811 = load %struct.TYPE_2__*, %struct.TYPE_2__** %810, align 8
  %812 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %811, i32 0, i32 0
  %813 = call i32 (i32*, i8*, ...) @dev_warn(i32* %812, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.114, i64 0, i64 0))
  br label %820

814:                                              ; preds = %733
  %815 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %816 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %815, i32 0, i32 0
  %817 = load %struct.TYPE_2__*, %struct.TYPE_2__** %816, align 8
  %818 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %817, i32 0, i32 0
  %819 = call i32 (i32*, i8*, ...) @dev_warn(i32* %818, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i64 0, i64 0))
  br label %820

820:                                              ; preds = %814, %808, %802, %796, %784, %778, %772, %766, %760, %754, %748, %742, %736
  br label %830

821:                                              ; preds = %2
  %822 = load i32, i32* @ERRORLENGTH, align 4
  %823 = load i8, i8* %6, align 1
  %824 = call i32 @snprintf(i8* %28, i32 %822, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i64 0, i64 0), i8 signext %823)
  %825 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %826 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %825, i32 0, i32 0
  %827 = load %struct.TYPE_2__*, %struct.TYPE_2__** %826, align 8
  %828 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %827, i32 0, i32 0
  %829 = call i32 @dev_err(i32* %828, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.117, i64 0, i64 0), i8* %28)
  br label %830

830:                                              ; preds = %821, %820, %732, %697, %633, %539, %481, %423, %317, %301, %269, %174
  %831 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %831)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #2

declare dso_local i32 @dasd_eer_write(%struct.dasd_device*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #2

declare dso_local i32 @dev_err(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
