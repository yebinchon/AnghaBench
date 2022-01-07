; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_process_ep_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_process_ep_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.mv_dqh* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mv_dqh = type { i32, i64 }
%struct.mv_req = type { i32, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.mv_dtd* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mv_dtd = type { i32, i64, i64, i64 }

@DTD_STATUS_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s, dTD not completed\0A\00", align 1
@DTD_ERROR_MASK = common dso_local global i32 0, align 4
@DTD_PACKET_SIZE = common dso_local global i32 0, align 4
@DTD_LENGTH_BIT_POS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"TX dTD remains data\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"complete_tr error: ep=%d %s: error = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SEND\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"RECV\00", align 1
@DTD_STATUS_HALTED = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@DTD_STATUS_DATA_BUFF_ERR = common dso_local global i32 0, align 4
@DTD_STATUS_TRANSACTION_ERR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@EP_DIR_OUT = common dso_local global i32 0, align 4
@EP_QUEUE_HEAD_NEXT_TERMINATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_udc*, i32, %struct.mv_req*)* @process_ep_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ep_req(%struct.mv_udc* %0, i32 %1, %struct.mv_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_req*, align 8
  %8 = alloca %struct.mv_dtd*, align 8
  %9 = alloca %struct.mv_dqh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mv_udc* %0, %struct.mv_udc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mv_req* %2, %struct.mv_req** %7, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.mv_udc*, %struct.mv_udc** %5, align 8
  %18 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %17, i32 0, i32 3
  %19 = load %struct.mv_dqh*, %struct.mv_dqh** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mv_dqh, %struct.mv_dqh* %19, i64 %21
  store %struct.mv_dqh* %22, %struct.mv_dqh** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = srem i32 %23, 2
  store i32 %24, i32* %13, align 4
  %25 = load %struct.mv_req*, %struct.mv_req** %7, align 8
  %26 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %25, i32 0, i32 3
  %27 = load %struct.mv_dtd*, %struct.mv_dtd** %26, align 8
  store %struct.mv_dtd* %27, %struct.mv_dtd** %8, align 8
  %28 = load %struct.mv_req*, %struct.mv_req** %7, align 8
  %29 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %151, %3
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.mv_req*, %struct.mv_req** %7, align 8
  %35 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %154

38:                                               ; preds = %32
  %39 = load %struct.mv_dtd*, %struct.mv_dtd** %8, align 8
  %40 = getelementptr inbounds %struct.mv_dtd, %struct.mv_dtd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DTD_STATUS_ACTIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.mv_udc*, %struct.mv_udc** %5, align 8
  %47 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.mv_udc*, %struct.mv_udc** %5, align 8
  %51 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 1, i32* %4, align 4
  br label %213

59:                                               ; preds = %38
  %60 = load %struct.mv_dtd*, %struct.mv_dtd** %8, align 8
  %61 = getelementptr inbounds %struct.mv_dtd, %struct.mv_dtd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DTD_ERROR_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %93, label %67

67:                                               ; preds = %59
  %68 = load %struct.mv_dtd*, %struct.mv_dtd** %8, align 8
  %69 = getelementptr inbounds %struct.mv_dtd, %struct.mv_dtd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DTD_PACKET_SIZE, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @DTD_LENGTH_BIT_POS, align 4
  %74 = ashr i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %67
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.mv_udc*, %struct.mv_udc** %5, align 8
  %85 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EPROTO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %154

91:                                               ; preds = %80
  br label %154

92:                                               ; preds = %67
  br label %138

93:                                               ; preds = %59
  %94 = load %struct.mv_udc*, %struct.mv_udc** %5, align 8
  %95 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %6, align 4
  %99 = ashr i32 %98, 1
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @dev_info(i32* %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %99, i8* %103, i32 %104)
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @DTD_STATUS_HALTED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %93
  %111 = load i32, i32* %15, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.mv_dqh*, %struct.mv_dqh** %9, align 8
  %114 = getelementptr inbounds %struct.mv_dqh, %struct.mv_dqh* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @EPIPE, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %14, align 4
  br label %137

119:                                              ; preds = %93
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @DTD_STATUS_DATA_BUFF_ERR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @EPROTO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %136

127:                                              ; preds = %119
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @DTD_STATUS_TRANSACTION_ERR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @EILSEQ, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135, %124
  br label %137

137:                                              ; preds = %136, %110
  br label %138

138:                                              ; preds = %137, %92
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.mv_req*, %struct.mv_req** %7, align 8
  %141 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  %144 = icmp ne i32 %139, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.mv_dtd*, %struct.mv_dtd** %8, align 8
  %147 = getelementptr inbounds %struct.mv_dtd, %struct.mv_dtd* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to %struct.mv_dtd*
  store %struct.mv_dtd* %149, %struct.mv_dtd** %8, align 8
  br label %150

150:                                              ; preds = %145, %138
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %32

154:                                              ; preds = %91, %83, %32
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* %14, align 4
  store i32 %158, i32* %4, align 4
  br label %213

159:                                              ; preds = %154
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* @EP_DIR_OUT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load %struct.mv_req*, %struct.mv_req** %7, align 8
  %165 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %164, i32 0, i32 2
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 1, %168
  store i32 %169, i32* %16, align 4
  br label %178

170:                                              ; preds = %159
  %171 = load %struct.mv_req*, %struct.mv_req** %7, align 8
  %172 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %171, i32 0, i32 2
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 16, %175
  %177 = shl i32 1, %176
  store i32 %177, i32* %16, align 4
  br label %178

178:                                              ; preds = %170, %163
  br label %179

179:                                              ; preds = %206, %178
  %180 = load %struct.mv_dqh*, %struct.mv_dqh** %9, align 8
  %181 = getelementptr inbounds %struct.mv_dqh, %struct.mv_dqh* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.mv_dtd*, %struct.mv_dtd** %8, align 8
  %184 = getelementptr inbounds %struct.mv_dtd, %struct.mv_dtd* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %182, %185
  br i1 %186, label %187, label %208

187:                                              ; preds = %179
  %188 = load %struct.mv_dtd*, %struct.mv_dtd** %8, align 8
  %189 = getelementptr inbounds %struct.mv_dtd, %struct.mv_dtd* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @EP_QUEUE_HEAD_NEXT_TERMINATE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %187
  br label %194

194:                                              ; preds = %203, %193
  %195 = load %struct.mv_udc*, %struct.mv_udc** %5, align 8
  %196 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %195, i32 0, i32 0
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = call i32 @readl(i32* %198)
  %200 = load i32, i32* %16, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %194
  %204 = call i32 @udelay(i32 1)
  br label %194

205:                                              ; preds = %194
  br label %208

206:                                              ; preds = %187
  %207 = call i32 @udelay(i32 1)
  br label %179

208:                                              ; preds = %205, %179
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.mv_req*, %struct.mv_req** %7, align 8
  %211 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  store i32 %209, i32* %212, align 4
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %208, %157, %45
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
