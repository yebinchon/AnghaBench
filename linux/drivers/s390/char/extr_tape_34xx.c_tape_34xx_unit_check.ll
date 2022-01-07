; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_34xx.c_tape_34xx_unit_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_34xx.c_tape_34xx_unit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tape_request = type { i32 }
%struct.irb = type { i32* }

@SENSE_COMMAND_REJECT = common dso_local global i32 0, align 4
@SENSE_WRITE_PROTECT = common dso_local global i32 0, align 4
@TO_DSE = common dso_local global i32 0, align 4
@TO_WTM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@SENSE_DATA_CHECK = common dso_local global i32 0, align 4
@SENSE_EQUIPMENT_CHECK = common dso_local global i32 0, align 4
@SENSE_DEFERRED_UNIT_CHECK = common dso_local global i32 0, align 4
@SENSE_DRIVE_ONLINE = common dso_local global i32 0, align 4
@SENSE_BEGINNING_OF_TAPE = common dso_local global i32 0, align 4
@SENSE_WRITE_MODE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SENSE_BUS_OUT_CHECK = common dso_local global i32 0, align 4
@SENSE_TAPE_SYNC_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"A read error occurred that cannot be recovered\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"A write error on the tape cannot be recovered\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Writing the ID-mark failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Reading the tape beyond the end of the recorded area failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"The tape contains an incorrect block ID sequence\0A\00", align 1
@tape_3480 = common dso_local global i32 0, align 4
@SENSE_OVERRUN = common dso_local global i32 0, align 4
@SENSE_RECORD_SEQUENCE_ERR = common dso_local global i32 0, align 4
@TAPE_IO_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"A path equipment check occurred for the tape device\0A\00", align 1
@TO_RUN = common dso_local global i32 0, align 4
@MS_UNLOADED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"The tape unit cannot process the tape format\0A\00", align 1
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"The tape medium is write-protected\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"The tape does not have the required tape tension\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"The tape unit failed to load the cartridge\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Automatic unloading of the tape cartridge failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"An equipment check has occurred on the tape unit\0A\00", align 1
@tape_3490 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [49 x i8] c"The tape information states an incorrect length\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"The tape unit is not ready\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"The tape medium has been rewound or unloaded manually\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"The tape subsystem is running in degraded mode\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@TO_BLOCK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"The tape unit is already assigned\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"The tape unit is not online\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"The control unit has fenced access to the tape volume\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"A parity error occurred on the tape bus\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"I/O error recovery failed on the tape control unit\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"The tape unit requires a firmware update\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"The maximum block size for buffered mode is exceeded\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [47 x i8] c"A channel interface error cannot be recovered\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"A channel protocol error occurred\0A\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"The tape unit does not support the tape length\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"The tape unit does not support format 3480 XF\0A\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"The tape unit does not support tape format 3480-2 XF\0A\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"The tape unit does not support the current tape length\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"The tape unit does not support the compaction algorithm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_34xx_unit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_34xx_unit_check(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tape_device*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.irb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %5, align 8
  store %struct.tape_request* %1, %struct.tape_request** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  %10 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %11 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %8, align 4
  %18 = load %struct.irb*, %struct.irb** %7, align 8
  %19 = getelementptr inbounds %struct.irb, %struct.irb* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SENSE_COMMAND_REJECT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SENSE_WRITE_PROTECT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %36 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TO_DSE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %51, label %40

40:                                               ; preds = %34
  %41 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %42 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %47 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TO_WTM, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45, %40, %34
  %52 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %53 = load i32, i32* @EACCES, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %52, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %808

56:                                               ; preds = %45
  %57 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %58 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %59 = load %struct.irb*, %struct.irb** %7, align 8
  %60 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %57, %struct.tape_request* %58, %struct.irb* %59, i32 -3)
  store i32 %60, i32* %4, align 4
  br label %808

61:                                               ; preds = %27, %3
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SENSE_DATA_CHECK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %61
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SENSE_EQUIPMENT_CHECK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %67
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SENSE_EQUIPMENT_CHECK, align 4
  %78 = load i32, i32* @SENSE_DEFERRED_UNIT_CHECK, align 4
  %79 = add nsw i32 %77, %78
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %125

81:                                               ; preds = %73, %67, %61
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SENSE_DRIVE_ONLINE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SENSE_BEGINNING_OF_TAPE, align 4
  %92 = load i32, i32* @SENSE_WRITE_MODE, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %87, %81
  %96 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %97 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %122 [
    i32 133, label %99
    i32 134, label %99
    i32 136, label %104
    i32 132, label %107
    i32 130, label %114
    i32 128, label %117
  ]

