; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_set_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_set_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_hcd = type { i64, i32, i32, i64, i64, %struct.dummy* }
%struct.dummy = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }
%struct.TYPE_9__ = type { i64 }

@HCD_USB3 = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@USB_SS_PORT_STAT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@USB_PORT_STAT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dummy_hcd*)* @set_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_link_state(%struct.dummy_hcd* %0) #0 {
  %2 = alloca %struct.dummy_hcd*, align 8
  %3 = alloca %struct.dummy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dummy_hcd* %0, %struct.dummy_hcd** %2, align 8
  %7 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %7, i32 0, i32 5
  %9 = load %struct.dummy*, %struct.dummy** %8, align 8
  store %struct.dummy* %9, %struct.dummy** %3, align 8
  %10 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.dummy*, %struct.dummy** %3, align 8
  %13 = getelementptr inbounds %struct.dummy, %struct.dummy* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %1
  %17 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %18 = call %struct.TYPE_9__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %17)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HCD_USB3, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.dummy*, %struct.dummy** %3, align 8
  %25 = getelementptr inbounds %struct.dummy, %struct.dummy* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_SPEED_SUPER, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %44, label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %32 = call %struct.TYPE_9__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HCD_USB3, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.dummy*, %struct.dummy** %3, align 8
  %39 = getelementptr inbounds %struct.dummy, %struct.dummy* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @USB_SPEED_SUPER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %23
  br label %240

45:                                               ; preds = %37, %30
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %48 = call i32 @set_link_state_by_speed(%struct.dummy_hcd* %47)
  %49 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %50 = call %struct.TYPE_9__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %49)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HCD_USB3, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @USB_SS_PORT_STAT_POWER, align 4
  br label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %4, align 4
  %61 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %62 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %59
  %68 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %69 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67, %59
  %73 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %74 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %77 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %84 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %157

89:                                               ; preds = %82, %75
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %92 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %90, %93
  %95 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %96 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = xor i32 %97, -1
  %99 = and i32 %94, %98
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %101 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %102 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %100, %104
  %106 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %107 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %105, %108
  store i32 %109, i32* %6, align 4
  %110 = load %struct.dummy*, %struct.dummy** %3, align 8
  %111 = getelementptr inbounds %struct.dummy, %struct.dummy* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %156

114:                                              ; preds = %89
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %117, %114
  %121 = load %struct.dummy*, %struct.dummy** %3, align 8
  %122 = call i32 @stop_activity(%struct.dummy* %121)
  %123 = load %struct.dummy*, %struct.dummy** %3, align 8
  %124 = getelementptr inbounds %struct.dummy, %struct.dummy* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load %struct.dummy*, %struct.dummy** %3, align 8
  %128 = getelementptr inbounds %struct.dummy, %struct.dummy* %127, i32 0, i32 1
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %120
  %133 = load %struct.dummy*, %struct.dummy** %3, align 8
  %134 = getelementptr inbounds %struct.dummy, %struct.dummy* %133, i32 0, i32 2
  %135 = load %struct.dummy*, %struct.dummy** %3, align 8
  %136 = getelementptr inbounds %struct.dummy, %struct.dummy* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = call i32 @usb_gadget_udc_reset(%struct.TYPE_7__* %134, %struct.TYPE_8__* %137)
  br label %148

139:                                              ; preds = %120
  %140 = load %struct.dummy*, %struct.dummy** %3, align 8
  %141 = getelementptr inbounds %struct.dummy, %struct.dummy* %140, i32 0, i32 3
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %143, align 8
  %145 = load %struct.dummy*, %struct.dummy** %3, align 8
  %146 = getelementptr inbounds %struct.dummy, %struct.dummy* %145, i32 0, i32 2
  %147 = call i32 %144(%struct.TYPE_7__* %146)
  br label %148

