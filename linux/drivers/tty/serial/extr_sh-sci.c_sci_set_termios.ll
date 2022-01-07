; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32 }
%struct.sci_port = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.plat_sci_reg = type { i64 }

@SCSMR_ASYNC = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@SCSMR_CHR = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@SCSMR_PE = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@SCSMR_ODD = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@SCSMR_STOP = common dso_local global i32 0, align 4
@SCI_NUM_CLKS = common dso_local global i32 0, align 4
@SCI_SCK = common dso_local global i64 0, align 8
@PORT_SCIFA = common dso_local global i64 0, align 8
@PORT_SCIFB = common dso_local global i64 0, align 8
@SCSCR_CKE1 = common dso_local global i32 0, align 4
@SCCKS_CKS = common dso_local global i32 0, align 4
@SCI_SCIF_CLK = common dso_local global i64 0, align 8
@SCDL = common dso_local global i32 0, align 4
@SCI_BRG_INT = common dso_local global i64 0, align 8
@SCCKS_XIN = common dso_local global i32 0, align 4
@SCI_FCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Using clk %pC for %u%+d bps\0A\00", align 1
@SCCKS = common dso_local global i32 0, align 4
@SCSMR_SRC_5 = common dso_local global i32 0, align 4
@SCSMR_SRC_7 = common dso_local global i32 0, align 4
@SCSMR_SRC_11 = common dso_local global i32 0, align 4
@SCSMR_SRC_13 = common dso_local global i32 0, align 4
@SCSMR_SRC_16 = common dso_local global i32 0, align 4
@SCSMR_SRC_17 = common dso_local global i32 0, align 4
@SCSMR_SRC_19 = common dso_local global i32 0, align 4
@SCSMR_SRC_27 = common dso_local global i32 0, align 4
@SCSCR = common dso_local global i32 0, align 4
@SCSMR = common dso_local global i32 0, align 4
@SCBRR = common dso_local global i32 0, align 4
@HSSRR = common dso_local global i32 0, align 4
@HSCIF_SRE = common dso_local global i32 0, align 4
@HSCIF_SRHP_SHIFT = common dso_local global i32 0, align 4
@HSCIF_SRHP_MASK = common dso_local global i32 0, align 4
@HSCIF_SRDE = common dso_local global i32 0, align 4
@SCSCR_CKE0 = common dso_local global i32 0, align 4
@SCSMR_CKEDG = common dso_local global i32 0, align 4
@SCSMR_SRC_MASK = common dso_local global i32 0, align 4
@SCSMR_CKS = common dso_local global i32 0, align 4
@UPSTAT_AUTOCTS = common dso_local global i32 0, align 4
@SCFCR = common dso_local global i32 0, align 4
@UPF_HARD_FLOW = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@SCFCR_RFRST = common dso_local global i16 0, align 2
@SCFCR_TFRST = common dso_local global i16 0, align 2
@SCSCR_RE = common dso_local global i32 0, align 4
@SCSCR_TE = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sci_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sci_port*, align 8
  %22 = alloca %struct.plat_sci_reg*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %33 = load i32, i32* @SCSMR_ASYNC, align 4
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 255, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 15, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 255, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 15, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %34)
  store %struct.sci_port* %35, %struct.sci_port** %21, align 8
  %36 = load i32, i32* @INT_MAX, align 4
  store i32 %36, i32* %23, align 4
  store i64 0, i64* %25, align 8
  store i32 -1, i32* %26, align 4
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CSIZE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %47

43:                                               ; preds = %3
  %44 = load i32, i32* @SCSMR_CHR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %3
  %48 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %49 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PARENB, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @SCSMR_PE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PARODD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @SCSMR_PE, align 4
  %67 = load i32, i32* @SCSMR_ODD, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %73 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CSTOPB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @SCSMR_STOP, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %89 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %90 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %91 = call i32 @uart_get_baud_rate(%struct.uart_port* %88, %struct.ktermios* %89, %struct.ktermios* %90, i32 0, i64 115200)
  store i32 %91, i32* %7, align 4
  br label %264

92:                                               ; preds = %82
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %107, %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @SCI_NUM_CLKS, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load i64, i64* %25, align 8
  %99 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %100 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %99, i32 0, i32 7
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @max(i64 %98, i32 %105)
  store i64 %106, i64* %25, align 8
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %93