99:                                               ; preds = %95, %95
  %100 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %101 = load i32, i32* @ENOSPC, align 4
  %102 = sub nsw i32 0, %101
  %103 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %100, i32 %102)
  store i32 %103, i32* %4, align 4
  br label %808

104:                                              ; preds = %95
  %105 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %106 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %105)
  store i32 %106, i32* %4, align 4
  br label %808

107:                                              ; preds = %95
  %108 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %109 = call i32 @tape_34xx_delete_sbid_from(%struct.tape_device* %108, i32 0)
  %110 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %110, i32 %112)
  store i32 %113, i32* %4, align 4
  br label %808

114:                                              ; preds = %95
  %115 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %116 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %115, i32 0)
  store i32 %116, i32* %4, align 4
  br label %808

117:                                              ; preds = %95
  %118 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %119 = load i32, i32* @ENOSPC, align 4
  %120 = sub nsw i32 0, %119
  %121 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %118, i32 %120)
  store i32 %121, i32* %4, align 4
  br label %808

122:                                              ; preds = %95
  %123 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %124 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %123, i32 0)
  store i32 %124, i32* %4, align 4
  br label %808

125:                                              ; preds = %87, %73
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SENSE_BUS_OUT_CHECK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %134 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %133)
  store i32 %134, i32* %4, align 4
  br label %808

135:                                              ; preds = %125
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SENSE_DATA_CHECK, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %246

142:                                              ; preds = %135
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %230 [
    i32 35, label %146
    i32 37, label %171
    i32 38, label %196
    i32 40, label %200
    i32 49, label %210
    i32 65, label %220
  ]

146:                                              ; preds = %142
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SENSE_TAPE_SYNC_MODE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153, %146
  %157 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %158 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %159 = load %struct.irb*, %struct.irb** %7, align 8
  %160 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %157, %struct.tape_request* %158, %struct.irb* %159, i32 -4)
  store i32 %160, i32* %4, align 4
  br label %808

161:                                              ; preds = %153
  %162 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %163 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %162, i32 0, i32 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = call i32 @dev_warn(i32* %165, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %167 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  %170 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %167, i32 %169)
  store i32 %170, i32* %4, align 4
  br label %808

171:                                              ; preds = %142
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @SENSE_TAPE_SYNC_MODE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %171
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178, %171
  %182 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %183 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %184 = load %struct.irb*, %struct.irb** %7, align 8
  %185 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %182, %struct.tape_request* %183, %struct.irb* %184, i32 -5)
  store i32 %185, i32* %4, align 4
  br label %808

186:                                              ; preds = %178
  %187 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %188 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %187, i32 0, i32 1
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = call i32 @dev_warn(i32* %190, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %192 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  %195 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %192, i32 %194)
  store i32 %195, i32* %4, align 4
  br label %808

196:                                              ; preds = %142
  %197 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %198 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %199 = call i32 @tape_34xx_erp_read_opposite(%struct.tape_device* %197, %struct.tape_request* %198)
  store i32 %199, i32* %4, align 4
  br label %808

200:                                              ; preds = %142
  %201 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %202 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %201, i32 0, i32 1
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = call i32 @dev_warn(i32* %204, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %206 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %207 = load i32, i32* @EIO, align 4
  %208 = sub nsw i32 0, %207
  %209 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %206, i32 %208)
  store i32 %209, i32* %4, align 4
  br label %808

210:                                              ; preds = %142
  %211 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %212 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %211, i32 0, i32 1
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = call i32 @dev_warn(i32* %214, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %216 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %217 = load i32, i32* @ENOSPC, align 4
  %218 = sub nsw i32 0, %217
  %219 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %216, i32 %218)
  store i32 %219, i32* %4, align 4
  br label %808

220:                                              ; preds = %142
  %221 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %222 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %221, i32 0, i32 1
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = call i32 @dev_warn(i32* %224, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %226 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %227 = load i32, i32* @EIO, align 4
  %228 = sub nsw i32 0, %227
  %229 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %226, i32 %228)
  store i32 %229, i32* %4, align 4
  br label %808

230:                                              ; preds = %142
  %231 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %232 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %231, i32 0, i32 1
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @tape_3480, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %230
  %240 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %241 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %242 = load %struct.irb*, %struct.irb** %7, align 8
  %243 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %240, %struct.tape_request* %241, %struct.irb* %242, i32 -6)
  store i32 %243, i32* %4, align 4
  br label %808

