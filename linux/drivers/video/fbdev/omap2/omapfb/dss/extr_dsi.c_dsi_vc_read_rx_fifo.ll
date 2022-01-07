; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_read_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_read_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"RX fifo empty when trying to read.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"\09header: %08x\0A\00", align 1
@MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT = common dso_local global i64 0, align 8
@DSS_DSI_CONTENT_GENERIC = common dso_local global i32 0, align 4
@MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_1BYTE = common dso_local global i64 0, align 8
@MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"\09%s short response, 1 byte: %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"GENERIC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DCS\00", align 1
@MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_2BYTE = common dso_local global i64 0, align 8
@MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"\09%s short response, 2 byte: %04x\0A\00", align 1
@MIPI_DSI_RX_GENERIC_LONG_READ_RESPONSE = common dso_local global i64 0, align 8
@MIPI_DSI_RX_DCS_LONG_READ_RESPONSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"\09%s long response, len %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\09\09%02x %02x %02x %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\09unknown datatype 0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"dsi_vc_read_rx_fifo(ch %d type %s) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, i64*, i32, i32)* @dsi_vc_read_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_read_rx_fifo(%struct.platform_device* %0, i32 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsi_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %23 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %22)
  store %struct.dsi_data* %23, %struct.dsi_data** %12, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @DSI_VC_CTRL(i32 %25)
  %27 = call i64 @REG_GET(%struct.platform_device* %24, i32 %26, i32 20, i32 20)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %15, align 4
  br label %241

33:                                               ; preds = %5
  %34 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @DSI_VC_SHORT_PACKET_HEADER(i32 %35)
  %37 = call i32 @dsi_read_reg(%struct.platform_device* %34, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %39 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* %13, align 4
  %47 = call i8* @FLD_GET(i32 %46, i32 5, i32 0)
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = call i8* @FLD_GET(i32 %53, i32 23, i32 8)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @dsi_show_rx_ack_with_err(i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %15, align 4
  br label %241

60:                                               ; preds = %45
  %61 = load i64, i64* %14, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i64, i64* @MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_1BYTE, align 8
  br label %69

67:                                               ; preds = %60
  %68 = load i64, i64* @MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i64 [ %66, %65 ], [ %68, %67 ]
  %71 = icmp eq i64 %61, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = call i8* @FLD_GET(i32 %73, i32 15, i32 8)
  %75 = ptrtoint i8* %74 to i64
  store i64 %75, i64* %17, align 8
  %76 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %77 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %86 = load i64, i64* %17, align 8
  %87 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %85, i64 %86)
  br label %88

88:                                               ; preds = %80, %72
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %15, align 4
  br label %241

94:                                               ; preds = %88
  %95 = load i64, i64* %17, align 8
  %96 = load i64*, i64** %9, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  store i64 %95, i64* %97, align 8
  store i32 1, i32* %6, align 4
  br label %250

98:                                               ; preds = %69
  %99 = load i64, i64* %14, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i64, i64* @MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_2BYTE, align 8
  br label %107

105:                                              ; preds = %98
  %106 = load i64, i64* @MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE, align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i64 [ %104, %103 ], [ %106, %105 ]
  %109 = icmp eq i64 %99, %108
  br i1 %109, label %110, label %144

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = call i8* @FLD_GET(i32 %111, i32 23, i32 8)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %115 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %124 = load i32, i32* %18, align 4
  %125 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %118, %110
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %15, align 4
  br label %241

132:                                              ; preds = %126
  %133 = load i32, i32* %18, align 4
  %134 = and i32 %133, 255
  %135 = sext i32 %134 to i64
  %136 = load i64*, i64** %9, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* %18, align 4
  %139 = ashr i32 %138, 8
  %140 = and i32 %139, 255
  %141 = sext i32 %140 to i64
  %142 = load i64*, i64** %9, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  store i64 %141, i64* %143, align 8
  store i32 2, i32* %6, align 4
  br label %250

144:                                              ; preds = %107
  %145 = load i64, i64* %14, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i64, i64* @MIPI_DSI_RX_GENERIC_LONG_READ_RESPONSE, align 8
  br label %153

151:                                              ; preds = %144
  %152 = load i64, i64* @MIPI_DSI_RX_DCS_LONG_READ_RESPONSE, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i64 [ %150, %149 ], [ %152, %151 ]
  %155 = icmp eq i64 %145, %154
  br i1 %155, label %156, label %236

156:                                              ; preds = %153
  %157 = load i32, i32* %13, align 4
  %158 = call i8* @FLD_GET(i32 %157, i32 23, i32 8)
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %20, align 4
  %160 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %161 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %170 = load i32, i32* %20, align 4
  %171 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %169, i32 %170)
  br label %172

172:                                              ; preds = %164, %156
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %15, align 4
  br label %241

179:                                              ; preds = %172
  store i32 0, i32* %19, align 4
  br label %180

180:                                              ; preds = %233, %179
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, 2
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %234

185:                                              ; preds = %180
  %186 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @DSI_VC_SHORT_PACKET_HEADER(i32 %187)
  %189 = call i32 @dsi_read_reg(%struct.platform_device* %186, i32 %188)
  store i32 %189, i32* %13, align 4
  %190 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %191 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %185
  %195 = load i32, i32* %13, align 4
  %196 = ashr i32 %195, 0
  %197 = and i32 %196, 255
  %198 = load i32, i32* %13, align 4
  %199 = ashr i32 %198, 8
  %200 = and i32 %199, 255
  %201 = load i32, i32* %13, align 4
  %202 = ashr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = load i32, i32* %13, align 4
  %205 = ashr i32 %204, 24
  %206 = and i32 %205, 255
  %207 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %197, i32 %200, i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %194, %185
  store i32 0, i32* %21, align 4
  br label %209

209:                                              ; preds = %230, %208
  %210 = load i32, i32* %21, align 4
  %211 = icmp slt i32 %210, 4
  br i1 %211, label %212, label %233

212:                                              ; preds = %209
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %20, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %212
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %21, align 4
  %219 = mul nsw i32 %218, 8
  %220 = ashr i32 %217, %219
  %221 = and i32 %220, 255
  %222 = sext i32 %221 to i64
  %223 = load i64*, i64** %9, align 8
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  store i64 %222, i64* %226, align 8
  br label %227

227:                                              ; preds = %216, %212
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %21, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %21, align 4
  br label %209

233:                                              ; preds = %209
  br label %180

234:                                              ; preds = %180
  %235 = load i32, i32* %20, align 4
  store i32 %235, i32* %6, align 4
  br label %250

236:                                              ; preds = %153
  %237 = load i64, i64* %14, align 8
  %238 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %237)
  %239 = load i32, i32* @EIO, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %15, align 4
  br label %241

241:                                              ; preds = %236, %176, %129, %91, %52, %29
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %248 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %242, i8* %247)
  %249 = load i32, i32* %15, align 4
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %241, %234, %132, %94
  %251 = load i32, i32* %6, align 4
  ret i32 %251
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i64 @REG_GET(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @DSI_VC_SHORT_PACKET_HEADER(i32) #1

declare dso_local i32 @DSSDBG(i8*, ...) #1

declare dso_local i8* @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dsi_show_rx_ack_with_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