110:                                              ; preds = %93
  %111 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %112 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %113 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %114 = load i64, i64* %25, align 8
  %115 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %116 = call i64 @min_sr(%struct.sci_port* %115)
  %117 = udiv i64 %114, %116
  %118 = call i32 @uart_get_baud_rate(%struct.uart_port* %111, %struct.ktermios* %112, %struct.ktermios* %113, i32 0, i64 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %110
  br label %264

122:                                              ; preds = %110
  %123 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %124 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @SCI_SCK, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %163

130:                                              ; preds = %122
  %131 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @PORT_SCIFA, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %163

136:                                              ; preds = %130
  %137 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %138 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PORT_SCIFB, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %136
  %143 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @sci_sck_calc(%struct.sci_port* %143, i32 %144, i32* %19)
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @abs(i32 %146) #3
  %148 = load i32, i32* %23, align 4
  %149 = call i32 @abs(i32 %148) #3
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %142
  %152 = load i64, i64* @SCI_SCK, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %26, align 4
  %154 = load i32, i32* @SCSCR_CKE1, align 4
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* @SCCKS_CKS, align 4
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %24, align 4
  store i32 %156, i32* %23, align 4
  %157 = load i32, i32* %19, align 4
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %24, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %151
  br label %264

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161, %142
  br label %163

163:                                              ; preds = %162, %136, %130, %122
  %164 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %165 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %164, i32 0, i32 7
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @SCI_SCIF_CLK, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %205

171:                                              ; preds = %163
  %172 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %173 = load i32, i32* @SCDL, align 4
  %174 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %172, i32 %173)
  %175 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %171
  %179 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %182 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %181, i32 0, i32 7
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @SCI_SCIF_CLK, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @sci_brg_calc(%struct.sci_port* %179, i32 %180, i32 %186, i32* %20, i32* %19)
  store i32 %187, i32* %24, align 4
  %188 = load i32, i32* %24, align 4
  %189 = call i32 @abs(i32 %188) #3
  %190 = load i32, i32* %23, align 4
  %191 = call i32 @abs(i32 %190) #3
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %178
  %194 = load i64, i64* @SCI_SCIF_CLK, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %26, align 4
  %196 = load i32, i32* @SCSCR_CKE1, align 4
  store i32 %196, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %197 = load i32, i32* %24, align 4
  store i32 %197, i32* %23, align 4
  %198 = load i32, i32* %20, align 4
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %19, align 4
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %24, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %193
  br label %264

203:                                              ; preds = %193
  br label %204

204:                                              ; preds = %203, %178
  br label %205

205:                                              ; preds = %204, %171, %163
  %206 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %207 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %206, i32 0, i32 7
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @SCI_BRG_INT, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %248

213:                                              ; preds = %205
  %214 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %215 = load i32, i32* @SCDL, align 4
  %216 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %214, i32 %215)
  %217 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %248

220:                                              ; preds = %213
  %221 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %224 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %223, i32 0, i32 7
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @SCI_BRG_INT, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @sci_brg_calc(%struct.sci_port* %221, i32 %222, i32 %228, i32* %20, i32* %19)
  store i32 %229, i32* %24, align 4
  %230 = load i32, i32* %24, align 4
  %231 = call i32 @abs(i32 %230) #3
  %232 = load i32, i32* %23, align 4
  %233 = call i32 @abs(i32 %232) #3
  %234 = icmp slt i32 %231, %233
  br i1 %234, label %235, label %247

235:                                              ; preds = %220
  %236 = load i64, i64* @SCI_BRG_INT, align 8
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %26, align 4
  %238 = load i32, i32* @SCSCR_CKE1, align 4
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* @SCCKS_XIN, align 4
  store i32 %239, i32* %16, align 4
  %240 = load i32, i32* %24, align 4
  store i32 %240, i32* %23, align 4
  %241 = load i32, i32* %20, align 4
  store i32 %241, i32* %15, align 4
  %242 = load i32, i32* %19, align 4
  store i32 %242, i32* %14, align 4
  %243 = load i32, i32* %23, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %235
  br label %264

246:                                              ; preds = %235
  br label %247

247:                                              ; preds = %246, %220
  br label %248