244:                                              ; preds = %230
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245, %135
  %247 = load i32*, i32** %9, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @SENSE_OVERRUN, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %246
  %254 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %255 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %256 = load %struct.irb*, %struct.irb** %7, align 8
  %257 = call i32 @tape_34xx_erp_overrun(%struct.tape_device* %254, %struct.tape_request* %255, %struct.irb* %256)
  store i32 %257, i32* %4, align 4
  br label %808

258:                                              ; preds = %246
  %259 = load i32*, i32** %9, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @SENSE_RECORD_SEQUENCE_ERR, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %258
  %266 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %267 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %268 = load %struct.irb*, %struct.irb** %7, align 8
  %269 = call i32 @tape_34xx_erp_sequence(%struct.tape_device* %266, %struct.tape_request* %267, %struct.irb* %268)
  store i32 %269, i32* %4, align 4
  br label %808

270:                                              ; preds = %258
  %271 = load i32*, i32** %9, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 3
  %273 = load i32, i32* %272, align 4
  switch i32 %273, label %800 [
    i32 0, label %274
    i32 33, label %276
    i32 34, label %279
    i32 36, label %289
    i32 39, label %292
    i32 41, label %295
    i32 42, label %300
    i32 43, label %303
    i32 44, label %323
    i32 45, label %328
    i32 46, label %347
    i32 48, label %357
    i32 50, label %367
    i32 51, label %377
    i32 52, label %389
    i32 53, label %413
    i32 54, label %423
    i32 55, label %445
    i32 56, label %455
    i32 57, label %482
    i32 58, label %487
    i32 59, label %497
    i32 66, label %509
    i32 67, label %517
    i32 68, label %543
    i32 69, label %567
    i32 70, label %577
    i32 71, label %587
    i32 72, label %599
    i32 73, label %602
    i32 74, label %612
    i32 75, label %622
    i32 76, label %632
    i32 77, label %635
    i32 78, label %655
    i32 80, label %682
    i32 81, label %685
    i32 82, label %688
    i32 83, label %710
    i32 84, label %713
    i32 85, label %716
    i32 86, label %726
    i32 87, label %736
    i32 90, label %739
    i32 91, label %749
    i32 92, label %769
    i32 93, label %779
    i32 94, label %789
    i32 35, label %799
    i32 37, label %799
    i32 38, label %799
    i32 40, label %799
    i32 49, label %799
    i32 64, label %799
    i32 65, label %799
  ]

274:                                              ; preds = %270
  %275 = load i32, i32* @TAPE_IO_SUCCESS, align 4
  store i32 %275, i32* %4, align 4
  br label %808

276:                                              ; preds = %270
  %277 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %278 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %277)
  store i32 %278, i32* %4, align 4
  br label %808

279:                                              ; preds = %270
  %280 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %281 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %280, i32 0, i32 1
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = call i32 @dev_warn(i32* %283, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %285 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %286 = load i32, i32* @EIO, align 4
  %287 = sub nsw i32 0, %286
  %288 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %285, i32 %287)
  store i32 %288, i32* %4, align 4
  br label %808

289:                                              ; preds = %270
  %290 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %291 = call i32 @tape_34xx_erp_succeeded(%struct.tape_request* %290)
  store i32 %291, i32* %4, align 4
  br label %808

292:                                              ; preds = %270
  %293 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %294 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %293)
  store i32 %294, i32* %4, align 4
  br label %808

295:                                              ; preds = %270
  %296 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %297 = load i32, i32* @EIO, align 4
  %298 = sub nsw i32 0, %297
  %299 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %296, i32 %298)
  store i32 %299, i32* %4, align 4
  br label %808

300:                                              ; preds = %270
  %301 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %302 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %301)
  store i32 %302, i32* %4, align 4
  br label %808

303:                                              ; preds = %270
  %304 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %305 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @TO_RUN, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %315

309:                                              ; preds = %303
  %310 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %311 = load i32, i32* @MS_UNLOADED, align 4
  %312 = call i32 @tape_med_state_set(%struct.tape_device* %310, i32 %311)
  %313 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %314 = call i32 @tape_34xx_erp_succeeded(%struct.tape_request* %313)
  store i32 %314, i32* %4, align 4
  br label %808

315:                                              ; preds = %303
  %316 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %317 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %318 = load %struct.irb*, %struct.irb** %7, align 8
  %319 = load i32*, i32** %9, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 3
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %316, %struct.tape_request* %317, %struct.irb* %318, i32 %321)
  store i32 %322, i32* %4, align 4
  br label %808

