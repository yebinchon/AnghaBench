; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_init_eps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_init_eps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32, %struct.TYPE_6__, %struct.cdns3_endpoint**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.cdns3_endpoint = type { i32, i32, i32, i32, %struct.TYPE_8__, i32, i64, i32, %struct.cdns3_device* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Initializing non-zero endpoints\0A\00", align 1
@CDNS3_ENDPOINTS_MAX_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to init ep0\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@CDNS3_EP_MAX_PACKET_LIMIT = common dso_local global i32 0, align 4
@CDNS3_EP_MAX_STREAMS = common dso_local global i32 0, align 4
@cdns3_gadget_ep_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Initialized  %s support: %s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"BULK, INT\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ISO\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_device*)* @cdns3_init_eps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_init_eps(%struct.cdns3_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdns3_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %3, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %13 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = call i32 @readl(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %18 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @readl(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %23 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %209, %1
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @CDNS3_ENDPOINTS_MAX_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %212

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = ashr i32 %31, 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, 15
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @BIT(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %209

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %50 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %49, i32 0, i32 2
  %51 = load %struct.cdns3_endpoint**, %struct.cdns3_endpoint*** %50, align 8
  %52 = getelementptr inbounds %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %51, i64 0
  %53 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %52, align 8
  %54 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %55 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %54, i32 0, i32 2
  %56 = load %struct.cdns3_endpoint**, %struct.cdns3_endpoint*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %56, i64 %58
  store %struct.cdns3_endpoint* %53, %struct.cdns3_endpoint** %59, align 8
  br label %209

60:                                               ; preds = %45, %42
  %61 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %62 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.cdns3_endpoint* @devm_kzalloc(i32 %63, i32 88, i32 %64)
  store %struct.cdns3_endpoint* %65, %struct.cdns3_endpoint** %6, align 8
  %66 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %67 = icmp ne %struct.cdns3_endpoint* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %213

69:                                               ; preds = %60
  %70 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %71 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %72 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %71, i32 0, i32 8
  store %struct.cdns3_device* %70, %struct.cdns3_device** %72, align 8
  %73 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %74 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %75 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %74, i32 0, i32 2
  %76 = load %struct.cdns3_endpoint**, %struct.cdns3_endpoint*** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %76, i64 %78
  store %struct.cdns3_endpoint* %73, %struct.cdns3_endpoint** %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %82 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = load i32, i32* @USB_DIR_IN, align 4
  br label %89

87:                                               ; preds = %69
  %88 = load i32, i32* @USB_DIR_OUT, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %92 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %89
  %96 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %97 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %98 = call i32 @cdns3_init_ep0(%struct.cdns3_device* %96, %struct.cdns3_endpoint* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %103 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %213

106:                                              ; preds = %95
  br label %174

107:                                              ; preds = %89
  %108 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %109 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %118 = call i32 @snprintf(i32 %110, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %111, i8* %117)
  %119 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %120 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %123 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  store i32 %121, i32* %124, align 4
  %125 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %126 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %125, i32 0, i32 4
  %127 = load i32, i32* @CDNS3_EP_MAX_PACKET_LIMIT, align 4
  %128 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %126, i32 %127)
  %129 = load i32, i32* @CDNS3_EP_MAX_STREAMS, align 4
  %130 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %131 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  store i32 %129, i32* %132, align 8
  %133 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %134 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  store i32* @cdns3_gadget_ep_ops, i32** %135, align 8
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %107
  %139 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %140 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  br label %148

143:                                              ; preds = %107
  %144 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %145 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %143, %138
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %155 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  br label %158

158:                                              ; preds = %153, %148
  %159 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %160 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  store i32 1, i32* %162, align 4
  %163 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %164 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 4
  store i32 1, i32* %166, align 8
  %167 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %168 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %171 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = call i32 @list_add_tail(i32* %169, i32* %172)
  br label %174

174:                                              ; preds = %158, %106
  %175 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %176 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %175, i32 0, i32 6
  store i64 0, i64* %176, align 8
  %177 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %178 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %181 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %184 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %191 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %192 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %199 = call i32 @dev_info(i32 %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %182, i8* %190, i8* %198)
  %200 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %201 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %200, i32 0, i32 3
  %202 = call i32 @INIT_LIST_HEAD(i32* %201)
  %203 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %204 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %203, i32 0, i32 2
  %205 = call i32 @INIT_LIST_HEAD(i32* %204)
  %206 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %207 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %206, i32 0, i32 1
  %208 = call i32 @INIT_LIST_HEAD(i32* %207)
  br label %209

209:                                              ; preds = %174, %48, %41
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %26

212:                                              ; preds = %26
  store i32 0, i32* %2, align 4
  br label %218

213:                                              ; preds = %101, %68
  %214 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %215 = call i32 @cdns3_free_all_eps(%struct.cdns3_device* %214)
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %213, %212
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.cdns3_endpoint* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @cdns3_init_ep0(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cdns3_free_all_eps(%struct.cdns3_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