248:                                              ; preds = %247, %213, %205
  %249 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @sci_scbrr_calc(%struct.sci_port* %249, i32 %250, i32* %17, i32* %19, i32* %18)
  store i32 %251, i32* %24, align 4
  %252 = load i32, i32* %24, align 4
  %253 = call i32 @abs(i32 %252) #3
  %254 = load i32, i32* %23, align 4
  %255 = call i32 @abs(i32 %254) #3
  %256 = icmp slt i32 %253, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %248
  %258 = load i32, i32* @SCI_FCK, align 4
  store i32 %258, i32* %26, align 4
  store i32 0, i32* %9, align 4
  %259 = load i32, i32* %24, align 4
  store i32 %259, i32* %23, align 4
  %260 = load i32, i32* %17, align 4
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %19, align 4
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %18, align 4
  store i32 %262, i32* %13, align 4
  br label %263

263:                                              ; preds = %257, %248
  br label %264

264:                                              ; preds = %263, %245, %202, %160, %121, %87
  %265 = load i32, i32* %26, align 4
  %266 = icmp sge i32 %265, 0
  br i1 %266, label %267, label %281

267:                                              ; preds = %264
  %268 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %269 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %272 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %271, i32 0, i32 6
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %26, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* %23, align 4
  %280 = call i32 @dev_dbg(i32 %270, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %277, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %267, %264
  %282 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %283 = call i32 @sci_port_enable(%struct.sci_port* %282)
  %284 = load i32, i32* %26, align 4
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %302

286:                                              ; preds = %281
  %287 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %288 = load i32, i32* @SCCKS, align 4
  %289 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %287, i32 %288)
  %290 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %286
  %294 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %295 = load i32, i32* @SCDL, align 4
  %296 = load i32, i32* %15, align 4
  %297 = call i32 @serial_port_out(%struct.uart_port* %294, i32 %295, i32 %296)
  %298 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %299 = load i32, i32* @SCCKS, align 4
  %300 = load i32, i32* %16, align 4
  %301 = call i32 @serial_port_out(%struct.uart_port* %298, i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %293, %286, %281
  %303 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %304 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %303, i32 0, i32 2
  %305 = load i64, i64* %27, align 8
  %306 = call i32 @spin_lock_irqsave(i32* %304, i64 %305)
  %307 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %308 = call i32 @sci_reset(%struct.uart_port* %307)
  %309 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %310 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %311 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %7, align 4
  %314 = call i32 @uart_update_timeout(%struct.uart_port* %309, i32 %312, i32 %313)
  %315 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %316 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @CSIZE, align 4
  %319 = and i32 %317, %318
  switch i32 %319, label %323 [
    i32 130, label %320
    i32 129, label %321
    i32 128, label %322
  ]

320:                                              ; preds = %302
  store i32 7, i32* %11, align 4
  br label %324

321:                                              ; preds = %302
  store i32 8, i32* %11, align 4
  br label %324

322:                                              ; preds = %302
  store i32 9, i32* %11, align 4
  br label %324

323:                                              ; preds = %302
  store i32 10, i32* %11, align 4
  br label %324

324:                                              ; preds = %323, %322, %321, %320
  %325 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %326 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @CSTOPB, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %324
  %332 = load i32, i32* %11, align 4
  %333 = add i32 %332, 1
  store i32 %333, i32* %11, align 4
  br label %334

334:                                              ; preds = %331, %324
  %335 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %336 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @PARENB, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %334
  %342 = load i32, i32* %11, align 4
  %343 = add i32 %342, 1
  store i32 %343, i32* %11, align 4
  br label %344

344:                                              ; preds = %341, %334
  %345 = load i32, i32* %26, align 4
  %346 = icmp sge i32 %345, 0
  br i1 %346, label %347, label %466

347:                                              ; preds = %344
  %348 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %349 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @PORT_SCIFA, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %359, label %353

353:                                              ; preds = %347
  %354 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %355 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @PORT_SCIFB, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %395

359:                                              ; preds = %353, %347
  %360 = load i32, i32* %14, align 4
  %361 = add i32 %360, 1
  switch i32 %361, label %394 [
    i32 5, label %362
    i32 7, label %366
    i32 11, label %370
    i32 13, label %374
    i32 16, label %378
    i32 17, label %382
    i32 19, label %386
    i32 27, label %390
  ]

362:                                              ; preds = %359
  %363 = load i32, i32* @SCSMR_SRC_5, align 4
  %364 = load i32, i32* %8, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %8, align 4
  br label %394

366:                                              ; preds = %359
  %367 = load i32, i32* @SCSMR_SRC_7, align 4
  %368 = load i32, i32* %8, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %8, align 4
  br label %394

370:                                              ; preds = %359
  %371 = load i32, i32* @SCSMR_SRC_11, align 4
  %372 = load i32, i32* %8, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %8, align 4
  br label %394

374:                                              ; preds = %359
  %375 = load i32, i32* @SCSMR_SRC_13, align 4
  %376 = load i32, i32* %8, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %8, align 4
  br label %394

378:                                              ; preds = %359
  %379 = load i32, i32* @SCSMR_SRC_16, align 4
  %380 = load i32, i32* %8, align 4
  %381 = or i32 %380, %379
  store i32 %381, i32* %8, align 4
  br label %394

382:                                              ; preds = %359
  %383 = load i32, i32* @SCSMR_SRC_17, align 4
  %384 = load i32, i32* %8, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %8, align 4
  br label %394

386:                                              ; preds = %359
  %387 = load i32, i32* @SCSMR_SRC_19, align 4
  %388 = load i32, i32* %8, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %8, align 4
  br label %394

390:                                              ; preds = %359
  %391 = load i32, i32* @SCSMR_SRC_27, align 4
  %392 = load i32, i32* %8, align 4
  %393 = or i32 %392, %391
  store i32 %393, i32* %8, align 4
  br label %394

394:                                              ; preds = %359, %390, %386, %382, %378, %374, %370, %366, %362
  br label %395

395:                                              ; preds = %394, %353
  %396 = load i32, i32* %13, align 4
  %397 = load i32, i32* %8, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %8, align 4
  %399 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %400 = load i32, i32* @SCSCR, align 4
  %401 = load i32, i32* %9, align 4
  %402 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %403 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = or i32 %401, %404
  %406 = call i32 @serial_port_out(%struct.uart_port* %399, i32 %400, i32 %405)
  %407 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %408 = load i32, i32* @SCSMR, align 4
  %409 = load i32, i32* %8, align 4
  %410 = call i32 @serial_port_out(%struct.uart_port* %407, i32 %408, i32 %409)
  %411 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %412 = load i32, i32* @SCBRR, align 4
  %413 = load i32, i32* %12, align 4
  %414 = call i32 @serial_port_out(%struct.uart_port* %411, i32 %412, i32 %413)
  %415 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %416 = load i32, i32* @HSSRR, align 4
  %417 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %415, i32 %416)
  %418 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %459