148:                                              ; preds = %139, %132
  %149 = load %struct.dummy*, %struct.dummy** %3, align 8
  %150 = getelementptr inbounds %struct.dummy, %struct.dummy* %149, i32 0, i32 1
  %151 = call i32 @spin_lock(i32* %150)
  %152 = load %struct.dummy*, %struct.dummy** %3, align 8
  %153 = getelementptr inbounds %struct.dummy, %struct.dummy* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %148, %117, %89
  br label %229

157:                                              ; preds = %82
  %158 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %159 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %162 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %160, %163
  br i1 %164, label %165, label %228

165:                                              ; preds = %157
  %166 = load %struct.dummy*, %struct.dummy** %3, align 8
  %167 = getelementptr inbounds %struct.dummy, %struct.dummy* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %228

170:                                              ; preds = %165
  %171 = load %struct.dummy*, %struct.dummy** %3, align 8
  %172 = getelementptr inbounds %struct.dummy, %struct.dummy* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = load %struct.dummy*, %struct.dummy** %3, align 8
  %176 = getelementptr inbounds %struct.dummy, %struct.dummy* %175, i32 0, i32 1
  %177 = call i32 @spin_unlock(i32* %176)
  %178 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %179 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %170
  %183 = load %struct.dummy*, %struct.dummy** %3, align 8
  %184 = getelementptr inbounds %struct.dummy, %struct.dummy* %183, i32 0, i32 3
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %186, align 8
  %188 = icmp ne i32 (%struct.TYPE_7__*)* %187, null
  br i1 %188, label %189, label %198

189:                                              ; preds = %182
  %190 = load %struct.dummy*, %struct.dummy** %3, align 8
  %191 = getelementptr inbounds %struct.dummy, %struct.dummy* %190, i32 0, i32 3
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %193, align 8
  %195 = load %struct.dummy*, %struct.dummy** %3, align 8
  %196 = getelementptr inbounds %struct.dummy, %struct.dummy* %195, i32 0, i32 2
  %197 = call i32 %194(%struct.TYPE_7__* %196)
  br label %220

198:                                              ; preds = %182, %170
  %199 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %200 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %219, label %203

203:                                              ; preds = %198
  %204 = load %struct.dummy*, %struct.dummy** %3, align 8
  %205 = getelementptr inbounds %struct.dummy, %struct.dummy* %204, i32 0, i32 3
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %207, align 8
  %209 = icmp ne i32 (%struct.TYPE_7__*)* %208, null
  br i1 %209, label %210, label %219

210:                                              ; preds = %203
  %211 = load %struct.dummy*, %struct.dummy** %3, align 8
  %212 = getelementptr inbounds %struct.dummy, %struct.dummy* %211, i32 0, i32 3
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %214, align 8
  %216 = load %struct.dummy*, %struct.dummy** %3, align 8
  %217 = getelementptr inbounds %struct.dummy, %struct.dummy* %216, i32 0, i32 2
  %218 = call i32 %215(%struct.TYPE_7__* %217)
  br label %219

219:                                              ; preds = %210, %203, %198
  br label %220

220:                                              ; preds = %219, %189
  %221 = load %struct.dummy*, %struct.dummy** %3, align 8
  %222 = getelementptr inbounds %struct.dummy, %struct.dummy* %221, i32 0, i32 1
  %223 = call i32 @spin_lock(i32* %222)
  %224 = load %struct.dummy*, %struct.dummy** %3, align 8
  %225 = getelementptr inbounds %struct.dummy, %struct.dummy* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %220, %165, %157
  br label %229

229:                                              ; preds = %228, %156
  %230 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %231 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %234 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 4
  %235 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %236 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %239 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %238, i32 0, i32 3
  store i64 %237, i64* %239, align 8
  br label %240

240:                                              ; preds = %229, %44
  ret void
}

declare dso_local %struct.TYPE_9__* @dummy_hcd_to_hcd(%struct.dummy_hcd*) #1

declare dso_local i32 @set_link_state_by_speed(%struct.dummy_hcd*) #1

declare dso_local i32 @stop_activity(%struct.dummy*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_udc_reset(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