323:                                              ; preds = %270
  %324 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %325 = load i32, i32* @EIO, align 4
  %326 = sub nsw i32 0, %325
  %327 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %324, i32 %326)
  store i32 %327, i32* %4, align 4
  br label %808

328:                                              ; preds = %270
  %329 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %330 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @TO_DSE, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %328
  %335 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %336 = load i32, i32* @EIO, align 4
  %337 = sub nsw i32 0, %336
  %338 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %335, i32 %337)
  store i32 %338, i32* %4, align 4
  br label %808

339:                                              ; preds = %328
  %340 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %341 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %342 = load %struct.irb*, %struct.irb** %7, align 8
  %343 = load i32*, i32** %9, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 3
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %340, %struct.tape_request* %341, %struct.irb* %342, i32 %345)
  store i32 %346, i32* %4, align 4
  br label %808

347:                                              ; preds = %270
  %348 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %349 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %348, i32 0, i32 1
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  %352 = call i32 @dev_warn(i32* %351, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %353 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %354 = load i32, i32* @EMEDIUMTYPE, align 4
  %355 = sub nsw i32 0, %354
  %356 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %353, i32 %355)
  store i32 %356, i32* %4, align 4
  br label %808

357:                                              ; preds = %270
  %358 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %359 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %358, i32 0, i32 1
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 0
  %362 = call i32 @dev_warn(i32* %361, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %363 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %364 = load i32, i32* @EACCES, align 4
  %365 = sub nsw i32 0, %364
  %366 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %363, i32 %365)
  store i32 %366, i32* %4, align 4
  br label %808

367:                                              ; preds = %270
  %368 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %369 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %368, i32 0, i32 1
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 0
  %372 = call i32 @dev_warn(i32* %371, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %373 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %374 = load i32, i32* @EIO, align 4
  %375 = sub nsw i32 0, %374
  %376 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %373, i32 %375)
  store i32 %376, i32* %4, align 4
  br label %808

377:                                              ; preds = %270
  %378 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %379 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %378, i32 0, i32 1
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 0
  %382 = call i32 @dev_warn(i32* %381, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %383 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %384 = call i32 @tape_34xx_delete_sbid_from(%struct.tape_device* %383, i32 0)
  %385 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %386 = load i32, i32* @EIO, align 4
  %387 = sub nsw i32 0, %386
  %388 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %385, i32 %387)
  store i32 %388, i32* %4, align 4
  br label %808

389:                                              ; preds = %270
  %390 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %391 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %390, i32 0, i32 1
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  %394 = call i32 @dev_warn(i32* %393, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %395 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %396 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @TO_RUN, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %405

400:                                              ; preds = %389
  %401 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %402 = load i32, i32* @EIO, align 4
  %403 = sub nsw i32 0, %402
  %404 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %401, i32 %403)
  store i32 %404, i32* %4, align 4
  br label %808

405:                                              ; preds = %389
  %406 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %407 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %408 = load %struct.irb*, %struct.irb** %7, align 8
  %409 = load i32*, i32** %9, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 3
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %406, %struct.tape_request* %407, %struct.irb* %408, i32 %411)
  store i32 %412, i32* %4, align 4
  br label %808

413:                                              ; preds = %270
  %414 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %415 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %414, i32 0, i32 1
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 0
  %418 = call i32 @dev_warn(i32* %417, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %419 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %420 = load i32, i32* @EIO, align 4
  %421 = sub nsw i32 0, %420
  %422 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %419, i32 %421)
  store i32 %422, i32* %4, align 4
  br label %808

423:                                              ; preds = %270
  %424 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %425 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %424, i32 0, i32 1
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @tape_3490, align 4
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %432, label %437

432:                                              ; preds = %423
  %433 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %434 = load i32, i32* @EIO, align 4
  %435 = sub nsw i32 0, %434
  %436 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %433, i32 %435)
  store i32 %436, i32* %4, align 4
  br label %808

437:                                              ; preds = %423
  %438 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %439 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %440 = load %struct.irb*, %struct.irb** %7, align 8
  %441 = load i32*, i32** %9, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 3
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %438, %struct.tape_request* %439, %struct.irb* %440, i32 %443)
  store i32 %444, i32* %4, align 4
  br label %808

