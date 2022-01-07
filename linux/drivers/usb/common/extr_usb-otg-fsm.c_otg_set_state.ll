; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_fsm = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Set state: %s\0A\00", align 1
@PROTO_UNDEF = common dso_local global i32 0, align 4
@B_SE0_SRP = common dso_local global i32 0, align 4
@B_SRP_FAIL = common dso_local global i32 0, align 4
@PROTO_GADGET = common dso_local global i32 0, align 4
@PROTO_HOST = common dso_local global i32 0, align 4
@B_ASE0_BRST = common dso_local global i32 0, align 4
@A_WAIT_VRISE = common dso_local global i32 0, align 4
@A_WAIT_BCON = common dso_local global i32 0, align 4
@A_WAIT_ENUM = common dso_local global i32 0, align 4
@A_AIDL_BDIS = common dso_local global i32 0, align 4
@A_BIDL_ADIS = common dso_local global i32 0, align 4
@A_WAIT_VFALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.otg_fsm*, i32)* @otg_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otg_set_state(%struct.otg_fsm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.otg_fsm*, align 8
  %5 = alloca i32, align 4
  store %struct.otg_fsm* %0, %struct.otg_fsm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %7 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %228

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @usb_otg_state_string(i32 %15)
  %17 = call i32 @VDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %19 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %20 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @otg_leave_state(%struct.otg_fsm* %18, i32 %23)
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %219 [
    i32 131, label %26
    i32 129, label %43
    i32 130, label %54
    i32 128, label %64
    i32 132, label %79
    i32 139, label %104
    i32 133, label %118
    i32 135, label %131
    i32 140, label %144
    i32 137, label %170
    i32 138, label %183
    i32 134, label %196
    i32 136, label %209
  ]

26:                                               ; preds = %14
  %27 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %28 = call i32 @otg_drv_vbus(%struct.otg_fsm* %27, i32 0)
  %29 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %30 = call i32 @otg_chrg_vbus(%struct.otg_fsm* %29, i32 0)
  %31 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %32 = call i32 @otg_loc_conn(%struct.otg_fsm* %31, i32 0)
  %33 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %34 = call i32 @otg_loc_sof(%struct.otg_fsm* %33, i32 0)
  %35 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %36 = call i32 @otg_start_adp_sns(%struct.otg_fsm* %35)
  %37 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %38 = load i32, i32* @PROTO_UNDEF, align 4
  %39 = call i32 @otg_set_protocol(%struct.otg_fsm* %37, i32 %38)
  %40 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %41 = load i32, i32* @B_SE0_SRP, align 4
  %42 = call i32 @otg_add_timer(%struct.otg_fsm* %40, i32 %41)
  br label %220

43:                                               ; preds = %14
  %44 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %45 = call i32 @otg_start_pulse(%struct.otg_fsm* %44)
  %46 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %47 = call i32 @otg_loc_sof(%struct.otg_fsm* %46, i32 0)
  %48 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %49 = load i32, i32* @PROTO_UNDEF, align 4
  %50 = call i32 @otg_set_protocol(%struct.otg_fsm* %48, i32 %49)
  %51 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %52 = load i32, i32* @B_SRP_FAIL, align 4
  %53 = call i32 @otg_add_timer(%struct.otg_fsm* %51, i32 %52)
  br label %220

54:                                               ; preds = %14
  %55 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %56 = call i32 @otg_chrg_vbus(%struct.otg_fsm* %55, i32 0)
  %57 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %58 = call i32 @otg_loc_sof(%struct.otg_fsm* %57, i32 0)
  %59 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %60 = load i32, i32* @PROTO_GADGET, align 4
  %61 = call i32 @otg_set_protocol(%struct.otg_fsm* %59, i32 %60)
  %62 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %63 = call i32 @otg_loc_conn(%struct.otg_fsm* %62, i32 1)
  br label %220

64:                                               ; preds = %14
  %65 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %66 = call i32 @otg_chrg_vbus(%struct.otg_fsm* %65, i32 0)
  %67 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %68 = call i32 @otg_loc_conn(%struct.otg_fsm* %67, i32 0)
  %69 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %70 = call i32 @otg_loc_sof(%struct.otg_fsm* %69, i32 0)
  %71 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %72 = load i32, i32* @PROTO_HOST, align 4
  %73 = call i32 @otg_set_protocol(%struct.otg_fsm* %71, i32 %72)
  %74 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %75 = load i32, i32* @B_ASE0_BRST, align 4
  %76 = call i32 @otg_add_timer(%struct.otg_fsm* %74, i32 %75)
  %77 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %78 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %77, i32 0, i32 4
  store i32 0, i32* %78, align 8
  br label %220

79:                                               ; preds = %14
  %80 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %81 = call i32 @otg_chrg_vbus(%struct.otg_fsm* %80, i32 0)
  %82 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %83 = call i32 @otg_loc_conn(%struct.otg_fsm* %82, i32 0)
  %84 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %85 = call i32 @otg_loc_sof(%struct.otg_fsm* %84, i32 1)
  %86 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %87 = load i32, i32* @PROTO_HOST, align 4
  %88 = call i32 @otg_set_protocol(%struct.otg_fsm* %86, i32 %87)
  %89 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %90 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %95 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @usb_bus_start_enum(%struct.TYPE_4__* %93, i32 %100)
  %102 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %103 = call i32 @otg_start_hnp_polling(%struct.otg_fsm* %102)
  br label %220

104:                                              ; preds = %14
  %105 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %106 = call i32 @otg_drv_vbus(%struct.otg_fsm* %105, i32 0)
  %107 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %108 = call i32 @otg_chrg_vbus(%struct.otg_fsm* %107, i32 0)
  %109 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %110 = call i32 @otg_loc_conn(%struct.otg_fsm* %109, i32 0)
  %111 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %112 = call i32 @otg_loc_sof(%struct.otg_fsm* %111, i32 0)
  %113 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %114 = call i32 @otg_start_adp_prb(%struct.otg_fsm* %113)
  %115 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %116 = load i32, i32* @PROTO_HOST, align 4
  %117 = call i32 @otg_set_protocol(%struct.otg_fsm* %115, i32 %116)
  br label %220

118:                                              ; preds = %14
  %119 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %120 = call i32 @otg_drv_vbus(%struct.otg_fsm* %119, i32 1)
  %121 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %122 = call i32 @otg_loc_conn(%struct.otg_fsm* %121, i32 0)
  %123 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %124 = call i32 @otg_loc_sof(%struct.otg_fsm* %123, i32 0)
  %125 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %126 = load i32, i32* @PROTO_HOST, align 4
  %127 = call i32 @otg_set_protocol(%struct.otg_fsm* %125, i32 %126)
  %128 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %129 = load i32, i32* @A_WAIT_VRISE, align 4
  %130 = call i32 @otg_add_timer(%struct.otg_fsm* %128, i32 %129)
  br label %220

131:                                              ; preds = %14
  %132 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %133 = call i32 @otg_drv_vbus(%struct.otg_fsm* %132, i32 1)
  %134 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %135 = call i32 @otg_loc_conn(%struct.otg_fsm* %134, i32 0)
  %136 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %137 = call i32 @otg_loc_sof(%struct.otg_fsm* %136, i32 0)
  %138 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %139 = load i32, i32* @PROTO_HOST, align 4
  %140 = call i32 @otg_set_protocol(%struct.otg_fsm* %138, i32 %139)
  %141 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %142 = load i32, i32* @A_WAIT_BCON, align 4
  %143 = call i32 @otg_add_timer(%struct.otg_fsm* %141, i32 %142)
  br label %220

144:                                              ; preds = %14
  %145 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %146 = call i32 @otg_drv_vbus(%struct.otg_fsm* %145, i32 1)
  %147 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %148 = call i32 @otg_loc_conn(%struct.otg_fsm* %147, i32 0)
  %149 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %150 = call i32 @otg_loc_sof(%struct.otg_fsm* %149, i32 1)
  %151 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %152 = load i32, i32* @PROTO_HOST, align 4
  %153 = call i32 @otg_set_protocol(%struct.otg_fsm* %151, i32 %152)
  %154 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %155 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %144
  %159 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %160 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158, %144
  %164 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %165 = load i32, i32* @A_WAIT_ENUM, align 4
  %166 = call i32 @otg_add_timer(%struct.otg_fsm* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %158
  %168 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %169 = call i32 @otg_start_hnp_polling(%struct.otg_fsm* %168)
  br label %220

170:                                              ; preds = %14
  %171 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %172 = call i32 @otg_drv_vbus(%struct.otg_fsm* %171, i32 1)
  %173 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %174 = call i32 @otg_loc_conn(%struct.otg_fsm* %173, i32 0)
  %175 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %176 = call i32 @otg_loc_sof(%struct.otg_fsm* %175, i32 0)
  %177 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %178 = load i32, i32* @PROTO_HOST, align 4
  %179 = call i32 @otg_set_protocol(%struct.otg_fsm* %177, i32 %178)
  %180 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %181 = load i32, i32* @A_AIDL_BDIS, align 4
  %182 = call i32 @otg_add_timer(%struct.otg_fsm* %180, i32 %181)
  br label %220

183:                                              ; preds = %14
  %184 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %185 = call i32 @otg_loc_sof(%struct.otg_fsm* %184, i32 0)
  %186 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %187 = load i32, i32* @PROTO_GADGET, align 4
  %188 = call i32 @otg_set_protocol(%struct.otg_fsm* %186, i32 %187)
  %189 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %190 = call i32 @otg_drv_vbus(%struct.otg_fsm* %189, i32 1)
  %191 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %192 = call i32 @otg_loc_conn(%struct.otg_fsm* %191, i32 1)
  %193 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %194 = load i32, i32* @A_BIDL_ADIS, align 4
  %195 = call i32 @otg_add_timer(%struct.otg_fsm* %193, i32 %194)
  br label %220

196:                                              ; preds = %14
  %197 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %198 = call i32 @otg_drv_vbus(%struct.otg_fsm* %197, i32 0)
  %199 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %200 = call i32 @otg_loc_conn(%struct.otg_fsm* %199, i32 0)
  %201 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %202 = call i32 @otg_loc_sof(%struct.otg_fsm* %201, i32 0)
  %203 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %204 = load i32, i32* @PROTO_HOST, align 4
  %205 = call i32 @otg_set_protocol(%struct.otg_fsm* %203, i32 %204)
  %206 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %207 = load i32, i32* @A_WAIT_VFALL, align 4
  %208 = call i32 @otg_add_timer(%struct.otg_fsm* %206, i32 %207)
  br label %220

209:                                              ; preds = %14
  %210 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %211 = call i32 @otg_drv_vbus(%struct.otg_fsm* %210, i32 0)
  %212 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %213 = call i32 @otg_loc_conn(%struct.otg_fsm* %212, i32 0)
  %214 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %215 = call i32 @otg_loc_sof(%struct.otg_fsm* %214, i32 0)
  %216 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %217 = load i32, i32* @PROTO_UNDEF, align 4
  %218 = call i32 @otg_set_protocol(%struct.otg_fsm* %216, i32 %217)
  br label %220

219:                                              ; preds = %14
  br label %220

220:                                              ; preds = %219, %209, %196, %183, %170, %167, %131, %118, %104, %79, %64, %54, %43, %26
  %221 = load i32, i32* %5, align 4
  %222 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %223 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %222, i32 0, i32 1
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  store i32 %221, i32* %225, align 8
  %226 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %227 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %220, %13
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @VDBG(i8*, i32) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

declare dso_local i32 @otg_leave_state(%struct.otg_fsm*, i32) #1

declare dso_local i32 @otg_drv_vbus(%struct.otg_fsm*, i32) #1

declare dso_local i32 @otg_chrg_vbus(%struct.otg_fsm*, i32) #1

declare dso_local i32 @otg_loc_conn(%struct.otg_fsm*, i32) #1

declare dso_local i32 @otg_loc_sof(%struct.otg_fsm*, i32) #1

declare dso_local i32 @otg_start_adp_sns(%struct.otg_fsm*) #1

declare dso_local i32 @otg_set_protocol(%struct.otg_fsm*, i32) #1

declare dso_local i32 @otg_add_timer(%struct.otg_fsm*, i32) #1

declare dso_local i32 @otg_start_pulse(%struct.otg_fsm*) #1

declare dso_local i32 @usb_bus_start_enum(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @otg_start_hnp_polling(%struct.otg_fsm*) #1

declare dso_local i32 @otg_start_adp_prb(%struct.otg_fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
