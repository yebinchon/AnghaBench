; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vme/devices/extr_vme_user.c_vme_user_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vme/devices/extr_vme_user.c_vme_user_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_dev = type { i32 }
%struct.TYPE_7__ = type { i32*, i64, i32*, i8*, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@vme_user_bridge = common dso_local global %struct.vme_dev* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Driver can only be loaded for 1 device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VME_DEVS = common dso_local global i32 0, align 4
@image = common dso_local global %struct.TYPE_7__* null, align 8
@VME_MAJOR = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Error getting Major Number %d for driver.\0A\00", align 1
@vme_user_cdev = common dso_local global %struct.TYPE_6__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@vme_user_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@SLAVE_MAX = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i32 0, align 4
@VME_SCT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to allocate slave resource\0A\00", align 1
@PCI_BUF_SIZE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for buffer\0A\00", align 1
@MASTER_MAX = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i32 0, align 4
@VME_D32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Unable to allocate master resource\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@vme_user_sysfs_class = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Error creating vme_user class.\0A\00", align 1
@type = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"bus/vme/m%d\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bus/vme/ctl\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"bus/vme/s%d\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Error creating sysfs device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_dev*)* @vme_user_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vme_user_probe(%struct.vme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vme_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.vme_dev* %0, %struct.vme_dev** %3, align 8
  %8 = load %struct.vme_dev*, %struct.vme_dev** @vme_user_bridge, align 8
  %9 = icmp ne %struct.vme_dev* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %12 = getelementptr inbounds %struct.vme_dev, %struct.vme_dev* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %417

16:                                               ; preds = %1
  %17 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  store %struct.vme_dev* %17, %struct.vme_dev** @vme_user_bridge, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %49, %16
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @VME_DEVS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %22
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %18

52:                                               ; preds = %18
  %53 = load i32, i32* @VME_MAJOR, align 4
  %54 = call i32 @MKDEV(i32 %53, i32 0)
  %55 = load i32, i32* @VME_DEVS, align 4
  %56 = load i32, i32* @driver_name, align 4
  %57 = call i32 @register_chrdev_region(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %62 = getelementptr inbounds %struct.vme_dev, %struct.vme_dev* %61, i32 0, i32 0
  %63 = load i32, i32* @VME_MAJOR, align 4
  %64 = call i32 (i32*, i8*, ...) @dev_warn(i32* %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %416

65:                                               ; preds = %52
  %66 = call %struct.TYPE_6__* (...) @cdev_alloc()
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** @vme_user_cdev, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vme_user_cdev, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %411

72:                                               ; preds = %65
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vme_user_cdev, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32* @vme_user_fops, i32** %74, align 8
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vme_user_cdev, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vme_user_cdev, align 8
  %79 = load i32, i32* @VME_MAJOR, align 4
  %80 = call i32 @MKDEV(i32 %79, i32 0)
  %81 = load i32, i32* @VME_DEVS, align 4
  %82 = call i32 @cdev_add(%struct.TYPE_6__* %78, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %408

86:                                               ; preds = %72
  store i32 128, i32* %4, align 4
  br label %87

87:                                               ; preds = %171, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @SLAVE_MAX, align 4
  %90 = add nsw i32 %89, 1
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %174

92:                                               ; preds = %87
  %93 = load %struct.vme_dev*, %struct.vme_dev** @vme_user_bridge, align 8
  %94 = load i32, i32* @VME_A24, align 4
  %95 = load i32, i32* @VME_SCT, align 4
  %96 = call i32* @vme_slave_request(%struct.vme_dev* %93, i32 %94, i32 %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32* %96, i32** %101, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %92
  %110 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %111 = getelementptr inbounds %struct.vme_dev, %struct.vme_dev* %110, i32 0, i32 0
  %112 = call i32 (i32*, i8*, ...) @dev_warn(i32* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %368

115:                                              ; preds = %92
  %116 = load i8*, i8** @PCI_BUF_SIZE, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  store i8* %116, i8** %121, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = call i32* @vme_alloc_consistent(i32* %127, i8* %133, i64* %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  store i32* %139, i32** %144, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %170, label %152

152:                                              ; preds = %115
  %153 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %154 = getelementptr inbounds %struct.vme_dev, %struct.vme_dev* %153, i32 0, i32 0
  %155 = call i32 (i32*, i8*, ...) @dev_warn(i32* %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @vme_slave_free(i32* %166)
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %368

170:                                              ; preds = %115
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %4, align 4
  br label %87

174:                                              ; preds = %87
  store i32 129, i32* %4, align 4
  br label %175

175:                                              ; preds = %242, %174
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @MASTER_MAX, align 4
  %178 = add nsw i32 %177, 1
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %245

180:                                              ; preds = %175
  %181 = load %struct.vme_dev*, %struct.vme_dev** @vme_user_bridge, align 8
  %182 = load i32, i32* @VME_A32, align 4
  %183 = load i32, i32* @VME_SCT, align 4
  %184 = load i32, i32* @VME_D32, align 4
  %185 = call i32* @vme_master_request(%struct.vme_dev* %181, i32 %182, i32 %183, i32 %184)
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  store i32* %185, i32** %190, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %204, label %198

198:                                              ; preds = %180
  %199 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %200 = getelementptr inbounds %struct.vme_dev, %struct.vme_dev* %199, i32 0, i32 0
  %201 = call i32 (i32*, i8*, ...) @dev_warn(i32* %200, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %5, align 4
  br label %344

204:                                              ; preds = %180
  %205 = load i8*, i8** @PCI_BUF_SIZE, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 3
  store i8* %205, i8** %210, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* @GFP_KERNEL, align 4
  %218 = call i32* @kmalloc(i8* %216, i32 %217)
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %220 = load i32, i32* %4, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  store i32* %218, i32** %223, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %225 = load i32, i32* %4, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %241, label %231

231:                                              ; preds = %204
  %232 = load i32, i32* @ENOMEM, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %5, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @vme_master_free(i32* %239)
  br label %344

241:                                              ; preds = %204
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %4, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %4, align 4
  br label %175

245:                                              ; preds = %175
  %246 = load i32, i32* @THIS_MODULE, align 4
  %247 = load i32, i32* @driver_name, align 4
  %248 = call i32* @class_create(i32 %246, i32 %247)
  store i32* %248, i32** @vme_user_sysfs_class, align 8
  %249 = load i32*, i32** @vme_user_sysfs_class, align 8
  %250 = call i64 @IS_ERR(i32* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %245
  %253 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %254 = getelementptr inbounds %struct.vme_dev, %struct.vme_dev* %253, i32 0, i32 0
  %255 = call i32 @dev_err(i32* %254, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %256 = load i32*, i32** @vme_user_sysfs_class, align 8
  %257 = call i32 @PTR_ERR(i32* %256)
  store i32 %257, i32* %5, align 4
  br label %344

258:                                              ; preds = %245
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %323, %258
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* @VME_DEVS, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %326

263:                                              ; preds = %259
  %264 = load i32*, i32** @type, align 8
  %265 = load i32, i32* %4, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  switch i32 %268, label %272 [
    i32 129, label %269
    i32 130, label %270
    i32 128, label %271
  ]

269:                                              ; preds = %263
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %275

270:                                              ; preds = %263
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %275

271:                                              ; preds = %263
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %275

272:                                              ; preds = %263
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %5, align 4
  br label %327

275:                                              ; preds = %271, %270, %269
  %276 = load i32*, i32** @type, align 8
  %277 = load i32, i32* %4, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 128
  br i1 %281, label %282, label %287

282:                                              ; preds = %275
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @MASTER_MAX, align 4
  %285 = add nsw i32 %284, 1
  %286 = sub nsw i32 %283, %285
  br label %289

287:                                              ; preds = %275
  %288 = load i32, i32* %4, align 4
  br label %289

289:                                              ; preds = %287, %282
  %290 = phi i32 [ %286, %282 ], [ %288, %287 ]
  store i32 %290, i32* %7, align 4
  %291 = load i32*, i32** @vme_user_sysfs_class, align 8
  %292 = load i32, i32* @VME_MAJOR, align 4
  %293 = load i32, i32* %4, align 4
  %294 = call i32 @MKDEV(i32 %292, i32 %293)
  %295 = load i8*, i8** %6, align 8
  %296 = load i32, i32* %7, align 4
  %297 = call i32* @device_create(i32* %291, i32* null, i32 %294, i32* null, i8* %295, i32 %296)
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %299 = load i32, i32* %4, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 4
  store i32* %297, i32** %302, align 8
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %304 = load i32, i32* %4, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 4
  %308 = load i32*, i32** %307, align 8
  %309 = call i64 @IS_ERR(i32* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %289
  %312 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %313 = getelementptr inbounds %struct.vme_dev, %struct.vme_dev* %312, i32 0, i32 0
  %314 = call i32 @dev_info(i32* %313, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %316 = load i32, i32* %4, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 4
  %320 = load i32*, i32** %319, align 8
  %321 = call i32 @PTR_ERR(i32* %320)
  store i32 %321, i32* %5, align 4
  br label %327

322:                                              ; preds = %289
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %4, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %4, align 4
  br label %259

326:                                              ; preds = %259
  store i32 0, i32* %2, align 4
  br label %419

327:                                              ; preds = %311, %272
  br label %328

328:                                              ; preds = %331, %327
  %329 = load i32, i32* %4, align 4
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %328
  %332 = load i32, i32* %4, align 4
  %333 = add nsw i32 %332, -1
  store i32 %333, i32* %4, align 4
  %334 = load i32*, i32** @vme_user_sysfs_class, align 8
  %335 = load i32, i32* @VME_MAJOR, align 4
  %336 = load i32, i32* %4, align 4
  %337 = call i32 @MKDEV(i32 %335, i32 %336)
  %338 = call i32 @device_destroy(i32* %334, i32 %337)
  br label %328

339:                                              ; preds = %328
  %340 = load i32*, i32** @vme_user_sysfs_class, align 8
  %341 = call i32 @class_destroy(i32* %340)
  %342 = load i32, i32* @MASTER_MAX, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %4, align 4
  br label %344

344:                                              ; preds = %339, %252, %231, %198
  br label %345

345:                                              ; preds = %348, %344
  %346 = load i32, i32* %4, align 4
  %347 = icmp sgt i32 %346, 129
  br i1 %347, label %348, label %365

348:                                              ; preds = %345
  %349 = load i32, i32* %4, align 4
  %350 = add nsw i32 %349, -1
  store i32 %350, i32* %4, align 4
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %352 = load i32, i32* %4, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @kfree(i32* %356)
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %359 = load i32, i32* %4, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = call i32 @vme_master_free(i32* %363)
  br label %345

365:                                              ; preds = %345
  %366 = load i32, i32* @SLAVE_MAX, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %4, align 4
  br label %368

368:                                              ; preds = %365, %152, %109
  br label %369

369:                                              ; preds = %372, %368
  %370 = load i32, i32* %4, align 4
  %371 = icmp sgt i32 %370, 128
  br i1 %371, label %372, label %407

372:                                              ; preds = %369
  %373 = load i32, i32* %4, align 4
  %374 = add nsw i32 %373, -1
  store i32 %374, i32* %4, align 4
  %375 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %376 = load i32, i32* %4, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %382 = load i32, i32* %4, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 3
  %386 = load i8*, i8** %385, align 8
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %388 = load i32, i32* %4, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 2
  %392 = load i32*, i32** %391, align 8
  %393 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %394 = load i32, i32* %4, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = call i32 @vme_free_consistent(i32* %380, i8* %386, i32* %392, i64 %398)
  %400 = load %struct.TYPE_7__*, %struct.TYPE_7__** @image, align 8
  %401 = load i32, i32* %4, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = call i32 @vme_slave_free(i32* %405)
  br label %369

407:                                              ; preds = %369
  br label %408

408:                                              ; preds = %407, %85
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vme_user_cdev, align 8
  %410 = call i32 @cdev_del(%struct.TYPE_6__* %409)
  br label %411

411:                                              ; preds = %408, %69
  %412 = load i32, i32* @VME_MAJOR, align 4
  %413 = call i32 @MKDEV(i32 %412, i32 0)
  %414 = load i32, i32* @VME_DEVS, align 4
  %415 = call i32 @unregister_chrdev_region(i32 %413, i32 %414)
  br label %416

416:                                              ; preds = %411, %60
  br label %417

417:                                              ; preds = %416, %10
  %418 = load i32, i32* %5, align 4
  store i32 %418, i32* %2, align 4
  br label %419

419:                                              ; preds = %417, %326
  %420 = load i32, i32* %2, align 4
  ret i32 %420
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @register_chrdev_region(i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @cdev_alloc(...) #1

declare dso_local i32 @cdev_add(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @vme_slave_request(%struct.vme_dev*, i32, i32) #1

declare dso_local i32* @vme_alloc_consistent(i32*, i8*, i64*) #1

declare dso_local i32 @vme_slave_free(i32*) #1

declare dso_local i32* @vme_master_request(%struct.vme_dev*, i32, i32, i32) #1

declare dso_local i32* @kmalloc(i8*, i32) #1

declare dso_local i32 @vme_master_free(i32*) #1

declare dso_local i32* @class_create(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @device_create(i32*, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @device_destroy(i32*, i32) #1

declare dso_local i32 @class_destroy(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vme_free_consistent(i32*, i8*, i32*, i64) #1

declare dso_local i32 @cdev_del(%struct.TYPE_6__*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