445:                                              ; preds = %270
  %446 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %447 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %446, i32 0, i32 1
  %448 = load %struct.TYPE_4__*, %struct.TYPE_4__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 0
  %450 = call i32 @dev_warn(i32* %449, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  %451 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %452 = load i32, i32* @EIO, align 4
  %453 = sub nsw i32 0, %452
  %454 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %451, i32 %453)
  store i32 %454, i32* %4, align 4
  br label %808

455:                                              ; preds = %270
  %456 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %457 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = icmp eq i32 %458, 128
  br i1 %459, label %472, label %460

460:                                              ; preds = %455
  %461 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %462 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @TO_DSE, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %472, label %466

466:                                              ; preds = %460
  %467 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %468 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* @TO_WTM, align 4
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %472, label %477

472:                                              ; preds = %466, %460, %455
  %473 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %474 = load i32, i32* @ENOSPC, align 4
  %475 = sub nsw i32 0, %474
  %476 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %473, i32 %475)
  store i32 %476, i32* %4, align 4
  br label %808

477:                                              ; preds = %466
  %478 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %479 = load i32, i32* @EIO, align 4
  %480 = sub nsw i32 0, %479
  %481 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %478, i32 %480)
  store i32 %481, i32* %4, align 4
  br label %808

482:                                              ; preds = %270
  %483 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %484 = load i32, i32* @EIO, align 4
  %485 = sub nsw i32 0, %484
  %486 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %483, i32 %485)
  store i32 %486, i32* %4, align 4
  br label %808

487:                                              ; preds = %270
  %488 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %489 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %488, i32 0, i32 1
  %490 = load %struct.TYPE_4__*, %struct.TYPE_4__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %490, i32 0, i32 0
  %492 = call i32 @dev_warn(i32* %491, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %493 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %494 = load i32, i32* @EIO, align 4
  %495 = sub nsw i32 0, %494
  %496 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %493, i32 %495)
  store i32 %496, i32* %4, align 4
  br label %808

497:                                              ; preds = %270
  %498 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %499 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %498, i32 0, i32 1
  %500 = load %struct.TYPE_4__*, %struct.TYPE_4__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %500, i32 0, i32 0
  %502 = call i32 @dev_warn(i32* %501, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %503 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %504 = call i32 @tape_34xx_delete_sbid_from(%struct.tape_device* %503, i32 0)
  %505 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %506 = load i32, i32* @EIO, align 4
  %507 = sub nsw i32 0, %506
  %508 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %505, i32 %507)
  store i32 %508, i32* %4, align 4
  br label %808

509:                                              ; preds = %270
  %510 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %511 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %510, i32 0, i32 1
  %512 = load %struct.TYPE_4__*, %struct.TYPE_4__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %512, i32 0, i32 0
  %514 = call i32 @dev_warn(i32* %513, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  %515 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %516 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %515)
  store i32 %516, i32* %4, align 4
  br label %808

517:                                              ; preds = %270
  %518 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %519 = call i32 @tape_34xx_delete_sbid_from(%struct.tape_device* %518, i32 0)
  %520 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %521 = load i32, i32* @MS_UNLOADED, align 4
  %522 = call i32 @tape_med_state_set(%struct.tape_device* %520, i32 %521)
  %523 = load i32*, i32** %9, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 1
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* @SENSE_DRIVE_ONLINE, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %538

529:                                              ; preds = %517
  %530 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %531 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 4
  switch i32 %532, label %536 [
    i32 137, label %533
    i32 129, label %533
    i32 135, label %533
    i32 131, label %533
  ]

533:                                              ; preds = %529, %529, %529, %529
  %534 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %535 = call i32 @tape_34xx_done(%struct.tape_request* %534)
  store i32 %535, i32* %4, align 4
  br label %808

536:                                              ; preds = %529
  br label %537

537:                                              ; preds = %536
  br label %538

538:                                              ; preds = %537, %517
  %539 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %540 = load i32, i32* @ENOMEDIUM, align 4
  %541 = sub nsw i32 0, %540
  %542 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %539, i32 %541)
  store i32 %542, i32* %4, align 4
  br label %808

543:                                              ; preds = %270
  %544 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %545 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 4
  %547 = load i32, i32* @TO_BLOCK, align 4
  %548 = icmp ne i32 %546, %547
  br i1 %548, label %549, label %562

549:                                              ; preds = %543
  %550 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %551 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = icmp ne i32 %552, 132
  br i1 %553, label %554, label %562

554:                                              ; preds = %549
  %555 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %556 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %557 = load %struct.irb*, %struct.irb** %7, align 8
  %558 = load i32*, i32** %9, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 3
  %560 = load i32, i32* %559, align 4
  %561 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %555, %struct.tape_request* %556, %struct.irb* %557, i32 %560)
  store i32 %561, i32* %4, align 4
  br label %808