421:                                              ; preds = %395
  %422 = load i32, i32* %14, align 4
  %423 = load i32, i32* @HSCIF_SRE, align 4
  %424 = or i32 %422, %423
  store i32 %424, i32* %28, align 4
  %425 = load i32, i32* %11, align 4
  %426 = mul i32 %425, 2
  %427 = sub i32 %426, 1
  store i32 %427, i32* %29, align 4
  %428 = load i32, i32* %23, align 4
  %429 = load i32, i32* %29, align 4
  %430 = mul nsw i32 %428, %429
  %431 = load i32, i32* %14, align 4
  %432 = add i32 %431, 1
  %433 = mul nsw i32 %430, %432
  %434 = load i32, i32* %7, align 4
  %435 = mul nsw i32 2, %434
  %436 = call i32 @DIV_ROUND_CLOSEST(i32 %433, i32 %435)
  store i32 %436, i32* %30, align 4
  %437 = load i32, i32* %30, align 4
  %438 = call i32 @abs(i32 %437) #3
  %439 = icmp sge i32 %438, 2
  br i1 %439, label %440, label %454

440:                                              ; preds = %421
  %441 = load i32, i32* %30, align 4
  %442 = sdiv i32 %441, 2
  %443 = call i32 @clamp(i32 %442, i32 -8, i32 7)
  store i32 %443, i32* %31, align 4
  %444 = load i32, i32* %31, align 4
  %445 = load i32, i32* @HSCIF_SRHP_SHIFT, align 4
  %446 = shl i32 %444, %445
  %447 = load i32, i32* @HSCIF_SRHP_MASK, align 4
  %448 = and i32 %446, %447
  %449 = load i32, i32* %28, align 4
  %450 = or i32 %449, %448
  store i32 %450, i32* %28, align 4
  %451 = load i32, i32* @HSCIF_SRDE, align 4
  %452 = load i32, i32* %28, align 4
  %453 = or i32 %452, %451
  store i32 %453, i32* %28, align 4
  br label %454

454:                                              ; preds = %440, %421
  %455 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %456 = load i32, i32* @HSSRR, align 4
  %457 = load i32, i32* %28, align 4
  %458 = call i32 @serial_port_out(%struct.uart_port* %455, i32 %456, i32 %457)
  br label %459

