; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_irb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_irb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.irb }
%struct.irb = type { %struct.TYPE_15__, %struct.TYPE_20__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@SCSW_FCTL_CLEAR_FUNC = common dso_local global i32 0, align 4
@SCSW_FCTL_START_FUNC = common dso_local global i32 0, align 4
@SCSW_STCTL_PRIM_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_INTER_STATUS = common dso_local global i32 0, align 4
@SCSW_ACTL_DEVACT = common dso_local global i32 0, align 4
@SCSW_ACTL_SCHACT = common dso_local global i32 0, align 4
@SCSW_ACTL_SUSPENDED = common dso_local global i32 0, align 4
@DEV_STAT_BUSY = common dso_local global i32 0, align 4
@SCSW_STCTL_SEC_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_ALERT_STATUS = common dso_local global i32 0, align 4
@SCHN_STAT_PCI = common dso_local global i32 0, align 4
@SCHN_STAT_INCORR_LEN = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_accumulate_irb(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.irb*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %6 = load %struct.irb*, %struct.irb** %4, align 8
  %7 = getelementptr inbounds %struct.irb, %struct.irb* %6, i32 0, i32 1
  %8 = call i32 @scsw_stctl(%struct.TYPE_20__* %7)
  %9 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %349

13:                                               ; preds = %2
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = load %struct.irb*, %struct.irb** %4, align 8
  %16 = call i32 @ccw_device_msg_control_check(%struct.ccw_device* %14, %struct.irb* %15)
  %17 = load %struct.irb*, %struct.irb** %4, align 8
  %18 = getelementptr inbounds %struct.irb, %struct.irb* %17, i32 0, i32 1
  %19 = call i64 @scsw_is_valid_pno(%struct.TYPE_20__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.irb*, %struct.irb** %4, align 8
  %23 = getelementptr inbounds %struct.irb, %struct.irb* %22, i32 0, i32 1
  %24 = call i64 @scsw_pno(%struct.TYPE_20__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %28 = call i32 @ccw_device_path_notoper(%struct.ccw_device* %27)
  br label %29

29:                                               ; preds = %26, %21, %13
  %30 = load %struct.irb*, %struct.irb** %4, align 8
  %31 = getelementptr inbounds %struct.irb, %struct.irb* %30, i32 0, i32 1
  %32 = call i64 @scsw_is_tm(%struct.TYPE_20__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.irb*, %struct.irb** %4, align 8
  %42 = call i32 @memcpy(%struct.irb* %40, %struct.irb* %41, i32 64)
  br label %349

43:                                               ; preds = %29
  %44 = load %struct.irb*, %struct.irb** %4, align 8
  %45 = getelementptr inbounds %struct.irb, %struct.irb* %44, i32 0, i32 1
  %46 = call i32 @scsw_is_solicited(%struct.TYPE_20__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %349

49:                                               ; preds = %43
  %50 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %51 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store %struct.irb* %55, %struct.irb** %5, align 8
  %56 = load %struct.irb*, %struct.irb** %4, align 8
  %57 = getelementptr inbounds %struct.irb, %struct.irb* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SCSW_FCTL_CLEAR_FUNC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %49
  %65 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %66 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = call i32 @memset(%struct.irb* %70, i32 0, i32 64)
  br label %72

72:                                               ; preds = %64, %49
  %73 = load %struct.irb*, %struct.irb** %4, align 8
  %74 = getelementptr inbounds %struct.irb, %struct.irb* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SCSW_FCTL_START_FUNC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %156

81:                                               ; preds = %72
  %82 = load %struct.irb*, %struct.irb** %4, align 8
  %83 = getelementptr inbounds %struct.irb, %struct.irb* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.irb*, %struct.irb** %5, align 8
  %88 = getelementptr inbounds %struct.irb, %struct.irb* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 14
  store i32 %86, i32* %90, align 4
  %91 = load %struct.irb*, %struct.irb** %4, align 8
  %92 = getelementptr inbounds %struct.irb, %struct.irb* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.irb*, %struct.irb** %5, align 8
  %97 = getelementptr inbounds %struct.irb, %struct.irb* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 13
  store i32 %95, i32* %99, align 4
  %100 = load %struct.irb*, %struct.irb** %4, align 8
  %101 = getelementptr inbounds %struct.irb, %struct.irb* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.irb*, %struct.irb** %5, align 8
  %106 = getelementptr inbounds %struct.irb, %struct.irb* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %104
  store i32 %110, i32* %108, align 4
  %111 = load %struct.irb*, %struct.irb** %4, align 8
  %112 = getelementptr inbounds %struct.irb, %struct.irb* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.irb*, %struct.irb** %5, align 8
  %117 = getelementptr inbounds %struct.irb, %struct.irb* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 11
  store i32 %115, i32* %119, align 4
  %120 = load %struct.irb*, %struct.irb** %4, align 8
  %121 = getelementptr inbounds %struct.irb, %struct.irb* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.irb*, %struct.irb** %5, align 8
  %126 = getelementptr inbounds %struct.irb, %struct.irb* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 10
  store i32 %124, i32* %128, align 4
  %129 = load %struct.irb*, %struct.irb** %4, align 8
  %130 = getelementptr inbounds %struct.irb, %struct.irb* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.irb*, %struct.irb** %5, align 8
  %135 = getelementptr inbounds %struct.irb, %struct.irb* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 9
  store i32 %133, i32* %137, align 4
  %138 = load %struct.irb*, %struct.irb** %4, align 8
  %139 = getelementptr inbounds %struct.irb, %struct.irb* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.irb*, %struct.irb** %5, align 8
  %144 = getelementptr inbounds %struct.irb, %struct.irb* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 8
  store i32 %142, i32* %146, align 4
  %147 = load %struct.irb*, %struct.irb** %4, align 8
  %148 = getelementptr inbounds %struct.irb, %struct.irb* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.irb*, %struct.irb** %5, align 8
  %153 = getelementptr inbounds %struct.irb, %struct.irb* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 7
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %81, %72
  %157 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %158 = load %struct.irb*, %struct.irb** %4, align 8
  %159 = call i32 @ccw_device_accumulate_ecw(%struct.ccw_device* %157, %struct.irb* %158)
  %160 = load %struct.irb*, %struct.irb** %4, align 8
  %161 = getelementptr inbounds %struct.irb, %struct.irb* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.irb*, %struct.irb** %5, align 8
  %166 = getelementptr inbounds %struct.irb, %struct.irb* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %164
  store i32 %170, i32* %168, align 4
  %171 = load %struct.irb*, %struct.irb** %4, align 8
  %172 = getelementptr inbounds %struct.irb, %struct.irb* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.irb*, %struct.irb** %5, align 8
  %177 = getelementptr inbounds %struct.irb, %struct.irb* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  store i32 %175, i32* %179, align 4
  %180 = load %struct.irb*, %struct.irb** %4, align 8
  %181 = getelementptr inbounds %struct.irb, %struct.irb* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.irb*, %struct.irb** %5, align 8
  %186 = getelementptr inbounds %struct.irb, %struct.irb* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %184
  store i32 %190, i32* %188, align 4
  %191 = load %struct.irb*, %struct.irb** %4, align 8
  %192 = getelementptr inbounds %struct.irb, %struct.irb* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @SCSW_STCTL_PRIM_STATUS, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %236, label %199

199:                                              ; preds = %156
  %200 = load %struct.irb*, %struct.irb** %4, align 8
  %201 = getelementptr inbounds %struct.irb, %struct.irb* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @SCSW_STCTL_INTER_STATUS, align 4
  %206 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %207 = or i32 %205, %206
  %208 = icmp eq i32 %204, %207
  br i1 %208, label %209, label %227

209:                                              ; preds = %199
  %210 = load %struct.irb*, %struct.irb** %4, align 8
  %211 = getelementptr inbounds %struct.irb, %struct.irb* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @SCSW_ACTL_DEVACT, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %209
  %219 = load %struct.irb*, %struct.irb** %4, align 8
  %220 = getelementptr inbounds %struct.irb, %struct.irb* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @SCSW_ACTL_SCHACT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %218, %209, %199
  %228 = load %struct.irb*, %struct.irb** %4, align 8
  %229 = getelementptr inbounds %struct.irb, %struct.irb* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @SCSW_ACTL_SUSPENDED, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %227, %218, %156
  %237 = load %struct.irb*, %struct.irb** %4, align 8
  %238 = getelementptr inbounds %struct.irb, %struct.irb* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.irb*, %struct.irb** %5, align 8
  %243 = getelementptr inbounds %struct.irb, %struct.irb* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 6
  store i32 %241, i32* %245, align 4
  br label %246

246:                                              ; preds = %236, %227
  %247 = load i32, i32* @DEV_STAT_BUSY, align 4
  %248 = xor i32 %247, -1
  %249 = load %struct.irb*, %struct.irb** %5, align 8
  %250 = getelementptr inbounds %struct.irb, %struct.irb* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, %248
  store i32 %254, i32* %252, align 4
  %255 = load %struct.irb*, %struct.irb** %4, align 8
  %256 = getelementptr inbounds %struct.irb, %struct.irb* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @SCSW_STCTL_PRIM_STATUS, align 4
  %261 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @SCSW_STCTL_INTER_STATUS, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %259, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %246
  %270 = load %struct.irb*, %struct.irb** %4, align 8
  %271 = getelementptr inbounds %struct.irb, %struct.irb* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.irb*, %struct.irb** %5, align 8
  %276 = getelementptr inbounds %struct.irb, %struct.irb* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %274
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %269, %246
  %282 = load %struct.irb*, %struct.irb** %4, align 8
  %283 = getelementptr inbounds %struct.irb, %struct.irb* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.irb*, %struct.irb** %5, align 8
  %288 = getelementptr inbounds %struct.irb, %struct.irb* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %286
  store i32 %292, i32* %290, align 4
  %293 = load %struct.irb*, %struct.irb** %4, align 8
  %294 = getelementptr inbounds %struct.irb, %struct.irb* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @SCSW_STCTL_PRIM_STATUS, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %323

301:                                              ; preds = %281
  %302 = load %struct.irb*, %struct.irb** %4, align 8
  %303 = getelementptr inbounds %struct.irb, %struct.irb* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @SCHN_STAT_PCI, align 4
  %308 = load i32, i32* @SCHN_STAT_INCORR_LEN, align 4
  %309 = or i32 %307, %308
  %310 = xor i32 %309, -1
  %311 = and i32 %306, %310
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %323

313:                                              ; preds = %301
  %314 = load %struct.irb*, %struct.irb** %4, align 8
  %315 = getelementptr inbounds %struct.irb, %struct.irb* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.irb*, %struct.irb** %5, align 8
  %320 = getelementptr inbounds %struct.irb, %struct.irb* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 5
  store i32 %318, i32* %322, align 4
  br label %323

323:                                              ; preds = %313, %301, %281
  %324 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %325 = load %struct.irb*, %struct.irb** %4, align 8
  %326 = call i32 @ccw_device_accumulate_esw(%struct.ccw_device* %324, %struct.irb* %325)
  %327 = load %struct.irb*, %struct.irb** %5, align 8
  %328 = getelementptr inbounds %struct.irb, %struct.irb* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %349

335:                                              ; preds = %323
  %336 = load %struct.irb*, %struct.irb** %5, align 8
  %337 = getelementptr inbounds %struct.irb, %struct.irb* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %349, label %343

343:                                              ; preds = %335
  %344 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %345 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %344, i32 0, i32 0
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 0
  store i32 1, i32* %348, align 8
  br label %349

349:                                              ; preds = %12, %34, %48, %343, %335, %323
  ret void
}

declare dso_local i32 @scsw_stctl(%struct.TYPE_20__*) #1

declare dso_local i32 @ccw_device_msg_control_check(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i64 @scsw_is_valid_pno(%struct.TYPE_20__*) #1

declare dso_local i64 @scsw_pno(%struct.TYPE_20__*) #1

declare dso_local i32 @ccw_device_path_notoper(%struct.ccw_device*) #1

declare dso_local i64 @scsw_is_tm(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(%struct.irb*, %struct.irb*, i32) #1

declare dso_local i32 @scsw_is_solicited(%struct.TYPE_20__*) #1

declare dso_local i32 @memset(%struct.irb*, i32, i32) #1

declare dso_local i32 @ccw_device_accumulate_ecw(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @ccw_device_accumulate_esw(%struct.ccw_device*, %struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
