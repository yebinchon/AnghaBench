; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c___ips_eh_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c___ips_eh_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, {}*, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_37__ = type { i64, i32, i32, i64, i64*, i32, i32, i32, i32, %struct.TYPE_35__*, i8*, i32, i32, %struct.TYPE_34__, %struct.TYPE_36__*, %struct.TYPE_29__ }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_34__ = type { i32 (%struct.TYPE_37__*)* }
%struct.TYPE_36__ = type { %struct.TYPE_28__*, %struct.TYPE_33__, i8**, i32 }
%struct.TYPE_28__ = type { i32, i32 (%struct.TYPE_28__*)* }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, i64, i64, i64, i32, i32, i8* }
%struct.TYPE_29__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_38__*, %struct.scsi_cmnd* }

@.str = private unnamed_addr constant [13 x i8] c"ips_eh_reset\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Reset called with NULL scsi command\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Reset called with NULL ha struct\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@ips_cmd_timeout = common dso_local global i32 0, align 4
@IPS_CMD_FLUSH = common dso_local global i8* null, align 8
@IPS_NORM_STATE = common dso_local global i32 0, align 4
@IPS_INTR_IORL = common dso_local global i32 0, align 4
@IPS_SUCCESS = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Reset Request - Flushed Cache\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Resetting controller.\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Controller reset failed - controller now offline.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"(%s%d) Failing active commands\00", align 1
@ips_name = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"(%s%d) Failing pending commands\00", align 1
@FALSE = common dso_local global i8* null, align 8
@DID_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @__ips_eh_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ips_eh_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = icmp ne %struct.scsi_cmnd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @FAILED, align 4
  store i32 %16, i32* %2, align 4
  br label %371

17:                                               ; preds = %1
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 2
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %25, %struct.TYPE_37__** %6, align 8
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %27 = icmp ne %struct.TYPE_37__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @FAILED, align 4
  store i32 %30, i32* %2, align 4
  br label %371

31:                                               ; preds = %17
  %32 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %32, i32 0, i32 10
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @FAILED, align 4
  store i32 %37, i32* %2, align 4
  br label %371

38:                                               ; preds = %31
  %39 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %39, i32 0, i32 15
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** %41, align 8
  store %struct.TYPE_38__* %42, %struct.TYPE_38__** %8, align 8
  br label %43

43:                                               ; preds = %54, %38
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %45 = icmp ne %struct.TYPE_38__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %47, i32 0, i32 1
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %48, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %51 = icmp ne %struct.scsi_cmnd* %49, %50
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_38__*, %struct.TYPE_38__** %56, align 8
  store %struct.TYPE_38__* %57, %struct.TYPE_38__** %8, align 8
  br label %43

58:                                               ; preds = %52
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %60 = icmp ne %struct.TYPE_38__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 15
  %64 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %65 = call i32 @ips_removeq_copp(%struct.TYPE_29__* %63, %struct.TYPE_38__* %64)
  %66 = load i32, i32* @SUCCESS, align 4
  store i32 %66, i32* %2, align 4
  br label %371

