; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_scsi_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_scsi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32*, i32, i32, i64, i32, i32, %struct.TYPE_3__*, i64, i64, %struct.fsg_buffhd*, %struct.fsg_buffhd* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fsg_buffhd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@do_scsi_command.unknown = internal global [16 x i8] zeroinitializer, align 16
@DATA_DIR_TO_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"INQUIRY\00", align 1
@DATA_DIR_FROM_HOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"MODE SELECT(6)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"MODE SELECT(10)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"MODE SENSE(6)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"MODE SENSE(10)\00", align 1
@DATA_DIR_NONE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"PREVENT-ALLOW MEDIUM REMOVAL\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"READ(6)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"READ(10)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"READ(12)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"READ CAPACITY\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"READ HEADER\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"READ TOC\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"READ FORMAT CAPACITIES\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"REQUEST SENSE\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"START-STOP UNIT\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"SYNCHRONIZE CACHE\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"TEST UNIT READY\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"WRITE(6)\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"WRITE(10)\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"WRITE(12)\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Unknown x%02x\00", align 1
@DATA_DIR_UNKNOWN = common dso_local global i64 0, align 8
@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@BUF_STATE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @do_scsi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_scsi_command(%struct.fsg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %11 = call i32 @dump_cdb(%struct.fsg_common* %10)
  %12 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %13 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %12, i32 0, i32 10
  %14 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %13, align 8
  store %struct.fsg_buffhd* %14, %struct.fsg_buffhd** %4, align 8
  %15 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %16 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %17 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %16, i32 0, i32 9
  store %struct.fsg_buffhd* %15, %struct.fsg_buffhd** %17, align 8
  %18 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %19 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %20 = call i32 @sleep_thread(%struct.fsg_common* %18, i32 0, %struct.fsg_buffhd* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %496

25:                                               ; preds = %1
  %26 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %27 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %29 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %31 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %30, i32 0, i32 5
  %32 = call i32 @down_read(i32* %31)
  %33 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %34 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %419 [
    i32 150, label %38
    i32 149, label %56
    i32 148, label %74
    i32 147, label %93
    i32 146, label %111
    i32 152, label %130
    i32 143, label %142
    i32 145, label %166
    i32 144, label %184
    i32 142, label %202
    i32 140, label %215
    i32 139, label %247
    i32 141, label %279
    i32 137, label %298
    i32 134, label %316
    i32 133, label %328
    i32 132, label %340
    i32 131, label %346
    i32 128, label %358
    i32 130, label %382
    i32 129, label %400
    i32 151, label %418
    i32 138, label %418
    i32 136, label %418
    i32 135, label %418
  ]

38:                                               ; preds = %25
  %39 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %40 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %45 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %47 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %48 = call i32 @check_command(%struct.fsg_common* %46, i32 6, i64 %47, i32 16, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %53 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %54 = call i32 @do_inquiry(%struct.fsg_common* %52, %struct.fsg_buffhd* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %38
  br label %446

56:                                               ; preds = %25
  %57 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %58 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %63 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %65 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %66 = call i32 @check_command(%struct.fsg_common* %64, i32 6, i64 %65, i32 18, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %71 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %72 = call i32 @do_mode_select(%struct.fsg_common* %70, %struct.fsg_buffhd* %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %56
  br label %446

74:                                               ; preds = %25
  %75 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %76 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  %79 = call i8* @get_unaligned_be16(i32* %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %82 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %84 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %85 = call i32 @check_command(%struct.fsg_common* %83, i32 10, i64 %84, i32 386, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %90 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %91 = call i32 @do_mode_select(%struct.fsg_common* %89, %struct.fsg_buffhd* %90)
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %74
  br label %446

93:                                               ; preds = %25
  %94 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %95 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %100 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %102 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %103 = call i32 @check_command(%struct.fsg_common* %101, i32 6, i64 %102, i32 22, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %108 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %109 = call i32 @do_mode_sense(%struct.fsg_common* %107, %struct.fsg_buffhd* %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %106, %93
  br label %446

111:                                              ; preds = %25
  %112 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %113 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 7
  %116 = call i8* @get_unaligned_be16(i32* %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %119 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %121 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %122 = call i32 @check_command(%struct.fsg_common* %120, i32 10, i64 %121, i32 390, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %111
  %126 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %127 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %128 = call i32 @do_mode_sense(%struct.fsg_common* %126, %struct.fsg_buffhd* %127)
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %125, %111
  br label %446

130:                                              ; preds = %25
  %131 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %132 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %131, i32 0, i32 1
  store i32 0, i32* %132, align 8
  %133 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %134 = load i64, i64* @DATA_DIR_NONE, align 8
  %135 = call i32 @check_command(%struct.fsg_common* %133, i32 6, i64 %134, i32 16, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %140 = call i32 @do_prevent_allow(%struct.fsg_common* %139)
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %138, %130
  br label %446

142:                                              ; preds = %25
  %143 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %144 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %153

151:                                              ; preds = %142
  %152 = load i32, i32* %7, align 4
  br label %153

153:                                              ; preds = %151, %150
  %154 = phi i32 [ 256, %150 ], [ %152, %151 ]
  %155 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %156 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %158 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %159 = call i32 @check_command_size_in_blocks(%struct.fsg_common* %157, i32 6, i64 %158, i32 30, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %164 = call i32 @do_read(%struct.fsg_common* %163)
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %162, %153
  br label %446

166:                                              ; preds = %25
  %167 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %168 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 7
  %171 = call i8* @get_unaligned_be16(i32* %170)
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %174 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %176 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %177 = call i32 @check_command_size_in_blocks(%struct.fsg_common* %175, i32 10, i64 %176, i32 446, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %166
  %181 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %182 = call i32 @do_read(%struct.fsg_common* %181)
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %180, %166
  br label %446

184:                                              ; preds = %25
  %185 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %186 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 6
  %189 = call i8* @get_unaligned_be32(i32* %188)
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %192 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 8
  %193 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %194 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %195 = call i32 @check_command_size_in_blocks(%struct.fsg_common* %193, i32 12, i64 %194, i32 1022, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %184
  %199 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %200 = call i32 @do_read(%struct.fsg_common* %199)
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %198, %184
  br label %446

202:                                              ; preds = %25
  %203 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %204 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %203, i32 0, i32 1
  store i32 8, i32* %204, align 8
  %205 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %206 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %207 = call i32 @check_command(%struct.fsg_common* %205, i32 10, i64 %206, i32 316, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %202
  %211 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %212 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %213 = call i32 @do_read_capacity(%struct.fsg_common* %211, %struct.fsg_buffhd* %212)
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %210, %202
  br label %446

215:                                              ; preds = %25
  %216 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %217 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %216, i32 0, i32 6
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = icmp ne %struct.TYPE_3__* %218, null
  br i1 %219, label %220, label %227

220:                                              ; preds = %215
  %221 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %222 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %221, i32 0, i32 6
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %220, %215
  br label %420

228:                                              ; preds = %220
  %229 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %230 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 7
  %233 = call i8* @get_unaligned_be16(i32* %232)
  %234 = ptrtoint i8* %233 to i32
  %235 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %236 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  %237 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %238 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %239 = call i32 @check_command(%struct.fsg_common* %237, i32 10, i64 %238, i32 446, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %228
  %243 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %244 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %245 = call i32 @do_read_header(%struct.fsg_common* %243, %struct.fsg_buffhd* %244)
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %242, %228
  br label %446

247:                                              ; preds = %25
  %248 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %249 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %248, i32 0, i32 6
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %249, align 8
  %251 = icmp ne %struct.TYPE_3__* %250, null
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %254 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %253, i32 0, i32 6
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %252, %247
  br label %420

260:                                              ; preds = %252
  %261 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %262 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 7
  %265 = call i8* @get_unaligned_be16(i32* %264)
  %266 = ptrtoint i8* %265 to i32
  %267 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %268 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 8
  %269 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %270 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %271 = call i32 @check_command(%struct.fsg_common* %269, i32 10, i64 %270, i32 450, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i32 %271, i32* %6, align 4
  %272 = load i32, i32* %6, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %260
  %275 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %276 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %277 = call i32 @do_read_toc(%struct.fsg_common* %275, %struct.fsg_buffhd* %276)
  store i32 %277, i32* %6, align 4
  br label %278

278:                                              ; preds = %274, %260
  br label %446

279:                                              ; preds = %25
  %280 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %281 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 7
  %284 = call i8* @get_unaligned_be16(i32* %283)
  %285 = ptrtoint i8* %284 to i32
  %286 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %287 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 8
  %288 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %289 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %290 = call i32 @check_command(%struct.fsg_common* %288, i32 10, i64 %289, i32 384, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  store i32 %290, i32* %6, align 4
  %291 = load i32, i32* %6, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %279
  %294 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %295 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %296 = call i32 @do_read_format_capacities(%struct.fsg_common* %294, %struct.fsg_buffhd* %295)
  store i32 %296, i32* %6, align 4
  br label %297

297:                                              ; preds = %293, %279
  br label %446

298:                                              ; preds = %25
  %299 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %300 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 4
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %305 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 8
  %306 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %307 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %308 = call i32 @check_command(%struct.fsg_common* %306, i32 6, i64 %307, i32 16, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %6, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %298
  %312 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %313 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %314 = call i32 @do_request_sense(%struct.fsg_common* %312, %struct.fsg_buffhd* %313)
  store i32 %314, i32* %6, align 4
  br label %315

315:                                              ; preds = %311, %298
  br label %446

316:                                              ; preds = %25
  %317 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %318 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %317, i32 0, i32 1
  store i32 0, i32* %318, align 8
  %319 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %320 = load i64, i64* @DATA_DIR_NONE, align 8
  %321 = call i32 @check_command(%struct.fsg_common* %319, i32 6, i64 %320, i32 18, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  store i32 %321, i32* %6, align 4
  %322 = load i32, i32* %6, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %316
  %325 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %326 = call i32 @do_start_stop(%struct.fsg_common* %325)
  store i32 %326, i32* %6, align 4
  br label %327

327:                                              ; preds = %324, %316
  br label %446

328:                                              ; preds = %25
  %329 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %330 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %329, i32 0, i32 1
  store i32 0, i32* %330, align 8
  %331 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %332 = load i64, i64* @DATA_DIR_NONE, align 8
  %333 = call i32 @check_command(%struct.fsg_common* %331, i32 10, i64 %332, i32 444, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  store i32 %333, i32* %6, align 4
  %334 = load i32, i32* %6, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %328
  %337 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %338 = call i32 @do_synchronize_cache(%struct.fsg_common* %337)
  store i32 %338, i32* %6, align 4
  br label %339

339:                                              ; preds = %336, %328
  br label %446

340:                                              ; preds = %25
  %341 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %342 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %341, i32 0, i32 1
  store i32 0, i32* %342, align 8
  %343 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %344 = load i64, i64* @DATA_DIR_NONE, align 8
  %345 = call i32 @check_command(%struct.fsg_common* %343, i32 6, i64 %344, i32 0, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  store i32 %345, i32* %6, align 4
  br label %446

346:                                              ; preds = %25
  %347 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %348 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %347, i32 0, i32 1
  store i32 0, i32* %348, align 8
  %349 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %350 = load i64, i64* @DATA_DIR_NONE, align 8
  %351 = call i32 @check_command(%struct.fsg_common* %349, i32 10, i64 %350, i32 446, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  store i32 %351, i32* %6, align 4
  %352 = load i32, i32* %6, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %346
  %355 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %356 = call i32 @do_verify(%struct.fsg_common* %355)
  store i32 %356, i32* %6, align 4
  br label %357

357:                                              ; preds = %354, %346
  br label %446

358:                                              ; preds = %25
  %359 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %360 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 4
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %7, align 4
  %364 = load i32, i32* %7, align 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %358
  br label %369

367:                                              ; preds = %358
  %368 = load i32, i32* %7, align 4
  br label %369

369:                                              ; preds = %367, %366
  %370 = phi i32 [ 256, %366 ], [ %368, %367 ]
  %371 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %372 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %371, i32 0, i32 1
  store i32 %370, i32* %372, align 8
  %373 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %374 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %375 = call i32 @check_command_size_in_blocks(%struct.fsg_common* %373, i32 6, i64 %374, i32 30, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  store i32 %375, i32* %6, align 4
  %376 = load i32, i32* %6, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %369
  %379 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %380 = call i32 @do_write(%struct.fsg_common* %379)
  store i32 %380, i32* %6, align 4
  br label %381

381:                                              ; preds = %378, %369
  br label %446

382:                                              ; preds = %25
  %383 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %384 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %383, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 7
  %387 = call i8* @get_unaligned_be16(i32* %386)
  %388 = ptrtoint i8* %387 to i32
  %389 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %390 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %389, i32 0, i32 1
  store i32 %388, i32* %390, align 8
  %391 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %392 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %393 = call i32 @check_command_size_in_blocks(%struct.fsg_common* %391, i32 10, i64 %392, i32 446, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  store i32 %393, i32* %6, align 4
  %394 = load i32, i32* %6, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %382
  %397 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %398 = call i32 @do_write(%struct.fsg_common* %397)
  store i32 %398, i32* %6, align 4
  br label %399

399:                                              ; preds = %396, %382
  br label %446

400:                                              ; preds = %25
  %401 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %402 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %401, i32 0, i32 0
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 6
  %405 = call i8* @get_unaligned_be32(i32* %404)
  %406 = ptrtoint i8* %405 to i32
  %407 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %408 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %407, i32 0, i32 1
  store i32 %406, i32* %408, align 8
  %409 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %410 = load i64, i64* @DATA_DIR_FROM_HOST, align 8
  %411 = call i32 @check_command_size_in_blocks(%struct.fsg_common* %409, i32 12, i64 %410, i32 1022, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  store i32 %411, i32* %6, align 4
  %412 = load i32, i32* %6, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %400
  %415 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %416 = call i32 @do_write(%struct.fsg_common* %415)
  store i32 %416, i32* %6, align 4
  br label %417

417:                                              ; preds = %414, %400
  br label %446

418:                                              ; preds = %25, %25, %25, %25
  br label %419

419:                                              ; preds = %25, %418
  br label %420

420:                                              ; preds = %419, %259, %227
  %421 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %422 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %421, i32 0, i32 1
  store i32 0, i32* %422, align 8
  %423 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %424 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 0
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @do_scsi_command.unknown, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %427)
  %429 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %430 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %431 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = load i64, i64* @DATA_DIR_UNKNOWN, align 8
  %434 = call i32 @check_command(%struct.fsg_common* %429, i32 %432, i64 %433, i32 -1, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @do_scsi_command.unknown, i64 0, i64 0))
  store i32 %434, i32* %6, align 4
  %435 = load i32, i32* %6, align 4
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %420
  %438 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %439 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %440 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %439, i32 0, i32 6
  %441 = load %struct.TYPE_3__*, %struct.TYPE_3__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %441, i32 0, i32 0
  store i32 %438, i32* %442, align 4
  %443 = load i32, i32* @EINVAL, align 4
  %444 = sub nsw i32 0, %443
  store i32 %444, i32* %6, align 4
  br label %445

445:                                              ; preds = %437, %420
  br label %446

446:                                              ; preds = %445, %417, %399, %381, %357, %340, %339, %327, %315, %297, %278, %246, %214, %201, %183, %165, %141, %129, %110, %92, %73, %55
  %447 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %448 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %447, i32 0, i32 5
  %449 = call i32 @up_read(i32* %448)
  %450 = load i32, i32* %6, align 4
  %451 = load i32, i32* @EINTR, align 4
  %452 = sub nsw i32 0, %451
  %453 = icmp eq i32 %450, %452
  br i1 %453, label %458, label %454

454:                                              ; preds = %446
  %455 = load i32, i32* @current, align 4
  %456 = call i64 @signal_pending(i32 %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %454, %446
  %459 = load i32, i32* @EINTR, align 4
  %460 = sub nsw i32 0, %459
  store i32 %460, i32* %2, align 4
  br label %496

461:                                              ; preds = %454
  %462 = load i32, i32* %6, align 4
  %463 = load i32, i32* @EINVAL, align 4
  %464 = sub nsw i32 0, %463
  %465 = icmp eq i32 %462, %464
  br i1 %465, label %466, label %467

466:                                              ; preds = %461
  store i32 0, i32* %6, align 4
  br label %467

467:                                              ; preds = %466, %461
  %468 = load i32, i32* %6, align 4
  %469 = icmp sge i32 %468, 0
  br i1 %469, label %470, label %495

470:                                              ; preds = %467
  %471 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %472 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %471, i32 0, i32 3
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @DATA_DIR_TO_HOST, align 8
  %475 = icmp eq i64 %473, %474
  br i1 %475, label %476, label %495

476:                                              ; preds = %470
  %477 = load i32, i32* %6, align 4
  %478 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %479 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @min(i32 %477, i32 %480)
  store i32 %481, i32* %6, align 4
  %482 = load i32, i32* %6, align 4
  %483 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %484 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %483, i32 0, i32 1
  %485 = load %struct.TYPE_4__*, %struct.TYPE_4__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %485, i32 0, i32 0
  store i32 %482, i32* %486, align 4
  %487 = load i32, i32* @BUF_STATE_FULL, align 4
  %488 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %489 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %488, i32 0, i32 0
  store i32 %487, i32* %489, align 8
  %490 = load i32, i32* %6, align 4
  %491 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %492 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %491, i32 0, i32 4
  %493 = load i32, i32* %492, align 8
  %494 = sub nsw i32 %493, %490
  store i32 %494, i32* %492, align 8
  br label %495

495:                                              ; preds = %476, %470, %467
  store i32 0, i32* %2, align 4
  br label %496

496:                                              ; preds = %495, %458, %23
  %497 = load i32, i32* %2, align 4
  ret i32 %497
}

declare dso_local i32 @dump_cdb(%struct.fsg_common*) #1

declare dso_local i32 @sleep_thread(%struct.fsg_common*, i32, %struct.fsg_buffhd*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @check_command(%struct.fsg_common*, i32, i64, i32, i32, i8*) #1

declare dso_local i32 @do_inquiry(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_mode_select(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i8* @get_unaligned_be16(i32*) #1

declare dso_local i32 @do_mode_sense(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_prevent_allow(%struct.fsg_common*) #1

declare dso_local i32 @check_command_size_in_blocks(%struct.fsg_common*, i32, i64, i32, i32, i8*) #1

declare dso_local i32 @do_read(%struct.fsg_common*) #1

declare dso_local i8* @get_unaligned_be32(i32*) #1

declare dso_local i32 @do_read_capacity(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_read_header(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_read_toc(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_read_format_capacities(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_request_sense(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @do_start_stop(%struct.fsg_common*) #1

declare dso_local i32 @do_synchronize_cache(%struct.fsg_common*) #1

declare dso_local i32 @do_verify(%struct.fsg_common*) #1

declare dso_local i32 @do_write(%struct.fsg_common*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