562:                                              ; preds = %549, %543
  %563 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %564 = load i32, i32* @EIO, align 4
  %565 = sub nsw i32 0, %564
  %566 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %563, i32 %565)
  store i32 %566, i32* %4, align 4
  br label %808

567:                                              ; preds = %270
  %568 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %569 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %568, i32 0, i32 1
  %570 = load %struct.TYPE_4__*, %struct.TYPE_4__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %570, i32 0, i32 0
  %572 = call i32 @dev_warn(i32* %571, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %573 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %574 = load i32, i32* @EIO, align 4
  %575 = sub nsw i32 0, %574
  %576 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %573, i32 %575)
  store i32 %576, i32* %4, align 4
  br label %808

577:                                              ; preds = %270
  %578 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %579 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %578, i32 0, i32 1
  %580 = load %struct.TYPE_4__*, %struct.TYPE_4__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %580, i32 0, i32 0
  %582 = call i32 @dev_warn(i32* %581, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %583 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %584 = load i32, i32* @EIO, align 4
  %585 = sub nsw i32 0, %584
  %586 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %583, i32 %585)
  store i32 %586, i32* %4, align 4
  br label %808

587:                                              ; preds = %270
  %588 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %589 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %588, i32 0, i32 1
  %590 = load %struct.TYPE_4__*, %struct.TYPE_4__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %590, i32 0, i32 0
  %592 = call i32 @dev_warn(i32* %591, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0))
  %593 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %594 = call i32 @tape_34xx_delete_sbid_from(%struct.tape_device* %593, i32 0)
  %595 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %596 = load i32, i32* @EIO, align 4
  %597 = sub nsw i32 0, %596
  %598 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %595, i32 %597)
  store i32 %598, i32* %4, align 4
  br label %808

599:                                              ; preds = %270
  %600 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %601 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %600)
  store i32 %601, i32* %4, align 4
  br label %808

602:                                              ; preds = %270
  %603 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %604 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %603, i32 0, i32 1
  %605 = load %struct.TYPE_4__*, %struct.TYPE_4__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i32 0, i32 0
  %607 = call i32 @dev_warn(i32* %606, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  %608 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %609 = load i32, i32* @EIO, align 4
  %610 = sub nsw i32 0, %609
  %611 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %608, i32 %610)
  store i32 %611, i32* %4, align 4
  br label %808

612:                                              ; preds = %270
  %613 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %614 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %613, i32 0, i32 1
  %615 = load %struct.TYPE_4__*, %struct.TYPE_4__** %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %615, i32 0, i32 0
  %617 = call i32 @dev_warn(i32* %616, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i64 0, i64 0))
  %618 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %619 = load i32, i32* @EIO, align 4
  %620 = sub nsw i32 0, %619
  %621 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %618, i32 %620)
  store i32 %621, i32* %4, align 4
  br label %808

622:                                              ; preds = %270
  %623 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %624 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %623, i32 0, i32 1
  %625 = load %struct.TYPE_4__*, %struct.TYPE_4__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %625, i32 0, i32 0
  %627 = call i32 @dev_warn(i32* %626, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %628 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %629 = load i32, i32* @EIO, align 4
  %630 = sub nsw i32 0, %629
  %631 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %628, i32 %630)
  store i32 %631, i32* %4, align 4
  br label %808

632:                                              ; preds = %270
  %633 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %634 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %633)
  store i32 %634, i32* %4, align 4
  br label %808

635:                                              ; preds = %270
  %636 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %637 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %636, i32 0, i32 1
  %638 = load %struct.TYPE_4__*, %struct.TYPE_4__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %638, i32 0, i32 1
  %640 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 4
  %642 = load i32, i32* @tape_3490, align 4
  %643 = icmp eq i32 %641, %642
  br i1 %643, label %644, label %647

644:                                              ; preds = %635
  %645 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %646 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %645)
  store i32 %646, i32* %4, align 4
  br label %808

647:                                              ; preds = %635
  %648 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %649 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %650 = load %struct.irb*, %struct.irb** %7, align 8
  %651 = load i32*, i32** %9, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 3
  %653 = load i32, i32* %652, align 4
  %654 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %648, %struct.tape_request* %649, %struct.irb* %650, i32 %653)
  store i32 %654, i32* %4, align 4
  br label %808

