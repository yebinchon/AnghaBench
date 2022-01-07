; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_startup_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_startup_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_udc = type { i32 (i64)*, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i64, i32 (i64, i64, i32)*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)* }

@XUSB_STATUS_RESET_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Reset\0A\00", align 1
@XUSB_STATUS_HIGH_SPEED_MASK = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@XUSB_TESTMODE_OFFSET = common dso_local global i64 0, align 8
@XUSB_ADDRESS_OFFSET = common dso_local global i64 0, align 8
@XUSB_IER_OFFSET = common dso_local global i64 0, align 8
@XUSB_STATUS_SUSPEND_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_RESUME_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_DISCONNECT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Suspend\0A\00", align 1
@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Resume IRQ while not suspended\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Resume\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Disconnect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xusb_udc*, i32)* @xudc_startup_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xudc_startup_handler(%struct.xusb_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.xusb_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xusb_udc* %0, %struct.xusb_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @XUSB_STATUS_RESET_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %78

11:                                               ; preds = %2
  %12 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %13 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @XUSB_STATUS_HIGH_SPEED_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load i32, i32* @USB_SPEED_HIGH, align 4
  %22 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %23 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %30

25:                                               ; preds = %11
  %26 = load i32, i32* @USB_SPEED_FULL, align 4
  %27 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %28 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %32 = call i32 @xudc_stop_activity(%struct.xusb_udc* %31)
  %33 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %34 = call i32 @xudc_clear_stall_all_ep(%struct.xusb_udc* %33)
  %35 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %36 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %35, i32 0, i32 6
  %37 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %36, align 8
  %38 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %39 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XUSB_TESTMODE_OFFSET, align 8
  %42 = call i32 %37(i64 %40, i64 %41, i32 0)
  %43 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %44 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %43, i32 0, i32 6
  %45 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %44, align 8
  %46 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %47 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XUSB_ADDRESS_OFFSET, align 8
  %50 = call i32 %45(i64 %48, i64 %49, i32 0)
  %51 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %52 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %54 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %53, i32 0, i32 0
  %55 = load i32 (i64)*, i32 (i64)** %54, align 8
  %56 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %57 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 %55(i64 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @XUSB_STATUS_SUSPEND_MASK, align 4
  %63 = load i32, i32* @XUSB_STATUS_RESUME_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @XUSB_STATUS_DISCONNECT_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %70 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %69, i32 0, i32 6
  %71 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %70, align 8
  %72 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %73 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 %71(i64 %74, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %30, %2
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @XUSB_STATUS_SUSPEND_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %138

83:                                               ; preds = %78
  %84 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %85 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %89 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %88, i32 0, i32 0
  %90 = load i32 (i64)*, i32 (i64)** %89, align 8
  %91 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %92 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 %90(i64 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @XUSB_STATUS_RESET_MASK, align 4
  %98 = load i32, i32* @XUSB_STATUS_RESUME_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @XUSB_STATUS_DISCONNECT_MASK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %105 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %104, i32 0, i32 6
  %106 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %105, align 8
  %107 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %108 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 %106(i64 %109, i64 %110, i32 %111)
  %113 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %114 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %115 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %117 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %116, i32 0, i32 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %119, align 8
  %121 = icmp ne i32 (%struct.TYPE_6__*)* %120, null
  br i1 %121, label %122, label %137

122:                                              ; preds = %83
  %123 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %124 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %123, i32 0, i32 2
  %125 = call i32 @spin_unlock(i32* %124)
  %126 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %127 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %126, i32 0, i32 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %129, align 8
  %131 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %132 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %131, i32 0, i32 3
  %133 = call i32 %130(%struct.TYPE_6__* %132)
  %134 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %135 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %134, i32 0, i32 2
  %136 = call i32 @spin_lock(i32* %135)
  br label %137

137:                                              ; preds = %122, %83
  br label %138

138:                                              ; preds = %137, %78
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @XUSB_STATUS_RESUME_MASK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %208

143:                                              ; preds = %138
  %144 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %145 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %148 = icmp ne i64 %146, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %6, align 4
  %150 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %151 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @dev_WARN_ONCE(i32 %152, i32 %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %155 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %156 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dev_dbg(i32 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %159 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %160 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %159, i32 0, i32 0
  %161 = load i32 (i64)*, i32 (i64)** %160, align 8
  %162 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %163 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 %161(i64 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* @XUSB_STATUS_RESET_MASK, align 4
  %169 = load i32, i32* @XUSB_STATUS_SUSPEND_MASK, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @XUSB_STATUS_DISCONNECT_MASK, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %5, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %5, align 4
  %175 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %176 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %175, i32 0, i32 6
  %177 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %176, align 8
  %178 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %179 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %182 = load i32, i32* %5, align 4
  %183 = call i32 %177(i64 %180, i64 %181, i32 %182)
  %184 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %185 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  %186 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %187 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %186, i32 0, i32 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %189, align 8
  %191 = icmp ne i32 (%struct.TYPE_6__*)* %190, null
  br i1 %191, label %192, label %207

192:                                              ; preds = %143
  %193 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %194 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %193, i32 0, i32 2
  %195 = call i32 @spin_unlock(i32* %194)
  %196 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %197 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %196, i32 0, i32 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %199, align 8
  %201 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %202 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %201, i32 0, i32 3
  %203 = call i32 %200(%struct.TYPE_6__* %202)
  %204 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %205 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %204, i32 0, i32 2
  %206 = call i32 @spin_lock(i32* %205)
  br label %207

207:                                              ; preds = %192, %143
  br label %208

208:                                              ; preds = %207, %138
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @XUSB_STATUS_DISCONNECT_MASK, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %270

213:                                              ; preds = %208
  %214 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %215 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @dev_dbg(i32 %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %218 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %219 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %218, i32 0, i32 0
  %220 = load i32 (i64)*, i32 (i64)** %219, align 8
  %221 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %222 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 %220(i64 %225)
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* @XUSB_STATUS_RESET_MASK, align 4
  %228 = load i32, i32* @XUSB_STATUS_RESUME_MASK, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @XUSB_STATUS_SUSPEND_MASK, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* %5, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %5, align 4
  %234 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %235 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %234, i32 0, i32 6
  %236 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %235, align 8
  %237 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %238 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %241 = load i32, i32* %5, align 4
  %242 = call i32 %236(i64 %239, i64 %240, i32 %241)
  %243 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %244 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %243, i32 0, i32 4
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = icmp ne %struct.TYPE_5__* %245, null
  br i1 %246, label %247, label %269

247:                                              ; preds = %213
  %248 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %249 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %248, i32 0, i32 4
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %251, align 8
  %253 = icmp ne i32 (%struct.TYPE_6__*)* %252, null
  br i1 %253, label %254, label %269

254:                                              ; preds = %247
  %255 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %256 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %255, i32 0, i32 2
  %257 = call i32 @spin_unlock(i32* %256)
  %258 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %259 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %258, i32 0, i32 4
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %261, align 8
  %263 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %264 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %263, i32 0, i32 3
  %265 = call i32 %262(%struct.TYPE_6__* %264)
  %266 = load %struct.xusb_udc*, %struct.xusb_udc** %3, align 8
  %267 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %266, i32 0, i32 2
  %268 = call i32 @spin_lock(i32* %267)
  br label %269

269:                                              ; preds = %254, %247, %213
  br label %270

270:                                              ; preds = %269, %208
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @xudc_stop_activity(%struct.xusb_udc*) #1

declare dso_local i32 @xudc_clear_stall_all_ep(%struct.xusb_udc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_WARN_ONCE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