459:                                              ; preds = %454, %395
  %460 = load i32, i32* %7, align 4
  %461 = sub i32 %460, 1
  %462 = add i32 1000000, %461
  %463 = load i32, i32* %7, align 4
  %464 = udiv i32 %462, %463
  %465 = call i32 @udelay(i32 %464)
  br label %499

466:                                              ; preds = %344
  %467 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %468 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %467, i32 0, i32 5
  %469 = load %struct.TYPE_2__*, %struct.TYPE_2__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* @SCSCR_CKE1, align 4
  %473 = load i32, i32* @SCSCR_CKE0, align 4
  %474 = or i32 %472, %473
  %475 = and i32 %471, %474
  store i32 %475, i32* %9, align 4
  %476 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %477 = load i32, i32* @SCSMR, align 4
  %478 = call i32 @serial_port_in(%struct.uart_port* %476, i32 %477)
  %479 = load i32, i32* @SCSMR_CKEDG, align 4
  %480 = load i32, i32* @SCSMR_SRC_MASK, align 4
  %481 = or i32 %479, %480
  %482 = load i32, i32* @SCSMR_CKS, align 4
  %483 = or i32 %481, %482
  %484 = and i32 %478, %483
  %485 = load i32, i32* %8, align 4
  %486 = or i32 %485, %484
  store i32 %486, i32* %8, align 4
  %487 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %488 = load i32, i32* @SCSCR, align 4
  %489 = load i32, i32* %9, align 4
  %490 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %491 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = or i32 %489, %492
  %494 = call i32 @serial_port_out(%struct.uart_port* %487, i32 %488, i32 %493)
  %495 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %496 = load i32, i32* @SCSMR, align 4
  %497 = load i32, i32* %8, align 4
  %498 = call i32 @serial_port_out(%struct.uart_port* %495, i32 %496, i32 %497)
  br label %499

499:                                              ; preds = %466, %459
  %500 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %501 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %502 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @sci_init_pins(%struct.uart_port* %500, i32 %503)
  %505 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %506 = xor i32 %505, -1
  %507 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %508 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %507, i32 0, i32 4
  %509 = load i32, i32* %508, align 4
  %510 = and i32 %509, %506
  store i32 %510, i32* %508, align 4
  %511 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %512 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %511, i32 0, i32 1
  store i32 0, i32* %512, align 4
  %513 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %514 = load i32, i32* @SCFCR, align 4
  %515 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %513, i32 %514)
  store %struct.plat_sci_reg* %515, %struct.plat_sci_reg** %22, align 8
  %516 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %22, align 8
  %517 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %562

520:                                              ; preds = %499
  %521 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %522 = load i32, i32* @SCFCR, align 4
  %523 = call i32 @serial_port_in(%struct.uart_port* %521, i32 %522)
  %524 = trunc i32 %523 to i16
  store i16 %524, i16* %32, align 2
  %525 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %526 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 8
  %528 = load i32, i32* @UPF_HARD_FLOW, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %546

531:                                              ; preds = %520
  %532 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %533 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* @CRTSCTS, align 4
  %536 = and i32 %534, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %546

538:                                              ; preds = %531
  %539 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %540 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %541 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %540, i32 0, i32 4
  %542 = load i32, i32* %541, align 4
  %543 = or i32 %542, %539
  store i32 %543, i32* %541, align 4
  %544 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %545 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %544, i32 0, i32 1
  store i32 1, i32* %545, align 4
  br label %546

546:                                              ; preds = %538, %531, %520
  %547 = load i16, i16* @SCFCR_RFRST, align 2
  %548 = zext i16 %547 to i32
  %549 = load i16, i16* @SCFCR_TFRST, align 2
  %550 = zext i16 %549 to i32
  %551 = or i32 %548, %550
  %552 = xor i32 %551, -1
  %553 = load i16, i16* %32, align 2
  %554 = zext i16 %553 to i32
  %555 = and i32 %554, %552
  %556 = trunc i32 %555 to i16
  store i16 %556, i16* %32, align 2
  %557 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %558 = load i32, i32* @SCFCR, align 4
  %559 = load i16, i16* %32, align 2
  %560 = zext i16 %559 to i32
  %561 = call i32 @serial_port_out(%struct.uart_port* %557, i32 %558, i32 %560)
  br label %562

