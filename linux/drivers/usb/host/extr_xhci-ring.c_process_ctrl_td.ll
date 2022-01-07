; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_process_ctrl_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_process_ctrl_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { i32 }
%struct.xhci_td = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%union.xhci_trb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.xhci_transfer_event = type { i32, i32 }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_ep_ctx = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"WARN: Success on ctrl %s TRB without IOC set?\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"WARN: Stopped Short Packet on ctrl setup or status TRB\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"WARN: unexpected TRB Type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"TRB error %u, halted endpoint index = %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Waiting for status stage event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_td*, %union.xhci_trb*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*)* @process_ctrl_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ctrl_td(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %union.xhci_trb* %2, %struct.xhci_transfer_event* %3, %struct.xhci_virt_ep* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca %struct.xhci_td*, align 8
  %10 = alloca %union.xhci_trb*, align 8
  %11 = alloca %struct.xhci_transfer_event*, align 8
  %12 = alloca %struct.xhci_virt_ep*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xhci_virt_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.xhci_ep_ctx*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %8, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %9, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %10, align 8
  store %struct.xhci_transfer_event* %3, %struct.xhci_transfer_event** %11, align 8
  store %struct.xhci_virt_ep* %4, %struct.xhci_virt_ep** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %23 = bitcast %union.xhci_trb* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = call i32 @TRB_FIELD_TO_TYPE(i32 %28)
  store i32 %29, i32* %21, align 4
  %30 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %31 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = call i32 @TRB_TO_SLOT_ID(i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %36 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %35, i32 0, i32 0
  %37 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %37, i64 %39
  %41 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %40, align 8
  store %struct.xhci_virt_device* %41, %struct.xhci_virt_device** %14, align 8
  %42 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %43 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = call i32 @TRB_TO_EP_ID(i32 %45)
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %49 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %14, align 8
  %50 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %48, i32 %51, i32 %52)
  store %struct.xhci_ep_ctx* %53, %struct.xhci_ep_ctx** %17, align 8
  %54 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %55 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = call i32 @GET_COMP_CODE(i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %60 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %65 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = call i32 @EVENT_TRB_LEN(i32 %67)
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %18, align 4
  switch i32 %69, label %129 [
    i32 132, label %70
    i32 137, label %85
    i32 133, label %87
    i32 135, label %103
    i32 134, label %128
    i32 136, label %141
  ]

70:                                               ; preds = %6
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 128
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %75 = load i32, i32* %21, align 4
  %76 = icmp eq i32 %75, 131
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %79 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @ESHUTDOWN, align 4
  %81 = sub nsw i32 0, %80
  %82 = load i32*, i32** %13, align 8
  store i32 %81, i32* %82, align 4
  br label %167

83:                                               ; preds = %70
  %84 = load i32*, i32** %13, align 8
  store i32 0, i32* %84, align 4
  br label %167

85:                                               ; preds = %6
  %86 = load i32*, i32** %13, align 8
  store i32 0, i32* %86, align 4
  br label %167

87:                                               ; preds = %6
  %88 = load i32, i32* %21, align 4
  %89 = icmp eq i32 %88, 131
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %21, align 4
  %92 = icmp eq i32 %91, 130
  br i1 %92, label %93, label %99

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %19, align 4
  %95 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %96 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  br label %102

99:                                               ; preds = %90
  %100 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %101 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %100, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %93
  br label %201

103:                                              ; preds = %6
  %104 = load i32, i32* %21, align 4
  switch i32 %104, label %124 [
    i32 129, label %105
    i32 131, label %110
    i32 130, label %110
    i32 128, label %118
  ]

105:                                              ; preds = %103
  %106 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %107 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %201

110:                                              ; preds = %103, %103
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %19, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %115 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  br label %201

118:                                              ; preds = %103
  %119 = load i32, i32* %20, align 4
  %120 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %121 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 4
  br label %201

124:                                              ; preds = %103
  %125 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %126 = load i32, i32* %21, align 4
  %127 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %201

128:                                              ; preds = %6
  br label %201

129:                                              ; preds = %6
  %130 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %131 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %17, align 8
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @xhci_requires_manual_halt_cleanup(%struct.xhci_hcd* %130, %struct.xhci_ep_ctx* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %167

136:                                              ; preds = %129
  %137 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %16, align 4
  %140 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %137, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %6, %136
  %142 = load i32, i32* %21, align 4
  %143 = icmp eq i32 %142, 131
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %21, align 4
  %146 = icmp eq i32 %145, 130
  br i1 %146, label %147, label %155

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %19, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %152 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  br label %166

155:                                              ; preds = %144
  %156 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %157 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %162 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %160, %155
  br label %166

166:                                              ; preds = %165, %147
  br label %201

167:                                              ; preds = %135, %85, %83, %73
  %168 = load i32, i32* %21, align 4
  %169 = icmp eq i32 %168, 129
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %201

171:                                              ; preds = %167
  %172 = load i32, i32* %21, align 4
  %173 = icmp eq i32 %172, 131
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %21, align 4
  %176 = icmp eq i32 %175, 130
  br i1 %176, label %177, label %189

177:                                              ; preds = %174, %171
  %178 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %179 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %19, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %184 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  store i32 %182, i32* %186, align 4
  %187 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %188 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %208

189:                                              ; preds = %174
  %190 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %191 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %20, align 4
  %196 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %197 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  store i32 %195, i32* %199, align 4
  br label %200

200:                                              ; preds = %194, %189
  br label %201

201:                                              ; preds = %200, %170, %166, %128, %124, %118, %110, %105, %102
  %202 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %203 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %204 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %205 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %12, align 8
  %206 = load i32*, i32** %13, align 8
  %207 = call i32 @finish_td(%struct.xhci_hcd* %202, %struct.xhci_td* %203, %struct.xhci_transfer_event* %204, %struct.xhci_virt_ep* %205, i32* %206)
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %201, %177
  %209 = load i32, i32* %7, align 4
  ret i32 %209
}

declare dso_local i32 @TRB_FIELD_TO_TYPE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @TRB_TO_SLOT_ID(i32) #1

declare dso_local i32 @TRB_TO_EP_ID(i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @GET_COMP_CODE(i32) #1

declare dso_local i32 @EVENT_TRB_LEN(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @xhci_requires_manual_halt_cleanup(%struct.xhci_hcd*, %struct.xhci_ep_ctx*, i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @finish_td(%struct.xhci_hcd*, %struct.xhci_td*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
