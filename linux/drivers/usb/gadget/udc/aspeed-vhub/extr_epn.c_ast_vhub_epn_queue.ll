; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32, i32 }
%struct.usb_request = type { i32, i64, i32, i32, i32, i32, i64, i64, i32 }
%struct.ast_vhub_req = type { i32, i32, i32, i64, i32 }
%struct.ast_vhub_ep = type { %struct.TYPE_6__, i32, %struct.TYPE_4__*, i32, %struct.ast_vhub* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ast_vhub = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Bogus EPn request ! u_req=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"complete=%p internal=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Enqueuing request on wrong or disabled EP\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Request mapping failure %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"enqueue req @%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c" l=%d dma=0x%x zero=%d noshort=%d noirq=%d is_in=%d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @ast_vhub_epn_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_epn_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ast_vhub_req*, align 8
  %9 = alloca %struct.ast_vhub_ep*, align 8
  %10 = alloca %struct.ast_vhub*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %15 = call %struct.ast_vhub_req* @to_ast_req(%struct.usb_request* %14)
  store %struct.ast_vhub_req* %15, %struct.ast_vhub_req** %8, align 8
  %16 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %17 = call %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep* %16)
  store %struct.ast_vhub_ep* %17, %struct.ast_vhub_ep** %9, align 8
  %18 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %19 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %18, i32 0, i32 4
  %20 = load %struct.ast_vhub*, %struct.ast_vhub** %19, align 8
  store %struct.ast_vhub* %20, %struct.ast_vhub** %10, align 8
  %21 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %22 = icmp ne %struct.usb_request* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %25 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %30 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %28, %23, %3
  %34 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  %35 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %39 = call i32 (i32*, i8*, ...) @dev_warn(i32* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.usb_request* %38)
  %40 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %41 = icmp ne %struct.usb_request* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  %44 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %48 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %51 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32*, i8*, ...) @dev_warn(i32* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %42, %33
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %215

57:                                               ; preds = %28
  %58 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %59 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %65 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %70 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %75 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %80 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78, %73, %68, %63, %57
  %86 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %87 = call i32 @EPDBG(%struct.ast_vhub_ep* %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @ESHUTDOWN, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %215

90:                                               ; preds = %78
  %91 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %92 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %118, label %96

96:                                               ; preds = %90
  %97 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %98 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, 7
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %140

102:                                              ; preds = %96
  %103 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %104 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %102
  %109 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %110 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %113 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %111, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %140, label %118

118:                                              ; preds = %108, %102, %90
  %119 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %120 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %124 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %125 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @usb_gadget_map_request(i32* %122, %struct.usb_request* %123, i64 %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %118
  %132 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  %133 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %13, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_warn(i32* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %4, align 4
  br label %215

139:                                              ; preds = %118
  br label %143

140:                                              ; preds = %108, %96
  %141 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %142 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %141, i32 0, i32 6
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %140, %139
  %144 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %145 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %146 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPVDBG(%struct.ast_vhub_ep* %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.ast_vhub_req* %145)
  %147 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %148 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %149 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %152 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %156 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %159 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %162 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %165 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPVDBG(%struct.ast_vhub_ep* %147, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %154, i32 %157, i32 %160, i32 %163, i64 %167)
  %169 = load i32, i32* @EINPROGRESS, align 4
  %170 = sub nsw i32 0, %169
  %171 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %172 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %174 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %176 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %175, i32 0, i32 3
  store i64 0, i64* %176, align 8
  %177 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %178 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %180 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %179, i32 0, i32 1
  store i32 -1, i32* %180, align 4
  %181 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  %182 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %181, i32 0, i32 0
  %183 = load i64, i64* %11, align 8
  %184 = call i32 @spin_lock_irqsave(i32* %182, i64 %183)
  %185 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %186 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %185, i32 0, i32 1
  %187 = call i32 @list_empty(i32* %186)
  store i32 %187, i32* %12, align 4
  %188 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %189 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %188, i32 0, i32 2
  %190 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %191 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %190, i32 0, i32 1
  %192 = call i32 @list_add_tail(i32* %189, i32* %191)
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %143
  %196 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %197 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %203 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %204 = call i32 @ast_vhub_epn_kick_desc(%struct.ast_vhub_ep* %202, %struct.ast_vhub_req* %203)
  br label %209

205:                                              ; preds = %195
  %206 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %9, align 8
  %207 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %8, align 8
  %208 = call i32 @ast_vhub_epn_kick(%struct.ast_vhub_ep* %206, %struct.ast_vhub_req* %207)
  br label %209

209:                                              ; preds = %205, %201
  br label %210

210:                                              ; preds = %209, %143
  %211 = load %struct.ast_vhub*, %struct.ast_vhub** %10, align 8
  %212 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %211, i32 0, i32 0
  %213 = load i64, i64* %11, align 8
  %214 = call i32 @spin_unlock_irqrestore(i32* %212, i64 %213)
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %210, %131, %85, %54
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.ast_vhub_req* @to_ast_req(%struct.usb_request*) #1

declare dso_local %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*) #1

declare dso_local i32 @usb_gadget_map_request(i32*, %struct.usb_request*, i64) #1

declare dso_local i32 @EPVDBG(%struct.ast_vhub_ep*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ast_vhub_epn_kick_desc(%struct.ast_vhub_ep*, %struct.ast_vhub_req*) #1

declare dso_local i32 @ast_vhub_epn_kick(%struct.ast_vhub_ep*, %struct.ast_vhub_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