655:                                              ; preds = %270
  %656 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %657 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %656, i32 0, i32 1
  %658 = load %struct.TYPE_4__*, %struct.TYPE_4__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 4
  %662 = load i32, i32* @tape_3490, align 4
  %663 = icmp eq i32 %661, %662
  br i1 %663, label %664, label %674

664:                                              ; preds = %655
  %665 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %666 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %665, i32 0, i32 1
  %667 = load %struct.TYPE_4__*, %struct.TYPE_4__** %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %667, i32 0, i32 0
  %669 = call i32 @dev_warn(i32* %668, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0))
  %670 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %671 = load i32, i32* @ENOBUFS, align 4
  %672 = sub nsw i32 0, %671
  %673 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %670, i32 %672)
  store i32 %673, i32* %4, align 4
  br label %808

674:                                              ; preds = %655
  %675 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %676 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %677 = load %struct.irb*, %struct.irb** %7, align 8
  %678 = load i32*, i32** %9, align 8
  %679 = getelementptr inbounds i32, i32* %678, i64 3
  %680 = load i32, i32* %679, align 4
  %681 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %675, %struct.tape_request* %676, %struct.irb* %677, i32 %680)
  store i32 %681, i32* %4, align 4
  br label %808

682:                                              ; preds = %270
  %683 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %684 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %683)
  store i32 %684, i32* %4, align 4
  br label %808

685:                                              ; preds = %270
  %686 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %687 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %686)
  store i32 %687, i32* %4, align 4
  br label %808

688:                                              ; preds = %270
  %689 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %690 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 4
  %692 = load i32, i32* @TO_RUN, align 4
  %693 = icmp eq i32 %691, %692
  br i1 %693, label %694, label %702

694:                                              ; preds = %688
  %695 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %696 = load i32, i32* @MS_UNLOADED, align 4
  %697 = call i32 @tape_med_state_set(%struct.tape_device* %695, i32 %696)
  %698 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %699 = call i32 @tape_34xx_delete_sbid_from(%struct.tape_device* %698, i32 0)
  %700 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %701 = call i32 @tape_34xx_erp_succeeded(%struct.tape_request* %700)
  store i32 %701, i32* %4, align 4
  br label %808

702:                                              ; preds = %688
  %703 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %704 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %705 = load %struct.irb*, %struct.irb** %7, align 8
  %706 = load i32*, i32** %9, align 8
  %707 = getelementptr inbounds i32, i32* %706, i64 3
  %708 = load i32, i32* %707, align 4
  %709 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %703, %struct.tape_request* %704, %struct.irb* %705, i32 %708)
  store i32 %709, i32* %4, align 4
  br label %808

710:                                              ; preds = %270
  %711 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %712 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %711)
  store i32 %712, i32* %4, align 4
  br label %808

713:                                              ; preds = %270
  %714 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %715 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %714)
  store i32 %715, i32* %4, align 4
  br label %808

716:                                              ; preds = %270
  %717 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %718 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %717, i32 0, i32 1
  %719 = load %struct.TYPE_4__*, %struct.TYPE_4__** %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %719, i32 0, i32 0
  %721 = call i32 @dev_warn(i32* %720, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0))
  %722 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %723 = load i32, i32* @EIO, align 4
  %724 = sub nsw i32 0, %723
  %725 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %722, i32 %724)
  store i32 %725, i32* %4, align 4
  br label %808

726:                                              ; preds = %270
  %727 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %728 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %727, i32 0, i32 1
  %729 = load %struct.TYPE_4__*, %struct.TYPE_4__** %728, align 8
  %730 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %729, i32 0, i32 0
  %731 = call i32 @dev_warn(i32* %730, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0))
  %732 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %733 = load i32, i32* @EIO, align 4
  %734 = sub nsw i32 0, %733
  %735 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %732, i32 %734)
  store i32 %735, i32* %4, align 4
  br label %808

736:                                              ; preds = %270
  %737 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %738 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %737)
  store i32 %738, i32* %4, align 4
  br label %808

739:                                              ; preds = %270
  %740 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %741 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %740, i32 0, i32 1
  %742 = load %struct.TYPE_4__*, %struct.TYPE_4__** %741, align 8
  %743 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %742, i32 0, i32 0
  %744 = call i32 @dev_warn(i32* %743, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i64 0, i64 0))
  %745 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %746 = load i32, i32* @EIO, align 4
  %747 = sub nsw i32 0, %746
  %748 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %745, i32 %747)
  store i32 %748, i32* %4, align 4
  br label %808