562:                                              ; preds = %546, %499
  %563 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %564 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 8
  %566 = load i32, i32* @UPF_HARD_FLOW, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %575

569:                                              ; preds = %562
  %570 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %571 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %572 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %571, i32 0, i32 3
  %573 = load i32, i32* %572, align 8
  %574 = call i32 @sci_set_mctrl(%struct.uart_port* %570, i32 %573)
  br label %575

575:                                              ; preds = %569, %562
  %576 = load i32, i32* @SCSCR_RE, align 4
  %577 = load i32, i32* @SCSCR_TE, align 4
  %578 = or i32 %576, %577
  %579 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %580 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %579, i32 0, i32 5
  %581 = load %struct.TYPE_2__*, %struct.TYPE_2__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  %584 = load i32, i32* @SCSCR_CKE1, align 4
  %585 = load i32, i32* @SCSCR_CKE0, align 4
  %586 = or i32 %584, %585
  %587 = xor i32 %586, -1
  %588 = and i32 %583, %587
  %589 = or i32 %578, %588
  %590 = load i32, i32* %9, align 4
  %591 = or i32 %590, %589
  store i32 %591, i32* %9, align 4
  %592 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %593 = load i32, i32* @SCSCR, align 4
  %594 = load i32, i32* %9, align 4
  %595 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %596 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = or i32 %594, %597
  %599 = call i32 @serial_port_out(%struct.uart_port* %592, i32 %593, i32 %598)
  %600 = load i32, i32* %14, align 4
  %601 = add i32 %600, 1
  %602 = icmp eq i32 %601, 5
  br i1 %602, label %603, label %619

603:                                              ; preds = %575
  %604 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %605 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %604, i32 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = load i64, i64* @PORT_SCIFA, align 8
  %608 = icmp eq i64 %606, %607
  br i1 %608, label %615, label %609

609:                                              ; preds = %603
  %610 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %611 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %610, i32 0, i32 0
  %612 = load i64, i64* %611, align 8
  %613 = load i64, i64* @PORT_SCIFB, align 8
  %614 = icmp eq i64 %612, %613
  br i1 %614, label %615, label %619

615:                                              ; preds = %609, %603
  %616 = load i32, i32* %7, align 4
  %617 = call i32 @DIV_ROUND_UP(i32 10000000, i32 %616)
  %618 = call i32 @udelay(i32 %617)
  br label %619

619:                                              ; preds = %615, %609, %575
  %620 = load i32, i32* %11, align 4
  %621 = mul i32 10000, %620
  %622 = load i32, i32* %7, align 4
  %623 = udiv i32 %622, 100
  %624 = udiv i32 %621, %623
  %625 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %626 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %625, i32 0, i32 2
  store i32 %624, i32* %626, align 8
  %627 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %628 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* @CREAD, align 4
  %631 = and i32 %629, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %636

633:                                              ; preds = %619
  %634 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %635 = call i32 @sci_start_rx(%struct.uart_port* %634)
  br label %636

636:                                              ; preds = %633, %619
  %637 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %638 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %637, i32 0, i32 2
  %639 = load i64, i64* %27, align 8
  %640 = call i32 @spin_unlock_irqrestore(i32* %638, i64 %639)
  %641 = load %struct.sci_port*, %struct.sci_port** %21, align 8
  %642 = call i32 @sci_port_disable(%struct.sci_port* %641)
  %643 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %644 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %645 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 4
  %647 = call i64 @UART_ENABLE_MS(%struct.uart_port* %643, i32 %646)
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %652

649:                                              ; preds = %636
  %650 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %651 = call i32 @sci_enable_ms(%struct.uart_port* %650)
  br label %652

652:                                              ; preds = %649, %636
  ret void
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i64) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i64 @min_sr(%struct.sci_port*) #1

declare dso_local i32 @sci_sck_calc(%struct.sci_port*, i32, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local %struct.plat_sci_reg* @sci_getreg(%struct.uart_port*, i32) #1

declare dso_local i32 @sci_brg_calc(%struct.sci_port*, i32, i32, i32*, i32*) #1

declare dso_local i32 @sci_scbrr_calc(%struct.sci_port*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sci_port_enable(%struct.sci_port*) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sci_reset(%struct.uart_port*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @sci_init_pins(%struct.uart_port*, i32) #1

declare dso_local i32 @sci_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sci_start_rx(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sci_port_disable(%struct.sci_port*) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @sci_enable_ms(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
