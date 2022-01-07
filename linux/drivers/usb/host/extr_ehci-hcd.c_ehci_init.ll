; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ehci_hcd = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32, %struct.ehci_qh_hw*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.ehci_qh_hw = type { i8*, i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@ehci_hrtimer_func = common dso_local global i32 0, align 4
@EHCI_HRTIMER_NO_EVENT = common dso_local global i32 0, align 4
@DEFAULT_I_TDPS = common dso_local global i32 0, align 4
@EHCI_TUNE_FLS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@QH_HEAD = common dso_local global i32 0, align 4
@QTD_STS_HALT = common dso_local global i32 0, align 4
@QH_STATE_LINKED = common dso_local global i32 0, align 4
@log2_irq_thresh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"enable per-port change event\0A\00", align 1
@CMD_PPCEE = common dso_local global i32 0, align 4
@park = common dso_local global i32 0, align 4
@CMD_PARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"park %d\0A\00", align 1
@QH_INACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_init(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehci_qh_hw*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %9)
  store %struct.ehci_hcd* %10, %struct.ehci_hcd** %4, align 8
  %11 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %11, i32 0, i32 19
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %16, i32 0, i32 18
  %18 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %19 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %20 = call i32 @hrtimer_init(%struct.TYPE_12__* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @ehci_hrtimer_func, align 4
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 18
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @EHCI_HRTIMER_NO_EVENT, align 4
  %26 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %27 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %26, i32 0, i32 17
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %30 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %29, i32 0, i32 16
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @ehci_readl(%struct.ehci_hcd* %28, i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %35 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %34, i32 0, i32 1
  store i32 100, i32* %35, align 4
  %36 = load i32, i32* @DEFAULT_I_TDPS, align 4
  %37 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %38 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %40 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %39, i32 0, i32 15
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %43 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %42, i32 0, i32 14
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %45, i32 0, i32 13
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %49 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %48, i32 0, i32 12
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %52 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %51, i32 0, i32 11
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %55 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %54, i32 0, i32 10
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %58 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %57, i32 0, i32 9
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %61 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %60, i32 0, i32 8
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @HCC_PGM_FRAMELISTLEN(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %1
  %67 = load i32, i32* @EHCI_TUNE_FLS, align 4
  switch i32 %67, label %77 [
    i32 0, label %68
    i32 1, label %71
    i32 2, label %74
  ]

68:                                               ; preds = %66
  %69 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %70 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %69, i32 0, i32 2
  store i32 1024, i32* %70, align 8
  br label %79

71:                                               ; preds = %66
  %72 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %73 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %72, i32 0, i32 2
  store i32 512, i32* %73, align 8
  br label %79

74:                                               ; preds = %66
  %75 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %76 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %75, i32 0, i32 2
  store i32 256, i32* %76, align 8
  br label %79

77:                                               ; preds = %66
  %78 = call i32 (...) @BUG()
  br label %79

79:                                               ; preds = %77, %74, %71, %68
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32 @ehci_mem_init(%struct.ehci_hcd* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %218

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @HCC_ISOC_CACHE(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %93 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %92, i32 0, i32 7
  store i64 0, i64* %93, align 8
  br label %100

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @HCC_ISOC_THRES(i32 %95)
  %97 = add nsw i64 2, %96
  %98 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %99 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %91
  %101 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %102 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %101, i32 0, i32 6
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  %106 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %107 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %106, i32 0, i32 6
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %109, align 8
  store %struct.ehci_qh_hw* %110, %struct.ehci_qh_hw** %8, align 8
  %111 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %112 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %113 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %112, i32 0, i32 6
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @QH_NEXT(%struct.ehci_hcd* %111, i32 %116)
  %118 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %119 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %121 = load i32, i32* @QH_HEAD, align 4
  %122 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %120, i32 %121)
  %123 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %124 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %126 = load i32, i32* @QTD_STS_HALT, align 4
  %127 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %125, i32 %126)
  %128 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %129 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %131 = call i32 @EHCI_LIST_END(%struct.ehci_hcd* %130)
  %132 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %133 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @QH_STATE_LINKED, align 4
  %135 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %136 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %135, i32 0, i32 6
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 8
  %139 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %140 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %141 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %140, i32 0, i32 6
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @QTD_NEXT(%struct.ehci_hcd* %139, i32 %146)
  %148 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %149 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @log2_irq_thresh, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %100
  %153 = load i32, i32* @log2_irq_thresh, align 4
  %154 = icmp sgt i32 %153, 6
  br i1 %154, label %155, label %156

155:                                              ; preds = %152, %100
  store i32 0, i32* @log2_irq_thresh, align 4
  br label %156

156:                                              ; preds = %155, %152
  %157 = load i32, i32* @log2_irq_thresh, align 4
  %158 = add nsw i32 16, %157
  %159 = shl i32 1, %158
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i64 @HCC_PER_PORT_CHANGE_EVENT(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %165 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %164, i32 0, i32 3
  store i32 1, i32* %165, align 4
  %166 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %167 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %168 = load i32, i32* @CMD_PPCEE, align 4
  %169 = load i32, i32* %5, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %163, %156
  %172 = load i32, i32* %7, align 4
  %173 = call i64 @HCC_CANPARK(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %171
  %176 = load i32, i32* @park, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = load i32, i32* @park, align 4
  %180 = call i32 @min(i32 %179, i32 3)
  store i32 %180, i32* @park, align 4
  %181 = load i32, i32* @CMD_PARK, align 4
  %182 = load i32, i32* %5, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* @park, align 4
  %185 = shl i32 %184, 8
  %186 = load i32, i32* %5, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %178, %175
  %189 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %190 = load i32, i32* @park, align 4
  %191 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %188, %171
  %193 = load i32, i32* %7, align 4
  %194 = call i64 @HCC_PGM_FRAMELISTLEN(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load i32, i32* %5, align 4
  %198 = and i32 %197, -13
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* @EHCI_TUNE_FLS, align 4
  %200 = shl i32 %199, 2
  %201 = load i32, i32* %5, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %196, %192
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %206 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %205, i32 0, i32 4
  store i32 %204, i32* %206, align 8
  %207 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %208 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %203
  %212 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %213 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  store i32 -1, i32* %214, align 4
  br label %215

215:                                              ; preds = %211, %203
  %216 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %217 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %216, i32 0, i32 5
  store i32 -1, i32* %217, align 4
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %215, %85
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @HCC_PGM_FRAMELISTLEN(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ehci_mem_init(%struct.ehci_hcd*, i32) #1

declare dso_local i64 @HCC_ISOC_CACHE(i32) #1

declare dso_local i64 @HCC_ISOC_THRES(i32) #1

declare dso_local i32 @QH_NEXT(%struct.ehci_hcd*, i32) #1

declare dso_local i8* @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @EHCI_LIST_END(%struct.ehci_hcd*) #1

declare dso_local i32 @QTD_NEXT(%struct.ehci_hcd*, i32) #1

declare dso_local i64 @HCC_PER_PORT_CHANGE_EVENT(i32) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*, ...) #1

declare dso_local i64 @HCC_CANPARK(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