749:                                              ; preds = %270
  %750 = load i32*, i32** %9, align 8
  %751 = getelementptr inbounds i32, i32* %750, i64 1
  %752 = load i32, i32* %751, align 4
  %753 = load i32, i32* @SENSE_BEGINNING_OF_TAPE, align 4
  %754 = and i32 %752, %753
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %756, label %759

756:                                              ; preds = %749
  %757 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %758 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %757)
  store i32 %758, i32* %4, align 4
  br label %808

759:                                              ; preds = %749
  %760 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %761 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %760, i32 0, i32 1
  %762 = load %struct.TYPE_4__*, %struct.TYPE_4__** %761, align 8
  %763 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %762, i32 0, i32 0
  %764 = call i32 @dev_warn(i32* %763, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i64 0, i64 0))
  %765 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %766 = load i32, i32* @EIO, align 4
  %767 = sub nsw i32 0, %766
  %768 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %765, i32 %767)
  store i32 %768, i32* %4, align 4
  br label %808

769:                                              ; preds = %270
  %770 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %771 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %770, i32 0, i32 1
  %772 = load %struct.TYPE_4__*, %struct.TYPE_4__** %771, align 8
  %773 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %772, i32 0, i32 0
  %774 = call i32 @dev_warn(i32* %773, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i64 0, i64 0))
  %775 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %776 = load i32, i32* @EIO, align 4
  %777 = sub nsw i32 0, %776
  %778 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %775, i32 %777)
  store i32 %778, i32* %4, align 4
  br label %808

779:                                              ; preds = %270
  %780 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %781 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %780, i32 0, i32 1
  %782 = load %struct.TYPE_4__*, %struct.TYPE_4__** %781, align 8
  %783 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %782, i32 0, i32 0
  %784 = call i32 @dev_warn(i32* %783, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.28, i64 0, i64 0))
  %785 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %786 = load i32, i32* @EMEDIUMTYPE, align 4
  %787 = sub nsw i32 0, %786
  %788 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %785, i32 %787)
  store i32 %788, i32* %4, align 4
  br label %808

789:                                              ; preds = %270
  %790 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %791 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %790, i32 0, i32 1
  %792 = load %struct.TYPE_4__*, %struct.TYPE_4__** %791, align 8
  %793 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %792, i32 0, i32 0
  %794 = call i32 @dev_warn(i32* %793, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0))
  %795 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %796 = load i32, i32* @EMEDIUMTYPE, align 4
  %797 = sub nsw i32 0, %796
  %798 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %795, i32 %797)
  store i32 %798, i32* %4, align 4
  br label %808

799:                                              ; preds = %270, %270, %270, %270, %270, %270, %270
  br label %800

800:                                              ; preds = %270, %799
  %801 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %802 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %803 = load %struct.irb*, %struct.irb** %7, align 8
  %804 = load i32*, i32** %9, align 8
  %805 = getelementptr inbounds i32, i32* %804, i64 3
  %806 = load i32, i32* %805, align 4
  %807 = call i32 @tape_34xx_erp_bug(%struct.tape_device* %801, %struct.tape_request* %802, %struct.irb* %803, i32 %806)
  store i32 %807, i32* %4, align 4
  br label %808

808:                                              ; preds = %800, %789, %779, %769, %759, %756, %739, %736, %726, %716, %713, %710, %702, %694, %685, %682, %674, %664, %647, %644, %632, %622, %612, %602, %599, %587, %577, %567, %562, %554, %538, %533, %509, %497, %487, %482, %477, %472, %445, %437, %432, %413, %405, %400, %377, %367, %357, %347, %339, %334, %323, %315, %309, %300, %295, %292, %289, %279, %276, %274, %265, %253, %239, %220, %210, %200, %196, %186, %181, %161, %156, %132, %122, %117, %114, %107, %104, %99, %56, %51
  %809 = load i32, i32* %4, align 4
  ret i32 %809
}

declare dso_local i32 @tape_34xx_erp_failed(%struct.tape_request*, i32) #1

declare dso_local i32 @tape_34xx_erp_bug(%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32) #1

declare dso_local i32 @tape_34xx_erp_retry(%struct.tape_request*) #1

declare dso_local i32 @tape_34xx_delete_sbid_from(%struct.tape_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @tape_34xx_erp_read_opposite(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_34xx_erp_overrun(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_34xx_erp_sequence(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_34xx_erp_succeeded(%struct.tape_request*) #1

declare dso_local i32 @tape_med_state_set(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_34xx_done(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
