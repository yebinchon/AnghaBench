; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_handle_stat1_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_handle_stat1_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { i32, %struct.TYPE_9__, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@VBUS_INTERRUPT = common dso_local global i32 0, align 4
@ROOT_PORT_RESET_INTERRUPT = common dso_local global i32 0, align 4
@USB_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_FULL_SPEED = common dso_local global i32 0, align 4
@IRQSTAT1 = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@USBCTL1 = common dso_local global i32 0, align 4
@VBUS_PIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"disconnect %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"reset %s\0A\00", align 1
@SUSPEND_REQUEST_CHANGE_INTERRUPT = common dso_local global i32 0, align 4
@SUSPEND_REQUEST_INTERRUPT = common dso_local global i32 0, align 4
@enable_suspend = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Suspend disabled, ignoring\0A\00", align 1
@CONTROL_STATUS_INTERRUPT = common dso_local global i32 0, align 4
@RESUME_INTERRUPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unhandled irqstat1 %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2272*, i32)* @net2272_handle_stat1_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net2272_handle_stat1_irqs(%struct.net2272* %0, i32 %1) #0 {
  %3 = alloca %struct.net2272*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net2272* %0, %struct.net2272** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @VBUS_INTERRUPT, align 4
  %10 = shl i32 1, %9
  %11 = load i32, i32* @ROOT_PORT_RESET_INTERRUPT, align 4
  %12 = shl i32 1, %11
  %13 = or i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @USB_HIGH_SPEED, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* @USB_FULL_SPEED, align 4
  %17 = shl i32 1, %16
  %18 = or i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %133

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load %struct.net2272*, %struct.net2272** %3, align 8
  %25 = load i32, i32* @IRQSTAT1, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @net2272_write(%struct.net2272* %24, i32 %25, i32 %26)
  %28 = load %struct.net2272*, %struct.net2272** %3, align 8
  %29 = getelementptr inbounds %struct.net2272, %struct.net2272* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %124

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @VBUS_INTERRUPT, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.net2272*, %struct.net2272** %3, align 8
  %42 = load i32, i32* @USBCTL1, align 4
  %43 = call i32 @net2272_read(%struct.net2272* %41, i32 %42)
  %44 = load i32, i32* @VBUS_PIN, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  %49 = load %struct.net2272*, %struct.net2272** %3, align 8
  %50 = getelementptr inbounds %struct.net2272, %struct.net2272* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.net2272*, %struct.net2272** %3, align 8
  %53 = getelementptr inbounds %struct.net2272, %struct.net2272* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %84

