; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_ep0_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_ep0_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.ast_vhub_req = type { i32, i32, i32, i32 }
%struct.ast_vhub_ep = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.ast_vhub* }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ast_vhub = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Bogus EP0 request ! u_req=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"complete=%p internal=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Request with no buffer !\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"enqueue req @%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"  l=%d zero=%d noshort=%d is_in=%d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@ep0_state_token = common dso_local global i64 0, align 8
@ep0_state_stall = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"EP0: Request in wrong state\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"EP0: list_empty=%d state=%d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"0-length rx completion\0A\00", align 1
@ep0_state_status = common dso_local global i64 0, align 8
@VHUB_EP0_TX_BUFF_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @ast_vhub_ep0_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_ep0_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ast_vhub_req*, align 8
  %9 = alloca %struct.ast_vhub_ep*, align 8
  %10 = alloca %struct.ast_vhub*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %14 = call %struct.ast_vhub_req* @to_ast_req(%struct.usb_request* %13)
  store %struct.ast_vhub_req* %14, %struct.ast_vhub_req** %8, align 8
  %15 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %16 = call %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep* %15)
  store %struct.ast_vhub_ep* %16, %struct.ast_vhub_ep** %9, align 8
  %17 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %18 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %17, i32 0, i32 4
  %19 = load %struct.ast_vhub*, %struct.ast_vhub** %18, align 8
  store %struct.ast_vhub* %19, %struct.ast_vhub** %10, align 8
  %20 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  %21 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %11, align 8
  %24 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %25 = icmp ne %struct.usb_request* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %28 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %33 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %31, %3
  %37 = load %struct.device*, %struct.device** %11, align 8
  %38 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.usb_request* %38)
  %40 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %41 = icmp ne %struct.usb_request* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %45 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %48 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %214

54:                                               ; preds = %31, %26
  %55 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %56 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %214

65:                                               ; preds = %54
  %66 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %67 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %72 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @ESHUTDOWN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %214

80:                                               ; preds = %70, %65
  %81 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %82 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %87 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %92 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.device*, %struct.device** %11, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %214

100:                                              ; preds = %90, %85, %80
  %101 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %102 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %103 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPVDBG(%struct.ast_vhub_ep* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %struct.ast_vhub_req* %102)
  %104 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %105 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %106 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %109 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %112 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %115 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPVDBG(%struct.ast_vhub_ep* %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %110, i32 %113, i64 %117)
  %119 = load i32, i32* @EINPROGRESS, align 4
  %120 = sub nsw i32 0, %119
  %121 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %122 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %124 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %126 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %125, i32 0, i32 0
  store i32 -1, i32* %126, align 4
  %127 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %128 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  %130 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %129, i32 0, i32 0
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @spin_lock_irqsave(i32* %130, i64 %131)
  %133 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %134 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %133, i32 0, i32 2
  %135 = call i32 @list_empty(i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %100
  %138 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %139 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @ep0_state_token, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %146 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ep0_state_stall, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %144, %137, %100
  %152 = load %struct.device*, %struct.device** %11, align 8
  %153 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %154 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %155 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %156 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %155, i32 0, i32 2
  %157 = call i32 @list_empty(i32* %156)
  %158 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %159 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPVDBG(%struct.ast_vhub_ep* %154, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %157, i64 %161)
  %163 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  %164 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %163, i32 0, i32 0
  %165 = load i64, i64* %12, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32* %164, i64 %165)
  %167 = load i32, i32* @EBUSY, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %214

169:                                              ; preds = %144
  %170 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %171 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %170, i32 0, i32 2
  %172 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %173 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %172, i32 0, i32 2
  %174 = call i32 @list_add_tail(i32* %171, i32* %173)
  %175 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %176 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %169
  %181 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %182 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %183 = call i32 @ast_vhub_ep0_do_send(%struct.ast_vhub_ep* %181, %struct.ast_vhub_req* %182)
  br label %209

184:                                              ; preds = %169
  %185 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %186 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %184
  %190 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %191 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPVDBG(%struct.ast_vhub_ep* %190, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %192 = load i64, i64* @ep0_state_status, align 8
  %193 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %194 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i64 %192, i64* %195, align 8
  %196 = load i32, i32* @VHUB_EP0_TX_BUFF_RDY, align 4
  %197 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %198 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @writel(i32 %196, i32 %200)
  %202 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %203 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %204 = call i32 @ast_vhub_done(%struct.ast_vhub_ep* %202, %struct.ast_vhub_req* %203, i32 0)
  br label %208

205:                                              ; preds = %184
  %206 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %207 = call i32 @ast_vhub_ep0_rx_prime(%struct.ast_vhub_ep* %206)
  br label %208

208:                                              ; preds = %205, %189
  br label %209

209:                                              ; preds = %208, %180
  %210 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  %211 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %210, i32 0, i32 0
  %212 = load i64, i64* %12, align 8
  %213 = call i32 @spin_unlock_irqrestore(i32* %211, i64 %212)
  store i32 0, i32* %4, align 4
  br label %214

214:                                              ; preds = %209, %151, %95, %77, %62, %51
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local %struct.ast_vhub_req* @to_ast_req(%struct.usb_request*) #1

declare dso_local %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @EPVDBG(%struct.ast_vhub_ep*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ast_vhub_ep0_do_send(%struct.ast_vhub_ep*, %struct.ast_vhub_req*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @ast_vhub_done(%struct.ast_vhub_ep*, %struct.ast_vhub_req*, i32) #1

declare dso_local i32 @ast_vhub_ep0_rx_prime(%struct.ast_vhub_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
