; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_hwa742_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_hwa742_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.omapfb_device*, i64, i32, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { {}*, i32 (...)* }
%struct.TYPE_9__ = type { i32 (%struct.omapfb_device*)*, i32 (...)*, i32, i32 (i32*)* }
%struct.TYPE_12__ = type { i32 }
%struct.omapfb_device = type { i32, %struct.TYPE_7__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64, i64 }
%struct.omapfb_mem_desc = type { i32 }
%struct.omapfb_platform_data = type { i32 }

@hwa742 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"hwa_sys_ck\00", align 1
@HWA742_REV_CODE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"HWA742: invalid revision %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HWA742_PLL_DIV_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"HWA742: controller not initialized by the bootloader\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"HWA742: can't setup tearing synchronization\0A\00", align 1
@OMAPFB_UPDATE_DISABLED = common dso_local global i32 0, align 4
@hwa742_update_window_auto = common dso_local global i32 0, align 4
@IRQ_REQ_POOL_SIZE = common dso_local global i32 0, align 4
@HWA742_CONFIG_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c": Epson HWA742 LCD controller rev %d initialized (CNF pins %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)* @hwa742_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwa742_init(%struct.omapfb_device* %0, i32 %1, %struct.omapfb_mem_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omapfb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omapfb_mem_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.omapfb_platform_data*, align 8
  store %struct.omapfb_device* %0, %struct.omapfb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.omapfb_mem_desc* %2, %struct.omapfb_mem_desc** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %18 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %23 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i1 [ true, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  store %struct.omapfb_device* %31, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 9), align 8
  %32 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %33 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 3), align 8
  %35 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %36 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 2), align 8
  %38 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %39 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.omapfb_platform_data* @dev_get_platdata(i32 %40)
  store %struct.omapfb_platform_data* %41, %struct.omapfb_platform_data** %16, align 8
  %42 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 4), align 8
  %43 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 16))
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 2), align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)**
  %47 = load i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)*, i32 (%struct.omapfb_device*, i32, %struct.omapfb_mem_desc*)** %46, align 8
  %48 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %49 = load %struct.omapfb_mem_desc*, %struct.omapfb_mem_desc** %7, align 8
  %50 = call i32 %47(%struct.omapfb_device* %48, i32 1, %struct.omapfb_mem_desc* %49)
  store i32 %50, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %27
  br label %189

53:                                               ; preds = %27
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 3), align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32 (%struct.omapfb_device*)*, i32 (%struct.omapfb_device*)** %55, align 8
  %57 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %58 = call i32 %56(%struct.omapfb_device* %57)
  store i32 %58, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %184

61:                                               ; preds = %53
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 4), align 8
  %63 = call i64 @clk_get_rate(i32 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @calc_extif_timings(i64 %64, i32* %15)
  store i32 %65, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %179

68:                                               ; preds = %61
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 3), align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32 (i32*)*, i32 (i32*)** %70, align 8
  %72 = call i32 %71(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 15))
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 4), align 8
  %74 = call i32 @clk_enable(i32 %73)
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @calc_hwa742_clk_rates(i64 %75, i64* %13, i64* %14)
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @calc_extif_timings(i64 %77, i32* %15)
  store i32 %78, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %176

81:                                               ; preds = %68
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 3), align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i32 (i32*)*, i32 (i32*)** %83, align 8
  %85 = call i32 %84(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 15))
  %86 = load i32, i32* @HWA742_REV_CODE_REG, align 4
  %87 = call i32 @hwa742_read_reg(i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, 252
  %90 = icmp ne i32 %89, 128
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %93 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %176

99:                                               ; preds = %81
  %100 = load i32, i32* @HWA742_PLL_DIV_REG, align 4
  %101 = call i32 @hwa742_read_reg(i32 %100)
  %102 = and i32 %101, 128
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %106 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %8, align 4
  br label %176

111:                                              ; preds = %99
  %112 = load i64, i64* %14, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @setup_tearsync(i64 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.omapfb_device*, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 9), align 8
  %118 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %176

121:                                              ; preds = %111
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 0), align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 3), align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 14), align 4
  %125 = load i32, i32* @OMAPFB_UPDATE_DISABLED, align 4
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 13), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 12, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 12, i32 3), align 8
  %126 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %127 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 12, i32 2), align 4
  %131 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %132 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 12, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 12, i32 0), align 8
  %136 = load i32, i32* @hwa742_update_window_auto, align 4
  %137 = call i32 @timer_setup(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 11), i32 %136, i32 0)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 10), align 8
  %138 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  store %struct.omapfb_device* %138, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 9), align 8
  %139 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 6))
  %140 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 8))
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %153, %121
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 7), align 8
  %144 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %143)
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 7), align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = call i32 @list_add(i32* %151, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 6))
  br label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %141

156:                                              ; preds = %141
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @IRQ_REQ_POOL_SIZE, align 4
  %159 = icmp sle i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @BUG_ON(i32 %160)
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @IRQ_REQ_POOL_SIZE, align 4
  %164 = sub nsw i32 %162, %163
  %165 = call i32 @sema_init(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 5), i32 %164)
  %166 = load i32, i32* @HWA742_CONFIG_REG, align 4
  %167 = call i32 @hwa742_read_reg(i32 %166)
  store i32 %167, i32* %11, align 4
  %168 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %169 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = and i32 %171, 3
  %173 = load i32, i32* %11, align 4
  %174 = and i32 %173, 7
  %175 = call i32 @dev_info(i32 %170, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %172, i32 %174)
  store i32 0, i32* %4, align 4
  br label %191

176:                                              ; preds = %116, %104, %91, %80
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 4), align 8
  %178 = call i32 @clk_disable(i32 %177)
  br label %179

179:                                              ; preds = %176, %67
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 3), align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load i32 (...)*, i32 (...)** %181, align 8
  %183 = call i32 (...) %182()
  br label %184

184:                                              ; preds = %179, %60
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hwa742, i32 0, i32 2), align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i32 (...)*, i32 (...)** %186, align 8
  %188 = call i32 (...) %187()
  br label %189

189:                                              ; preds = %184, %52
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %189, %156
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.omapfb_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @calc_extif_timings(i64, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @calc_hwa742_clk_rates(i64, i64*, i64*) #1

declare dso_local i32 @hwa742_read_reg(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @setup_tearsync(i64, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
