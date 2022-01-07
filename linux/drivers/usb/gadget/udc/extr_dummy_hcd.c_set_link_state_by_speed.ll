; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_set_link_state_by_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_set_link_state_by_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_hcd = type { i32, i32, i64, i32, %struct.dummy* }
%struct.dummy = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@HCD_USB3 = common dso_local global i64 0, align 8
@USB_SS_PORT_STAT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_SPEED_5GBPS = common dso_local global i32 0, align 4
@USB_PORT_STAT_LINK_STATE = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_U0 = common dso_local global i32 0, align 4
@DUMMY_RH_SUSPENDED = common dso_local global i64 0, align 8
@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dummy_hcd*)* @set_link_state_by_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_link_state_by_speed(%struct.dummy_hcd* %0) #0 {
  %2 = alloca %struct.dummy_hcd*, align 8
  %3 = alloca %struct.dummy*, align 8
  store %struct.dummy_hcd* %0, %struct.dummy_hcd** %2, align 8
  %4 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %4, i32 0, i32 4
  %6 = load %struct.dummy*, %struct.dummy** %5, align 8
  store %struct.dummy* %6, %struct.dummy** %3, align 8
  %7 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %8 = call %struct.TYPE_2__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HCD_USB3, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %104

13:                                               ; preds = %1
  %14 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @USB_SS_PORT_STAT_POWER, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %103

23:                                               ; preds = %13
  %24 = load %struct.dummy*, %struct.dummy** %3, align 8
  %25 = getelementptr inbounds %struct.dummy, %struct.dummy* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.dummy*, %struct.dummy** %3, align 8
  %30 = getelementptr inbounds %struct.dummy, %struct.dummy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %35 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %39 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %43 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %33
  %49 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %50 = shl i32 %49, 16
  %51 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %52 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %33
  br label %102

56:                                               ; preds = %28
  %57 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %58 = load i32, i32* @USB_PORT_STAT_SPEED_5GBPS, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %61 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %65 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %56
  %71 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %72 = shl i32 %71, 16
  %73 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %74 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %56
  %78 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %79 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %86 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @USB_PORT_STAT_LINK_STATE, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @USB_SS_PORT_LS_U0, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %94 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DUMMY_RH_SUSPENDED, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %100 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %99, i32 0, i32 3
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %92, %84, %77
  br label %102

102:                                              ; preds = %101, %55
  br label %103

103:                                              ; preds = %102, %20
  br label %206

104:                                              ; preds = %1
  %105 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %106 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %113 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  br label %205

114:                                              ; preds = %104
  %115 = load %struct.dummy*, %struct.dummy** %3, align 8
  %116 = getelementptr inbounds %struct.dummy, %struct.dummy* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.dummy*, %struct.dummy** %3, align 8
  %121 = getelementptr inbounds %struct.dummy, %struct.dummy* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %119, %114
  %125 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %126 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %136 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %140 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %124
  %146 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %147 = shl i32 %146, 16
  %148 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %149 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %145, %124
  br label %204

153:                                              ; preds = %119
  %154 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %155 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %156 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %160 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %153
  %166 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %167 = shl i32 %166, 16
  %168 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %169 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %165, %153
  %173 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %174 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %172
  %180 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %181 = xor i32 %180, -1
  %182 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %183 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %203

186:                                              ; preds = %172
  %187 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %188 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %191 = and i32 %189, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %186
  %194 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %195 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @DUMMY_RH_SUSPENDED, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load %struct.dummy_hcd*, %struct.dummy_hcd** %2, align 8
  %201 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %200, i32 0, i32 3
  store i32 1, i32* %201, align 8
  br label %202

202:                                              ; preds = %199, %193, %186
  br label %203

203:                                              ; preds = %202, %179
  br label %204

204:                                              ; preds = %203, %152
  br label %205

205:                                              ; preds = %204, %111
  br label %206

206:                                              ; preds = %205, %103
  ret void
}

declare dso_local %struct.TYPE_2__* @dummy_hcd_to_hcd(%struct.dummy_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
