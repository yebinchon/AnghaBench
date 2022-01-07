; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_ep0_handle_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_ep0_handle_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { i64, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"SETUP packet %02x/%02x/%04x/%04x/%04x [%s] st=%d\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@ep0_state_token = common dso_local global i64 0, align 8
@ep0_state_stall = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"wrong state\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ep0_state_data = common dso_local global i64 0, align 8
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"forwarding to gadget...\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"driver returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"no gadget for request !\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"stalling\0A\00", align 1
@VHUB_EP0_CTRL_STALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"sending [in] status with no data\0A\00", align 1
@VHUB_EP0_TX_BUFF_RDY = common dso_local global i32 0, align 4
@ep0_state_status = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_ep0_handle_setup(%struct.ast_vhub_ep* %0) #0 {
  %2 = alloca %struct.ast_vhub_ep*, align 8
  %3 = alloca %struct.usb_ctrlrequest, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %2, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %9 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %213

16:                                               ; preds = %1
  %17 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %18 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @memcpy_fromio(%struct.usb_ctrlrequest* %3, i32 %20, i32 20)
  %22 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @USB_DIR_IN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %43 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %44 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %29, i32 %32, i32 %35, i8* %42, i64 %46)
  %48 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %49 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ep0_state_token, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %16
  %55 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %56 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ep0_state_stall, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %63 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i32 @ast_vhub_nuke(%struct.ast_vhub_ep* %64, i32 %66)
  br label %68

68:                                               ; preds = %61, %54, %16
  %69 = load i64, i64* @ep0_state_data, align 8
  %70 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %71 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @USB_DIR_IN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %82 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  store i32 129, i32* %4, align 4
  %84 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %85 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp eq %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %111

88:                                               ; preds = %68
  %89 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @USB_TYPE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %97 = call i32 @ast_vhub_std_hub_request(%struct.ast_vhub_ep* %96, %struct.usb_ctrlrequest* %3)
  store i32 %97, i32* %4, align 4
  br label %110

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @USB_TYPE_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @USB_TYPE_CLASS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %107 = call i32 @ast_vhub_class_hub_request(%struct.ast_vhub_ep* %106, %struct.usb_ctrlrequest* %3)
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %98
  store i32 128, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105
  br label %110

110:                                              ; preds = %109, %95
  br label %122

111:                                              ; preds = %68
  %112 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @USB_TYPE_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %120 = call i32 @ast_vhub_std_dev_request(%struct.ast_vhub_ep* %119, %struct.usb_ctrlrequest* %3)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %111
  br label %122

122:                                              ; preds = %121, %110
  %123 = load i32, i32* %4, align 4
  switch i32 %123, label %128 [
    i32 131, label %124
    i32 128, label %125
    i32 129, label %126
    i32 130, label %127
  ]

124:                                              ; preds = %122
  br label %197

125:                                              ; preds = %122
  br label %181

126:                                              ; preds = %122
  br label %128

127:                                              ; preds = %122
  br label %213

128:                                              ; preds = %122, %126
  %129 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %130 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %129, i32 0, i32 3
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = icmp ne %struct.TYPE_6__* %131, null
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i64 @WARN_ON(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %181

138:                                              ; preds = %128
  %139 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %140 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = icmp ne %struct.TYPE_5__* %143, null
  br i1 %144, label %145, label %173

145:                                              ; preds = %138
  %146 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %147 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %148 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %149 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %148, i32 0, i32 2
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = call i32 @spin_unlock(i32* %151)
  %153 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %154 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %153, i32 0, i32 3
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %158, align 8
  %160 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %161 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %160, i32 0, i32 3
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = call i32 %159(i32* %163, %struct.usb_ctrlrequest* %3)
  store i32 %164, i32* %5, align 4
  %165 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %166 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %165, i32 0, i32 2
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = call i32 @spin_lock(i32* %168)
  %170 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  br label %176

173:                                              ; preds = %138
  %174 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %175 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %145
  %177 = load i32, i32* %5, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %213

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180, %137, %125
  %182 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %183 = call i32 (%struct.ast_vhub_ep*, i8*, ...) @EPDBG(%struct.ast_vhub_ep* %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %184 = load i32, i32* @VHUB_EP0_CTRL_STALL, align 4
  %185 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %186 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @writel(i32 %184, i32 %188)
  %190 = load i64, i64* @ep0_state_stall, align 8
  %191 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %192 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i64 %190, i64* %193, align 8
  %194 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %195 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  store i32 0, i32* %196, align 8
  br label %213

197:                                              ; preds = %124
  %198 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %199 = call i32 @EPVDBG(%struct.ast_vhub_ep* %198, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %200 = load i32, i32* @VHUB_EP0_TX_BUFF_RDY, align 4
  %201 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %202 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @writel(i32 %200, i32 %204)
  %206 = load i64, i64* @ep0_state_status, align 8
  %207 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %208 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  store i64 %206, i64* %209, align 8
  %210 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %2, align 8
  %211 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  store i32 0, i32* %212, align 8
  br label %213

213:                                              ; preds = %197, %181, %179, %127, %15
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy_fromio(%struct.usb_ctrlrequest*, i32, i32) #1

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ast_vhub_nuke(%struct.ast_vhub_ep*, i32) #1

declare dso_local i32 @ast_vhub_std_hub_request(%struct.ast_vhub_ep*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @ast_vhub_class_hub_request(%struct.ast_vhub_ep*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @ast_vhub_std_dev_request(%struct.ast_vhub_ep*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @EPVDBG(%struct.ast_vhub_ep*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
