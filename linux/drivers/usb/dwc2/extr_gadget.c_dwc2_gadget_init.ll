; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__, %struct.TYPE_6__**, %struct.device*, i32, i8*, i8*, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"NonPeriodic TXFIFO size: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"RXFIFO size: %d\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@dwc2_hsotg_gadget_ops = common dso_local global i32 0, align 4
@USB_DR_MODE_OTG = common dso_local global i64 0, align 8
@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@OTG_STATE_B_PERIPHERAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Hardware configuration failed: %d\0A\00", align 1
@DWC2_CTRL_BUFF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dwc2_hsotg_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"cannot claim IRQ for gadget\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"wrong number of EPs (zero)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to allocate ctrl req\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_gadget_init(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 6
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @USB_SPEED_HIGH, align 4
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 6
  store i32 %22, i32* %25, align 8
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %27 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  store i32* @dwc2_hsotg_gadget_ops, i32** %28, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_name(%struct.device* %29)
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %32 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %43 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %1
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %53 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %66

55:                                               ; preds = %45
  %56 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %57 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @OTG_STATE_B_PERIPHERAL, align 4
  %63 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %64 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65, %51
  %67 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %68 = call i32 @dwc2_hsotg_hw_cfg(%struct.dwc2_hsotg* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %73 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %72, i32 0, i32 6
  %74 = load %struct.device*, %struct.device** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %259

78:                                               ; preds = %66
  %79 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %80 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %79, i32 0, i32 6
  %81 = load %struct.device*, %struct.device** %80, align 8
  %82 = load i32, i32* @DWC2_CTRL_BUFF_SIZE, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @devm_kzalloc(%struct.device* %81, i32 %82, i32 %83)
  %85 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %86 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %85, i32 0, i32 9
  store i8* %84, i8** %86, align 8
  %87 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %88 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %87, i32 0, i32 9
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %259

94:                                               ; preds = %78
  %95 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %96 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %95, i32 0, i32 6
  %97 = load %struct.device*, %struct.device** %96, align 8
  %98 = load i32, i32* @DWC2_CTRL_BUFF_SIZE, align 4
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @devm_kzalloc(%struct.device* %97, i32 %98, i32 %99)
  %101 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %102 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %101, i32 0, i32 8
  store i8* %100, i8** %102, align 8
  %103 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %104 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %103, i32 0, i32 8
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %94
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %259

110:                                              ; preds = %94
  %111 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %112 = call i64 @using_desc_dma(%struct.dwc2_hsotg* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %116 = call i32 @dwc2_gadget_alloc_ctrl_desc_chains(%struct.dwc2_hsotg* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %259

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %110
  %123 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %124 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %123, i32 0, i32 6
  %125 = load %struct.device*, %struct.device** %124, align 8
  %126 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %127 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @dwc2_hsotg_irq, align 4
  %130 = load i32, i32* @IRQF_SHARED, align 4
  %131 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %132 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %131, i32 0, i32 6
  %133 = load %struct.device*, %struct.device** %132, align 8
  %134 = call i32 @dev_name(%struct.device* %133)
  %135 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %136 = call i32 @devm_request_irq(%struct.device* %125, i32 %128, i32 %129, i32 %130, i32 %134, %struct.dwc2_hsotg* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %122
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %259

143:                                              ; preds = %122
  %144 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %145 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %259

153:                                              ; preds = %143
  %154 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %155 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  %157 = call i32 @INIT_LIST_HEAD(i32* %156)
  %158 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %159 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %158, i32 0, i32 3
  %160 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %160, i64 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %165 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  store i32* %163, i32** %166, align 8
  %167 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %168 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %167, i32 0, i32 3
  %169 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %169, i64 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call i32 @dwc2_hsotg_ep_alloc_request(i32* %172, i32 %173)
  %175 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %176 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %178 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %153
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %259

186:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %234, %186
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %190 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %237

193:                                              ; preds = %187
  %194 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %195 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %194, i32 0, i32 5
  %196 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %196, i64 %198
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = icmp ne %struct.TYPE_6__* %200, null
  br i1 %201, label %202, label %213

202:                                              ; preds = %193
  %203 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %204 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %205 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %204, i32 0, i32 5
  %206 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %206, i64 %208
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @dwc2_hsotg_initep(%struct.dwc2_hsotg* %203, %struct.TYPE_6__* %210, i32 %211, i32 1)
  br label %213

213:                                              ; preds = %202, %193
  %214 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %215 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %214, i32 0, i32 3
  %216 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %216, i64 %218
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = icmp ne %struct.TYPE_6__* %220, null
  br i1 %221, label %222, label %233

222:                                              ; preds = %213
  %223 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %224 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %225 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %224, i32 0, i32 3
  %226 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %226, i64 %228
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = load i32, i32* %5, align 4
  %232 = call i32 @dwc2_hsotg_initep(%struct.dwc2_hsotg* %223, %struct.TYPE_6__* %230, i32 %231, i32 0)
  br label %233

233:                                              ; preds = %222, %213
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %5, align 4
  br label %187

237:                                              ; preds = %187
  %238 = load %struct.device*, %struct.device** %4, align 8
  %239 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %240 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %239, i32 0, i32 4
  %241 = call i32 @usb_add_gadget_udc(%struct.device* %238, %struct.TYPE_5__* %240)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %237
  %245 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %246 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %245, i32 0, i32 3
  %247 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %247, i64 0
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %252 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @dwc2_hsotg_ep_free_request(i32* %250, i32 %253)
  %255 = load i32, i32* %6, align 4
  store i32 %255, i32* %2, align 4
  br label %259

256:                                              ; preds = %237
  %257 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %258 = call i32 @dwc2_hsotg_dump(%struct.dwc2_hsotg* %257)
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %256, %244, %181, %148, %139, %119, %107, %91, %71
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dwc2_hsotg_hw_cfg(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @using_desc_dma(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_gadget_alloc_ctrl_desc_chains(%struct.dwc2_hsotg*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.dwc2_hsotg*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dwc2_hsotg_ep_alloc_request(i32*, i32) #1

declare dso_local i32 @dwc2_hsotg_initep(%struct.dwc2_hsotg*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @usb_add_gadget_udc(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @dwc2_hsotg_ep_free_request(i32*, i32) #1

declare dso_local i32 @dwc2_hsotg_dump(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