67:                                               ; preds = %58
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %68, i32 0, i32 11
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %71 = call i64 @ips_removeq_wait(i32* %69, %struct.scsi_cmnd* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @SUCCESS, align 4
  store i32 %74, i32* %2, align 4
  br label %371

75:                                               ; preds = %67
  %76 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %150

80:                                               ; preds = %75
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 14
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %82, align 8
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %83, i64 %88
  store %struct.TYPE_36__* %89, %struct.TYPE_36__** %7, align 8
  %90 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %92 = call i32 @ips_init_scb(%struct.TYPE_37__* %90, %struct.TYPE_36__* %91)
  %93 = load i32, i32* @ips_cmd_timeout, align 4
  %94 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load i8*, i8** @IPS_CMD_FLUSH, align 8
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %97, i32 0, i32 2
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  store i8* %96, i8** %100, align 8
  %101 = load i8*, i8** @IPS_CMD_FLUSH, align 8
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 6
  store i8* %101, i8** %105, align 8
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %107 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %108 = call i32 @IPS_COMMAND_ID(%struct.TYPE_37__* %106, %struct.TYPE_36__* %107)
  %109 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 5
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @IPS_NORM_STATE, align 4
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 4
  store i32 %113, i32* %117, align 8
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %136 = load i32, i32* @ips_cmd_timeout, align 4
  %137 = load i32, i32* @IPS_INTR_IORL, align 4
  %138 = call i32 @ips_send_wait(%struct.TYPE_37__* %134, %struct.TYPE_36__* %135, i32 %136, i32 %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @IPS_SUCCESS, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %80
  %143 = load i32, i32* @KERN_NOTICE, align 4
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %144, i32 0, i32 12
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @IPS_PRINTK(i32 %143, i32 %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i32, i32* @SUCCESS, align 4
  store i32 %148, i32* %2, align 4
  br label %371

149:                                              ; preds = %80
  br label %150

150:                                              ; preds = %149, %75
  %151 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* @KERN_NOTICE, align 4
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %154, i32 0, i32 12
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @IPS_PRINTK(i32 %153, i32 %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %158, i32 0, i32 13
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 0
  %161 = load i32 (%struct.TYPE_37__*)*, i32 (%struct.TYPE_37__*)** %160, align 8
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %163 = call i32 %161(%struct.TYPE_37__* %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %227, label %166

166:                                              ; preds = %150
  %167 = load i32, i32* @KERN_NOTICE, align 4
  %168 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @IPS_PRINTK(i32 %167, i32 %170, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %172 = load i32, i32* @ips_name, align 4
  %173 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %182, %166
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 5
  %180 = call %struct.TYPE_36__* @ips_removeq_scb_head(i32* %179)
  store %struct.TYPE_36__* %180, %struct.TYPE_36__** %7, align 8
  %181 = icmp ne %struct.TYPE_36__* %180, null
  br i1 %181, label %182, label %201

182:                                              ; preds = %177
  %183 = load i32, i32* @DID_ERROR, align 4
  %184 = shl i32 %183, 16
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 0
  store i32 %184, i32* %188, align 8
  %189 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 1
  %193 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %192, align 8
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %195, align 8
  %197 = call i32 %193(%struct.TYPE_28__* %196)
  %198 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %200 = call i32 @ips_freescb(%struct.TYPE_37__* %198, %struct.TYPE_36__* %199)
  br label %177

201:                                              ; preds = %177
  %202 = load i32, i32* @ips_name, align 4
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 %205)
  br label %207

207:                                              ; preds = %212, %201
  %208 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %208, i32 0, i32 11
  %210 = call %struct.scsi_cmnd* @ips_removeq_wait_head(i32* %209)
  store %struct.scsi_cmnd* %210, %struct.scsi_cmnd** %9, align 8
  %211 = icmp ne %struct.scsi_cmnd* %210, null
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load i32, i32* @DID_ERROR, align 4
  %214 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %215 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %217 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %216, i32 0, i32 1
  %218 = bitcast {}** %217 to i32 (%struct.scsi_cmnd*)**
  %219 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %218, align 8
  %220 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %221 = call i32 %219(%struct.scsi_cmnd* %220)
  br label %207

222:                                              ; preds = %207
  %223 = load i8*, i8** @FALSE, align 8
  %224 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %224, i32 0, i32 10
  store i8* %223, i8** %225, align 8
  %226 = load i32, i32* @FAILED, align 4
  store i32 %226, i32* %2, align 4
  br label %371

227:                                              ; preds = %150
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %229 = load i32, i32* @IPS_INTR_IORL, align 4
  %230 = call i32 @ips_clear_adapter(%struct.TYPE_37__* %228, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %294, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* @KERN_NOTICE, align 4
  %234 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %234, i32 0, i32 12
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @IPS_PRINTK(i32 %233, i32 %236, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %238 = load i32, i32* @ips_name, align 4
  %239 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %248, %232
  %244 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %244, i32 0, i32 5
  %246 = call %struct.TYPE_36__* @ips_removeq_scb_head(i32* %245)
  store %struct.TYPE_36__* %246, %struct.TYPE_36__** %7, align 8
  %247 = icmp ne %struct.TYPE_36__* %246, null
  br i1 %247, label %248, label %267

248:                                              ; preds = %243
  %249 = load i32, i32* @DID_ERROR, align 4
  %250 = shl i32 %249, 16
  %251 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 0
  store i32 %250, i32* %254, align 8
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 1
  %259 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %258, align 8
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %261, align 8
  %263 = call i32 %259(%struct.TYPE_28__* %262)
  %264 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %265 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %266 = call i32 @ips_freescb(%struct.TYPE_37__* %264, %struct.TYPE_36__* %265)
  br label %243

267:                                              ; preds = %243
  %268 = load i32, i32* @ips_name, align 4
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %268, i32 %271)
  br label %273

273:                                              ; preds = %278, %267
  %274 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %274, i32 0, i32 11
  %276 = call %struct.scsi_cmnd* @ips_removeq_wait_head(i32* %275)
  store %struct.scsi_cmnd* %276, %struct.scsi_cmnd** %10, align 8
  %277 = icmp ne %struct.scsi_cmnd* %276, null
  br i1 %277, label %278, label %289

278:                                              ; preds = %273
  %279 = load i32, i32* @DID_ERROR, align 4
  %280 = shl i32 %279, 16
  %281 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %282 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %284 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %283, i32 0, i32 1
  %285 = bitcast {}** %284 to i32 (%struct.scsi_cmnd*)**
  %286 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %285, align 8
  %287 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %288 = call i32 %286(%struct.scsi_cmnd* %287)
  br label %273

289:                                              ; preds = %273
  %290 = load i8*, i8** @FALSE, align 8
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %291, i32 0, i32 10
  store i8* %290, i8** %292, align 8
  %293 = load i32, i32* @FAILED, align 4
  store i32 %293, i32* %2, align 4
  br label %371

294:                                              ; preds = %227
  %295 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %295, i32 0, i32 9
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 3
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @le32_to_cpu(i32 %301)
  %303 = and i32 %302, 3145728
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %316

305:                                              ; preds = %294
  %306 = call i32 (...) @ktime_get_real_seconds()
  %307 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %307, i32 0, i32 8
  store i32 %306, i32* %308, align 4
  %309 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %309, i32 0, i32 7
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 8
  %313 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %314 = load i32, i32* @IPS_INTR_IORL, align 4
  %315 = call i32 @ips_ffdc_reset(%struct.TYPE_37__* %313, i32 %314)
  br label %316

316:                                              ; preds = %305, %294
  %317 = load i32, i32* @ips_name, align 4
  %318 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %318, i32 0, i32 6
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %317, i32 %320)
  br label %322

322:                                              ; preds = %327, %316
  %323 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %323, i32 0, i32 5
  %325 = call %struct.TYPE_36__* @ips_removeq_scb_head(i32* %324)
  store %struct.TYPE_36__* %325, %struct.TYPE_36__** %7, align 8
  %326 = icmp ne %struct.TYPE_36__* %325, null
  br i1 %326, label %327, label %346

327:                                              ; preds = %322
  %328 = load i32, i32* @DID_RESET, align 4
  %329 = shl i32 %328, 16
  %330 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 0
  store i32 %329, i32* %333, align 8
  %334 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_28__*, %struct.TYPE_28__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %336, i32 0, i32 1
  %338 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %337, align 8
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %340, align 8
  %342 = call i32 %338(%struct.TYPE_28__* %341)
  %343 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %344 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %345 = call i32 @ips_freescb(%struct.TYPE_37__* %343, %struct.TYPE_36__* %344)
  br label %322

346:                                              ; preds = %322
  store i32 1, i32* %5, align 4
  br label %347

347:                                              ; preds = %361, %346
  %348 = load i32, i32* %5, align 4
  %349 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = icmp slt i32 %348, %351
  br i1 %352, label %353, label %364

353:                                              ; preds = %347
  %354 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %354, i32 0, i32 4
  %356 = load i64*, i64** %355, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i64, i64* %356, i64 %359
  store i64 0, i64* %360, align 8
  br label %361

361:                                              ; preds = %353
  %362 = load i32, i32* %5, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %5, align 4
  br label %347

364:                                              ; preds = %347
  %365 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %365, i32 0, i32 3
  store i64 0, i64* %366, align 8
  %367 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %368 = load i32, i32* @IPS_INTR_IORL, align 4
  %369 = call i32 @ips_next(%struct.TYPE_37__* %367, i32 %368)
  %370 = load i32, i32* @SUCCESS, align 4
  store i32 %370, i32* %2, align 4
  br label %371

371:                                              ; preds = %364, %289, %222, %142, %73, %61, %36, %28, %14
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @ips_removeq_copp(%struct.TYPE_29__*, %struct.TYPE_38__*) #1

declare dso_local i64 @ips_removeq_wait(i32*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ips_init_scb(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32 @IPS_COMMAND_ID(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32 @ips_send_wait(%struct.TYPE_37__*, %struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @IPS_PRINTK(i32, i32, i8*) #1

declare dso_local i32 @DEBUG_VAR(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_36__* @ips_removeq_scb_head(i32*) #1

declare dso_local i32 @ips_freescb(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local %struct.scsi_cmnd* @ips_removeq_wait_head(i32*) #1

declare dso_local i32 @ips_clear_adapter(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @ips_ffdc_reset(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @ips_next(%struct.TYPE_37__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