59:                                               ; preds = %40, %34
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ROOT_PORT_RESET_INTERRUPT, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.net2272*, %struct.net2272** %3, align 8
  %67 = load i32, i32* @USBCTL1, align 4
  %68 = call i32 @net2272_read(%struct.net2272* %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  %73 = load %struct.net2272*, %struct.net2272** %3, align 8
  %74 = getelementptr inbounds %struct.net2272, %struct.net2272* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.net2272*, %struct.net2272** %3, align 8
  %77 = getelementptr inbounds %struct.net2272, %struct.net2272* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @dev_dbg(i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %72, %65, %59
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %87, %84
  %91 = load %struct.net2272*, %struct.net2272** %3, align 8
  %92 = load %struct.net2272*, %struct.net2272** %3, align 8
  %93 = getelementptr inbounds %struct.net2272, %struct.net2272* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = call i32 @stop_activity(%struct.net2272* %91, %struct.TYPE_10__* %94)
  %96 = load %struct.net2272*, %struct.net2272** %3, align 8
  %97 = call i32 @net2272_ep0_start(%struct.net2272* %96)
  %98 = load %struct.net2272*, %struct.net2272** %3, align 8
  %99 = getelementptr inbounds %struct.net2272, %struct.net2272* %98, i32 0, i32 3
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %90
  %104 = load %struct.net2272*, %struct.net2272** %3, align 8
  %105 = getelementptr inbounds %struct.net2272, %struct.net2272* %104, i32 0, i32 1
  %106 = load %struct.net2272*, %struct.net2272** %3, align 8
  %107 = getelementptr inbounds %struct.net2272, %struct.net2272* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @usb_gadget_udc_reset(%struct.TYPE_9__* %105, %struct.TYPE_10__* %108)
  br label %119

110:                                              ; preds = %90
  %111 = load %struct.net2272*, %struct.net2272** %3, align 8
  %112 = getelementptr inbounds %struct.net2272, %struct.net2272* %111, i32 0, i32 2
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %114, align 8
  %116 = load %struct.net2272*, %struct.net2272** %3, align 8
  %117 = getelementptr inbounds %struct.net2272, %struct.net2272* %116, i32 0, i32 1
  %118 = call i32 %115(%struct.TYPE_9__* %117)
  br label %119

119:                                              ; preds = %110, %103
  %120 = load %struct.net2272*, %struct.net2272** %3, align 8
  %121 = getelementptr inbounds %struct.net2272, %struct.net2272* %120, i32 0, i32 3
  %122 = call i32 @spin_lock(i32* %121)
  br label %231

123:                                              ; preds = %87
  br label %124

124:                                              ; preds = %123, %23
  %125 = load i32, i32* %5, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %4, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %124
  br label %231

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %2
  %134 = load i32, i32* @SUSPEND_REQUEST_CHANGE_INTERRUPT, align 4
  %135 = shl i32 1, %134
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %202

140:                                              ; preds = %133
  %141 = load %struct.net2272*, %struct.net2272** %3, align 8
  %142 = load i32, i32* @IRQSTAT1, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @net2272_write(%struct.net2272* %141, i32 %142, i32 %143)
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @SUSPEND_REQUEST_INTERRUPT, align 4
  %147 = shl i32 1, %146
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %180

150:                                              ; preds = %140
  %151 = load %struct.net2272*, %struct.net2272** %3, align 8
  %152 = getelementptr inbounds %struct.net2272, %struct.net2272* %151, i32 0, i32 2
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %154, align 8
  %156 = icmp ne i32 (%struct.TYPE_9__*)* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %150
  %158 = load %struct.net2272*, %struct.net2272** %3, align 8
  %159 = getelementptr inbounds %struct.net2272, %struct.net2272* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %161, align 8
  %163 = load %struct.net2272*, %struct.net2272** %3, align 8
  %164 = getelementptr inbounds %struct.net2272, %struct.net2272* %163, i32 0, i32 1
  %165 = call i32 %162(%struct.TYPE_9__* %164)
  br label %166

166:                                              ; preds = %157, %150
  %167 = load i32, i32* @enable_suspend, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @SUSPEND_REQUEST_INTERRUPT, align 4
  %171 = shl i32 1, %170
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %4, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %4, align 4
  %175 = load %struct.net2272*, %struct.net2272** %3, align 8
  %176 = getelementptr inbounds %struct.net2272, %struct.net2272* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, ...) @dev_dbg(i32 %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %179

179:                                              ; preds = %169, %166
  br label %197

180:                                              ; preds = %140
  %181 = load %struct.net2272*, %struct.net2272** %3, align 8
  %182 = getelementptr inbounds %struct.net2272, %struct.net2272* %181, i32 0, i32 2
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %184, align 8
  %186 = icmp ne i32 (%struct.TYPE_9__*)* %185, null
  br i1 %186, label %187, label %196

187:                                              ; preds = %180
  %188 = load %struct.net2272*, %struct.net2272** %3, align 8
  %189 = getelementptr inbounds %struct.net2272, %struct.net2272* %188, i32 0, i32 2
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %191, align 8
  %193 = load %struct.net2272*, %struct.net2272** %3, align 8
  %194 = getelementptr inbounds %struct.net2272, %struct.net2272* %193, i32 0, i32 1
  %195 = call i32 %192(%struct.TYPE_9__* %194)
  br label %196

196:                                              ; preds = %187, %180
  br label %197

197:                                              ; preds = %196, %179
  %198 = load i32, i32* %5, align 4
  %199 = xor i32 %198, -1
  %200 = load i32, i32* %4, align 4
  %201 = and i32 %200, %199
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %197, %133
  %203 = load i32, i32* %4, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load %struct.net2272*, %struct.net2272** %3, align 8
  %207 = load i32, i32* @IRQSTAT1, align 4
  %208 = load i32, i32* %4, align 4
  %209 = call i32 @net2272_write(%struct.net2272* %206, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %205, %202
  %211 = load i32, i32* @CONTROL_STATUS_INTERRUPT, align 4
  %212 = shl i32 1, %211
  %213 = load i32, i32* @SUSPEND_REQUEST_INTERRUPT, align 4
  %214 = shl i32 1, %213
  %215 = or i32 %212, %214
  %216 = load i32, i32* @RESUME_INTERRUPT, align 4
  %217 = shl i32 1, %216
  %218 = or i32 %215, %217
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %4, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %210
  br label %231

225:                                              ; preds = %210
  %226 = load %struct.net2272*, %struct.net2272** %3, align 8
  %227 = getelementptr inbounds %struct.net2272, %struct.net2272* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %4, align 4
  %230 = call i32 (i32, i8*, ...) @dev_dbg(i32 %228, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %119, %131, %224, %225
  ret void
}

declare dso_local i32 @net2272_write(%struct.net2272*, i32, i32) #1

declare dso_local i32 @net2272_read(%struct.net2272*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @stop_activity(%struct.net2272*, %struct.TYPE_10__*) #1

declare dso_local i32 @net2272_ep0_start(%struct.net2272*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_udc_reset(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
