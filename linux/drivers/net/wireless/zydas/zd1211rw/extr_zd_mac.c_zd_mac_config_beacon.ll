; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_config_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_config_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.zd_mac = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.sk_buff* }
%struct.zd_ioreq32 = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CR_BCN_FIFO_SEMAPHORE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CR_BCN_FIFO_SEMAPHORE not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Giving up beacon config.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CR_BCN_FIFO = common dso_local global i8* null, align 8
@CR_BCN_LENGTH = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Could not release CR_BCN_FIFO_SEMAPHORE!\0A\00", align 1
@CR_BCN_PLCP_CFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"CR_BCN_FIFO_SEMAPHORE stuck, resetting device...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.sk_buff*, i32)* @zd_mac_config_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd_mac_config_beacon(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zd_mac*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.zd_ioreq32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %19)
  store %struct.zd_mac* %20, %struct.zd_mac** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %26 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i64 @zd_mac_match_cur_beacon(%struct.zd_mac* %29, %struct.sk_buff* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %290

34:                                               ; preds = %3
  %35 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %36 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %35, i32 0, i32 0
  %37 = call i32 @zd_chip_is_zd1211b(%struct.TYPE_9__* %36)
  %38 = add nsw i32 1, %37
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.zd_ioreq32* @kmalloc_array(i32 %41, i32 16, i32 %42)
  store %struct.zd_ioreq32* %43, %struct.zd_ioreq32** %18, align 8
  %44 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %45 = icmp ne %struct.zd_ioreq32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %290

49:                                               ; preds = %34
  %50 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %51 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %50, i32 0, i32 0
  %52 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %53 = call i32 @zd_iowrite32_locked(%struct.TYPE_9__* %51, i32 0, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %287

57:                                               ; preds = %49
  %58 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %59 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %58, i32 0, i32 0
  %60 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %61 = call i32 @zd_ioread32_locked(%struct.TYPE_9__* %59, i32* %13, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %223

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %223

75:                                               ; preds = %68, %65
  %76 = load i32, i32* @jiffies, align 4
  %77 = load i32, i32* @HZ, align 4
  %78 = sdiv i32 %77, 2
  %79 = add nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %16, align 8
  %81 = load i32, i32* @jiffies, align 4
  %82 = load i32, i32* @HZ, align 4
  %83 = sdiv i32 %82, 10
  %84 = add nsw i32 %81, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %17, align 8
  br label %86

86:                                               ; preds = %121, %75
  %87 = load i32, i32* %13, align 4
  %88 = and i32 %87, 2
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %86
  %91 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %92 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %91, i32 0, i32 0
  %93 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %94 = call i32 @zd_ioread32_locked(%struct.TYPE_9__* %92, i32* %13, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %223

98:                                               ; preds = %90
  %99 = load i64, i64* %17, align 8
  %100 = call i64 @time_is_before_eq_jiffies(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load i32, i32* @jiffies, align 4
  %104 = load i32, i32* @HZ, align 4
  %105 = sdiv i32 %104, 10
  %106 = add nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %17, align 8
  %108 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %109 = call i32 @zd_mac_dev(%struct.zd_mac* %108)
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %111 = load i64, i64* %16, align 8
  %112 = call i64 @time_is_before_eq_jiffies(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %116 = call i32 @zd_mac_dev(%struct.zd_mac* %115)
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @ETIMEDOUT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %9, align 4
  br label %298

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120, %98
  %122 = call i32 @msleep(i32 20)
  br label %86

123:                                              ; preds = %86
  %124 = load i8*, i8** @CR_BCN_FIFO, align 8
  %125 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %125, i64 %127
  %129 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %128, i32 0, i32 1
  store i8* %124, i8** %129, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %132, i64 %134
  %136 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %135, i32 0, i32 0
  store i32 %131, i32* %136, align 8
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  %139 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %140 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %139, i32 0, i32 0
  %141 = call i32 @zd_chip_is_zd1211b(%struct.TYPE_9__* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %123
  %144 = load i8*, i8** @CR_BCN_LENGTH, align 8
  %145 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %145, i64 %147
  %149 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %148, i32 0, i32 1
  store i8* %144, i8** %149, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sub nsw i32 %150, 1
  %152 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %152, i64 %154
  %156 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 8
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %143, %123
  store i32 0, i32* %14, align 4
  br label %160

160:                                              ; preds = %188, %159
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %191

166:                                              ; preds = %160
  %167 = load i8*, i8** @CR_BCN_FIFO, align 8
  %168 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %168, i64 %170
  %172 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %171, i32 0, i32 1
  store i8* %167, i8** %172, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = inttoptr i64 %178 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %181, i64 %183
  %185 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %184, i32 0, i32 0
  store i32 %180, i32* %185, align 8
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %166
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  br label %160

191:                                              ; preds = %160
  store i32 0, i32* %14, align 4
  br label %192

192:                                              ; preds = %209, %191
  %193 = load i32, i32* %14, align 4
  %194 = icmp slt i32 %193, 4
  br i1 %194, label %195, label %212

195:                                              ; preds = %192
  %196 = load i8*, i8** @CR_BCN_FIFO, align 8
  %197 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %197, i64 %199
  %201 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %200, i32 0, i32 1
  store i8* %196, i8** %201, align 8
  %202 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %202, i64 %204
  %206 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %205, i32 0, i32 0
  store i32 0, i32* %206, align 8
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %12, align 4
  br label %209

209:                                              ; preds = %195
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %14, align 4
  br label %192

212:                                              ; preds = %192
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @BUG_ON(i32 %216)
  %218 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %219 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %218, i32 0, i32 0
  %220 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @zd_iowrite32a_locked(%struct.TYPE_9__* %219, %struct.zd_ioreq32* %220, i32 %221)
  store i32 %222, i32* %9, align 4
  br label %223

223:                                              ; preds = %212, %97, %72, %64
  %224 = load i32, i32* @jiffies, align 4
  %225 = load i32, i32* @HZ, align 4
  %226 = sdiv i32 %225, 2
  %227 = add nsw i32 %224, %226
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %16, align 8
  %229 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %230 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %229, i32 0, i32 0
  %231 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %232 = call i32 @zd_iowrite32_locked(%struct.TYPE_9__* %230, i32 1, i32 %231)
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %246, %223
  %234 = load i32, i32* %10, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %252

236:                                              ; preds = %233
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  %240 = load i64, i64* %16, align 8
  %241 = call i64 @time_is_before_eq_jiffies(i64 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %239, %236
  %244 = load i32, i32* @ETIMEDOUT, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %10, align 4
  br label %252

246:                                              ; preds = %239
  %247 = call i32 @msleep(i32 20)
  %248 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %249 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %248, i32 0, i32 0
  %250 = load i32, i32* @CR_BCN_FIFO_SEMAPHORE, align 4
  %251 = call i32 @zd_iowrite32_locked(%struct.TYPE_9__* %249, i32 1, i32 %250)
  store i32 %251, i32* %10, align 4
  br label %233

252:                                              ; preds = %243, %233
  %253 = load i32, i32* %10, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %257 = call i32 @zd_mac_dev(%struct.zd_mac* %256)
  %258 = call i32 @dev_err(i32 %257, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %259

259:                                              ; preds = %255, %252
  %260 = load i32, i32* %9, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %10, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %262, %259
  %266 = load i32, i32* %9, align 4
  %267 = icmp sge i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = load i32, i32* %10, align 4
  store i32 %269, i32* %9, align 4
  br label %270

270:                                              ; preds = %268, %265
  %271 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %272 = call i32 @zd_mac_free_cur_beacon_locked(%struct.zd_mac* %271)
  br label %287

273:                                              ; preds = %262
  %274 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %275 = call i32 @zd_mac_free_cur_beacon_locked(%struct.zd_mac* %274)
  %276 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %277 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %278 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  store %struct.sk_buff* %276, %struct.sk_buff** %279, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %280 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %281 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %280, i32 0, i32 0
  %282 = load i32, i32* %15, align 4
  %283 = shl i32 %282, 19
  %284 = or i32 1024, %283
  %285 = load i32, i32* @CR_BCN_PLCP_CFG, align 4
  %286 = call i32 @zd_iowrite32_locked(%struct.TYPE_9__* %281, i32 %284, i32 %285)
  store i32 %286, i32* %9, align 4
  br label %287

287:                                              ; preds = %273, %270, %56
  %288 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %289 = call i32 @kfree(%struct.zd_ioreq32* %288)
  br label %290

290:                                              ; preds = %287, %46, %33
  %291 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %292 = call i32 @kfree_skb(%struct.sk_buff* %291)
  %293 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %294 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 1
  %296 = call i32 @mutex_unlock(i32* %295)
  %297 = load i32, i32* %9, align 4
  store i32 %297, i32* %4, align 4
  br label %319

298:                                              ; preds = %114
  %299 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %300 = call i32 @zd_mac_free_cur_beacon_locked(%struct.zd_mac* %299)
  %301 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %302 = call i32 @kfree_skb(%struct.sk_buff* %301)
  %303 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %304 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 1
  %306 = call i32 @mutex_unlock(i32* %305)
  %307 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %18, align 8
  %308 = call i32 @kfree(%struct.zd_ioreq32* %307)
  %309 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %310 = call i32 @zd_mac_dev(%struct.zd_mac* %309)
  %311 = call i32 @dev_warn(i32 %310, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %312 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %313 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @usb_queue_reset_device(i32 %316)
  %318 = load i32, i32* %9, align 4
  store i32 %318, i32* %4, align 4
  br label %319

319:                                              ; preds = %298, %290
  %320 = load i32, i32* %4, align 4
  ret i32 %320
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @zd_mac_match_cur_beacon(%struct.zd_mac*, %struct.sk_buff*) #1

declare dso_local i32 @zd_chip_is_zd1211b(%struct.TYPE_9__*) #1

declare dso_local %struct.zd_ioreq32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @zd_iowrite32_locked(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @zd_ioread32_locked(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @zd_mac_dev(%struct.zd_mac*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @zd_iowrite32a_locked(%struct.TYPE_9__*, %struct.zd_ioreq32*, i32) #1

declare dso_local i32 @zd_mac_free_cur_beacon_locked(%struct.zd_mac*) #1

declare dso_local i32 @kfree(%struct.zd_ioreq32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @usb_queue_reset_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
