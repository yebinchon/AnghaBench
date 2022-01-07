; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_new_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.ccw_device**, i32 }
%struct.ccw_device = type { i32, i32 }
%struct.ctcm_priv = type { i32, %struct.TYPE_4__**, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.channel = type { i32 }

@CTCM_ID_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ch-%s\00", align 1
@TRACE = common dso_local global i32 0, align 4
@CTC_DBF_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s(%s) set_online rc=%d\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CTCM_READ = common dso_local global i32 0, align 4
@CTCM_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"setup OK : r/w = %s/%s, protocol : %d\0A\00", align 1
@SETUP = common dso_local global i32 0, align 4
@CTC_DBF_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"setup(%s) OK : r/w = %s/%s, protocol : %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @ctcm_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_new_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ctcm_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ccw_device*, align 8
  %12 = alloca %struct.ccw_device*, align 8
  %13 = alloca %struct.channel*, align 8
  %14 = alloca %struct.channel*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %18 = load i32, i32* @CTCM_ID_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %4, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %22 = load i32, i32* @CTCM_ID_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  %25 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %26 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %25, i32 0, i32 1
  %27 = call %struct.ctcm_priv* @dev_get_drvdata(i32* %26)
  store %struct.ctcm_priv* %27, %struct.ctcm_priv** %9, align 8
  %28 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %29 = icmp ne %struct.ctcm_priv* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %16, align 4
  br label %296

33:                                               ; preds = %1
  %34 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %35 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %34, i32 0, i32 0
  %36 = load %struct.ccw_device**, %struct.ccw_device*** %35, align 8
  %37 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %36, i64 0
  %38 = load %struct.ccw_device*, %struct.ccw_device** %37, align 8
  store %struct.ccw_device* %38, %struct.ccw_device** %11, align 8
  %39 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %40 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %39, i32 0, i32 0
  %41 = load %struct.ccw_device**, %struct.ccw_device*** %40, align 8
  %42 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %41, i64 1
  %43 = load %struct.ccw_device*, %struct.ccw_device** %42, align 8
  store %struct.ccw_device* %43, %struct.ccw_device** %12, align 8
  %44 = load %struct.ccw_device*, %struct.ccw_device** %11, align 8
  %45 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %44, i32 0, i32 1
  %46 = call i32 @get_channel_type(i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @CTCM_ID_SIZE, align 4
  %48 = load %struct.ccw_device*, %struct.ccw_device** %11, align 8
  %49 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %48, i32 0, i32 0
  %50 = call i8* @dev_name(i32* %49)
  %51 = call i32 @snprintf(i8* %21, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @CTCM_ID_SIZE, align 4
  %53 = load %struct.ccw_device*, %struct.ccw_device** %12, align 8
  %54 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %53, i32 0, i32 0
  %55 = call i8* @dev_name(i32* %54)
  %56 = call i32 @snprintf(i8* %24, i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load %struct.ccw_device*, %struct.ccw_device** %11, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %60 = call i32 @add_channel(%struct.ccw_device* %57, i32 %58, %struct.ctcm_priv* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %33
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %16, align 4
  br label %296

65:                                               ; preds = %33
  %66 = load %struct.ccw_device*, %struct.ccw_device** %12, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %69 = call i32 @add_channel(%struct.ccw_device* %66, i32 %67, %struct.ctcm_priv* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %16, align 4
  br label %289

74:                                               ; preds = %65
  %75 = load %struct.ccw_device*, %struct.ccw_device** %11, align 8
  %76 = call i32 @ccw_device_set_online(%struct.ccw_device* %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i32, i32* @TRACE, align 4
  %81 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %82 = load i32, i32* @CTCM_FUNTAIL, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 (i32, i32, i8*, i32, i8*, i32, ...) @CTCM_DBF_TEXT_(i32 %80, i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %82, i8* %21, i32 %83)
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %16, align 4
  br label %282

87:                                               ; preds = %74
  %88 = load %struct.ccw_device*, %struct.ccw_device** %12, align 8
  %89 = call i32 @ccw_device_set_online(%struct.ccw_device* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* @TRACE, align 4
  %94 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %95 = load i32, i32* @CTCM_FUNTAIL, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 (i32, i32, i8*, i32, i8*, i32, ...) @CTCM_DBF_TEXT_(i32 %93, i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %95, i8* %24, i32 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %16, align 4
  br label %275

100:                                              ; preds = %87
  %101 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %102 = call %struct.net_device* @ctcm_init_netdevice(%struct.ctcm_priv* %101)
  store %struct.net_device* %102, %struct.net_device** %10, align 8
  %103 = load %struct.net_device*, %struct.net_device** %10, align 8
  %104 = icmp eq %struct.net_device* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %16, align 4
  br label %268

108:                                              ; preds = %100
  %109 = load i32, i32* @CTCM_READ, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %188, %108
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @CTCM_WRITE, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %191

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @CTCM_READ, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %121

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %119
  %122 = phi i8* [ %21, %119 ], [ %24, %120 ]
  %123 = load i32, i32* %7, align 4
  %124 = call i8* @channel_get(i32 %115, i8* %122, i32 %123)
  %125 = bitcast i8* %124 to %struct.TYPE_4__*
  %126 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %127 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %128, i64 %130
  store %struct.TYPE_4__* %125, %struct.TYPE_4__** %131, align 8
  %132 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %133 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %134, i64 %136
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = icmp eq %struct.TYPE_4__* %138, null
  br i1 %139, label %140, label %156

140:                                              ; preds = %121
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @CTCM_WRITE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %146 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %146, align 8
  %148 = load i32, i32* @CTCM_READ, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %147, i64 %149
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = call i32 @channel_free(%struct.TYPE_4__* %151)
  br label %153

153:                                              ; preds = %144, %140
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %16, align 4
  br label %265

156:                                              ; preds = %121
  %157 = load %struct.net_device*, %struct.net_device** %10, align 8
  %158 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %159 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %160, i64 %162
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  store %struct.net_device* %157, %struct.net_device** %165, align 8
  %166 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %167 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %170 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %171, i64 %173
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  store i32 %168, i32* %176, align 8
  %177 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %178 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %181 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %180, i32 0, i32 1
  %182 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %182, i64 %184
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  store i32 %179, i32* %187, align 4
  br label %188

188:                                              ; preds = %156
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %110

191:                                              ; preds = %110
  %192 = load %struct.net_device*, %struct.net_device** %10, align 8
  %193 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %194 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %193, i32 0, i32 1
  %195 = call i32 @SET_NETDEV_DEV(%struct.net_device* %192, i32* %194)
  %196 = load %struct.net_device*, %struct.net_device** %10, align 8
  %197 = call i64 @register_netdev(%struct.net_device* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load i32, i32* @ENODEV, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %16, align 4
  br label %265

202:                                              ; preds = %191
  %203 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %204 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %203, i32 0, i32 2
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.net_device*, %struct.net_device** %10, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @strlcpy(i32 %207, i32 %210, i32 4)
  %212 = load %struct.net_device*, %struct.net_device** %10, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 1
  %214 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %215 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %214, i32 0, i32 1
  %216 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %215, align 8
  %217 = load i32, i32* @CTCM_READ, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %216, i64 %218
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %224 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %223, i32 0, i32 1
  %225 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %224, align 8
  %226 = load i32, i32* @CTCM_WRITE, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %225, i64 %227
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %233 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @dev_info(i32* %213, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %222, i32 %231, i32 %234)
  %236 = load i32, i32* @SETUP, align 4
  %237 = load i32, i32* @CTC_DBF_INFO, align 4
  %238 = load %struct.net_device*, %struct.net_device** %10, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %242 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %241, i32 0, i32 1
  %243 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %242, align 8
  %244 = load i32, i32* @CTCM_READ, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %243, i64 %245
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to i8*
  %252 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %253 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %252, i32 0, i32 1
  %254 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %253, align 8
  %255 = load i32, i32* @CTCM_WRITE, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %254, i64 %256
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %262 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 (i32, i32, i8*, i32, i8*, i32, ...) @CTCM_DBF_TEXT_(i32 %236, i32 %237, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %240, i8* %251, i32 %260, i32 %263)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %298

265:                                              ; preds = %199, %153
  %266 = load %struct.net_device*, %struct.net_device** %10, align 8
  %267 = call i32 @ctcm_free_netdevice(%struct.net_device* %266)
  br label %268

268:                                              ; preds = %265, %105
  %269 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %270 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %269, i32 0, i32 0
  %271 = load %struct.ccw_device**, %struct.ccw_device*** %270, align 8
  %272 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %271, i64 1
  %273 = load %struct.ccw_device*, %struct.ccw_device** %272, align 8
  %274 = call i32 @ccw_device_set_offline(%struct.ccw_device* %273)
  br label %275

275:                                              ; preds = %268, %92
  %276 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %277 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %276, i32 0, i32 0
  %278 = load %struct.ccw_device**, %struct.ccw_device*** %277, align 8
  %279 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %278, i64 0
  %280 = load %struct.ccw_device*, %struct.ccw_device** %279, align 8
  %281 = call i32 @ccw_device_set_offline(%struct.ccw_device* %280)
  br label %282

282:                                              ; preds = %275, %79
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @CTCM_READ, align 4
  %285 = call i8* @channel_get(i32 %283, i8* %21, i32 %284)
  %286 = bitcast i8* %285 to %struct.channel*
  store %struct.channel* %286, %struct.channel** %13, align 8
  %287 = load %struct.channel*, %struct.channel** %13, align 8
  %288 = call i32 @channel_remove(%struct.channel* %287)
  br label %289

289:                                              ; preds = %282, %72
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* @CTCM_WRITE, align 4
  %292 = call i8* @channel_get(i32 %290, i8* %24, i32 %291)
  %293 = bitcast i8* %292 to %struct.channel*
  store %struct.channel* %293, %struct.channel** %14, align 8
  %294 = load %struct.channel*, %struct.channel** %14, align 8
  %295 = call i32 @channel_remove(%struct.channel* %294)
  br label %296

296:                                              ; preds = %289, %63, %30
  %297 = load i32, i32* %16, align 4
  store i32 %297, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %298

298:                                              ; preds = %296, %202
  %299 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %299)
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(i32*) #2

declare dso_local i32 @get_channel_type(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dev_name(i32*) #2

declare dso_local i32 @add_channel(%struct.ccw_device*, i32, %struct.ctcm_priv*) #2

declare dso_local i32 @ccw_device_set_online(%struct.ccw_device*) #2

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i8*, i32, ...) #2

declare dso_local %struct.net_device* @ctcm_init_netdevice(%struct.ctcm_priv*) #2

declare dso_local i8* @channel_get(i32, i8*, i32) #2

declare dso_local i32 @channel_free(%struct.TYPE_4__*) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #2

declare dso_local i64 @register_netdev(%struct.net_device*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @ctcm_free_netdevice(%struct.net_device*) #2

declare dso_local i32 @ccw_device_set_offline(%struct.ccw_device*) #2

declare dso_local i32 @channel_remove(%struct.channel*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
