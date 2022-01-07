; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_set_mac_addr_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_set_mac_addr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAC_ADDR_IDX = common dso_local global i32 0, align 4
@MAC_ADDR_MW = common dso_local global i32 0, align 4
@MAC_ADDR_IDX_SHIFT = common dso_local global i32 0, align 4
@MAC_ADDR_E = common dso_local global i32 0, align 4
@MAC_ADDR_DATA = common dso_local global i32 0, align 4
@CAM_OUT_ROUTE_NIC = common dso_local global i32 0, align 4
@CAM_OUT_FUNC_SHIFT = common dso_local global i32 0, align 4
@CAM_OUT_CQ_ID_SHIFT = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@CAM_OUT_RV = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Address type %d not yet supported.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32*, i32, i32)* @ql_set_mac_addr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_set_mac_addr_reg(%struct.ql_adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %246 [
    i32 129, label %18
    i32 131, label %103
    i32 128, label %221
    i32 130, label %245
  ]

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 24
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %35, %39
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %46 = load i32, i32* @MAC_ADDR_IDX, align 4
  %47 = load i32, i32* @MAC_ADDR_MW, align 4
  %48 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %45, i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %18
  br label %257

52:                                               ; preds = %18
  %53 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %54 = load i32, i32* @MAC_ADDR_IDX, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %55, %59
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MAC_ADDR_E, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @ql_write32(%struct.ql_adapter* %53, i32 %54, i32 %64)
  %66 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %67 = load i32, i32* @MAC_ADDR_DATA, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @ql_write32(%struct.ql_adapter* %66, i32 %67, i32 %68)
  %70 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %71 = load i32, i32* @MAC_ADDR_IDX, align 4
  %72 = load i32, i32* @MAC_ADDR_MW, align 4
  %73 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %70, i32 %71, i32 %72, i32 0)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %52
  br label %257

77:                                               ; preds = %52
  %78 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %79 = load i32, i32* @MAC_ADDR_IDX, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %80, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @MAC_ADDR_E, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @ql_write32(%struct.ql_adapter* %78, i32 %79, i32 %89)
  %91 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %92 = load i32, i32* @MAC_ADDR_DATA, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ql_write32(%struct.ql_adapter* %91, i32 %92, i32 %93)
  %95 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %96 = load i32, i32* @MAC_ADDR_IDX, align 4
  %97 = load i32, i32* @MAC_ADDR_MW, align 4
  %98 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %95, i32 %96, i32 %97, i32 0)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %77
  br label %257

102:                                              ; preds = %77
  br label %256

103:                                              ; preds = %4
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 8
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %107, %110
  store i32 %111, i32* %14, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 24
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 16
  %120 = or i32 %115, %119
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 8
  %125 = or i32 %120, %124
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %125, %128
  store i32 %129, i32* %15, align 4
  %130 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %131 = load i32, i32* @MAC_ADDR_IDX, align 4
  %132 = load i32, i32* @MAC_ADDR_MW, align 4
  %133 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %130, i32 %131, i32 %132, i32 0)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %103
  br label %257

137:                                              ; preds = %103
  %138 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %139 = load i32, i32* @MAC_ADDR_IDX, align 4
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = or i32 %140, %144
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @ql_write32(%struct.ql_adapter* %138, i32 %139, i32 %147)
  %149 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %150 = load i32, i32* @MAC_ADDR_DATA, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @ql_write32(%struct.ql_adapter* %149, i32 %150, i32 %151)
  %153 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %154 = load i32, i32* @MAC_ADDR_IDX, align 4
  %155 = load i32, i32* @MAC_ADDR_MW, align 4
  %156 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %153, i32 %154, i32 %155, i32 0)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %137
  br label %257

160:                                              ; preds = %137
  %161 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %162 = load i32, i32* @MAC_ADDR_IDX, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = or i32 %163, %167
  %169 = load i32, i32* %7, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @ql_write32(%struct.ql_adapter* %161, i32 %162, i32 %170)
  %172 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %173 = load i32, i32* @MAC_ADDR_DATA, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @ql_write32(%struct.ql_adapter* %172, i32 %173, i32 %174)
  %176 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %177 = load i32, i32* @MAC_ADDR_IDX, align 4
  %178 = load i32, i32* @MAC_ADDR_MW, align 4
  %179 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %176, i32 %177, i32 %178, i32 0)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %160
  br label %257

183:                                              ; preds = %160
  %184 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %185 = load i32, i32* @MAC_ADDR_IDX, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %189 = shl i32 %187, %188
  %190 = or i32 %186, %189
  %191 = load i32, i32* %7, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @ql_write32(%struct.ql_adapter* %184, i32 %185, i32 %192)
  %194 = load i32, i32* @CAM_OUT_ROUTE_NIC, align 4
  %195 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %196 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @CAM_OUT_FUNC_SHIFT, align 4
  %199 = shl i32 %197, %198
  %200 = or i32 %194, %199
  %201 = load i32, i32* @CAM_OUT_CQ_ID_SHIFT, align 4
  %202 = shl i32 0, %201
  %203 = or i32 %200, %202
  store i32 %203, i32* %13, align 4
  %204 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %205 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %204, i32 0, i32 1
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %183
  %213 = load i32, i32* @CAM_OUT_RV, align 4
  %214 = load i32, i32* %13, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %212, %183
  %217 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %218 = load i32, i32* @MAC_ADDR_DATA, align 4
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @ql_write32(%struct.ql_adapter* %217, i32 %218, i32 %219)
  br label %256

221:                                              ; preds = %4
  %222 = load i32*, i32** %6, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %16, align 4
  %225 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %226 = load i32, i32* @MAC_ADDR_IDX, align 4
  %227 = load i32, i32* @MAC_ADDR_MW, align 4
  %228 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %225, i32 %226, i32 %227, i32 0)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %221
  br label %257

232:                                              ; preds = %221
  %233 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %234 = load i32, i32* @MAC_ADDR_IDX, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %238 = shl i32 %236, %237
  %239 = or i32 %235, %238
  %240 = load i32, i32* %7, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* %16, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @ql_write32(%struct.ql_adapter* %233, i32 %234, i32 %243)
  br label %256

245:                                              ; preds = %4
  br label %246

246:                                              ; preds = %4, %245
  %247 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %248 = load i32, i32* @ifup, align 4
  %249 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %250 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %249, i32 0, i32 1
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = call i32 @netif_crit(%struct.ql_adapter* %247, i32 %248, %struct.TYPE_2__* %251, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* @EPERM, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %10, align 4
  br label %256

256:                                              ; preds = %246, %232, %216, %102
  br label %257

257:                                              ; preds = %256, %231, %182, %159, %136, %101, %76, %51
  %258 = load i32, i32* %10, align 4
  ret i32 %258
}

declare dso_local i32 @ql_wait_reg_rdy(%struct.ql_adapter*, i32, i32, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @netif_crit(%struct.ql_adapter*, i32, %struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
