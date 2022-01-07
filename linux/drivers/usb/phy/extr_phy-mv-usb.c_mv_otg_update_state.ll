; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_otg = type { %struct.TYPE_4__, %struct.mv_otg_ctrl }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mv_otg_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@A_WAIT_BCON_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_otg*)* @mv_otg_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_otg_update_state(%struct.mv_otg* %0) #0 {
  %2 = alloca %struct.mv_otg*, align 8
  %3 = alloca %struct.mv_otg_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.mv_otg* %0, %struct.mv_otg** %2, align 8
  %5 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %6 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %5, i32 0, i32 1
  store %struct.mv_otg_ctrl* %6, %struct.mv_otg_ctrl** %3, align 8
  %7 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %8 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %258 [
    i32 128, label %14
    i32 130, label %20
    i32 129, label %44
    i32 135, label %61
    i32 131, label %95
    i32 133, label %107
    i32 136, label %173
    i32 132, label %207
    i32 134, label %234
  ]

14:                                               ; preds = %1
  %15 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %16 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 130, i32* %19, align 4
  br label %20

20:                                               ; preds = %1, %14
  %21 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %27 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 135, i32* %30, align 4
  br label %43

31:                                               ; preds = %20
  %32 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %38 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 129, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %31
  br label %43

43:                                               ; preds = %42, %25
  br label %259

44:                                               ; preds = %1
  %45 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %46 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %51 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49, %44
  %55 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %56 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 130, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %49
  br label %259

61:                                               ; preds = %1
  %62 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %68 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 130, i32* %71, align 4
  br label %94

72:                                               ; preds = %61
  %73 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %74 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %72
  %78 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %79 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %84 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82, %77
  %88 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %89 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 131, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %82, %72
  br label %94

94:                                               ; preds = %93, %66
  br label %259

95:                                               ; preds = %1
  %96 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %97 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %102 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 133, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %95
  br label %259

107:                                              ; preds = %1
  %108 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %109 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %107
  %113 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %114 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %119 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117, %112, %107
  %123 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %124 = load i32, i32* @A_WAIT_BCON_TIMER, align 4
  %125 = call i32 @mv_otg_cancel_timer(%struct.mv_otg* %123, i32 %124)
  %126 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %127 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %127, i32 0, i32 7
  store i32 0, i32* %128, align 4
  %129 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %130 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 132, i32* %133, align 4
  %134 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %135 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %134, i32 0, i32 3
  store i32 0, i32* %135, align 4
  br label %172

136:                                              ; preds = %117
  %137 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %138 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %136
  %142 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %143 = load i32, i32* @A_WAIT_BCON_TIMER, align 4
  %144 = call i32 @mv_otg_cancel_timer(%struct.mv_otg* %142, i32 %143)
  %145 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %146 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %146, i32 0, i32 7
  store i32 0, i32* %147, align 4
  %148 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %149 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i32 134, i32* %152, align 4
  br label %171

153:                                              ; preds = %136
  %154 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %155 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %160 = load i32, i32* @A_WAIT_BCON_TIMER, align 4
  %161 = call i32 @mv_otg_cancel_timer(%struct.mv_otg* %159, i32 %160)
  %162 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %163 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %163, i32 0, i32 7
  store i32 0, i32* %164, align 4
  %165 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %166 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i32 136, i32* %169, align 4
  br label %170

170:                                              ; preds = %158, %153
  br label %171

171:                                              ; preds = %170, %141
  br label %172

172:                                              ; preds = %171, %122
  br label %259

173:                                              ; preds = %1
  %174 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %175 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %173
  %179 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %180 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %185 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183, %178, %173
  %189 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %190 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i32 133, i32* %193, align 4
  br label %206

194:                                              ; preds = %183
  %195 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %196 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %194
  %200 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %201 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  store i32 134, i32* %204, align 4
  br label %205

205:                                              ; preds = %199, %194
  br label %206

206:                                              ; preds = %205, %188
  br label %259

207:                                              ; preds = %1
  %208 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %209 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %227, label %212

212:                                              ; preds = %207
  %213 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %214 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %219 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %217, %212
  %223 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %224 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222, %217, %207
  %228 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %229 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  store i32 135, i32* %232, align 4
  br label %233

233:                                              ; preds = %227, %222
  br label %259

234:                                              ; preds = %1
  %235 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %236 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %249, label %239

239:                                              ; preds = %234
  %240 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %241 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  %245 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %246 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %244, %239, %234
  %250 = load %struct.mv_otg_ctrl*, %struct.mv_otg_ctrl** %3, align 8
  %251 = getelementptr inbounds %struct.mv_otg_ctrl, %struct.mv_otg_ctrl* %250, i32 0, i32 0
  store i32 0, i32* %251, align 4
  %252 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %253 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  store i32 132, i32* %256, align 4
  br label %257

257:                                              ; preds = %249, %244
  br label %259

258:                                              ; preds = %1
  br label %259

259:                                              ; preds = %258, %257, %233, %206, %172, %106, %94, %60, %43
  ret void
}

declare dso_local i32 @mv_otg_cancel_timer(%struct.mv_otg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
