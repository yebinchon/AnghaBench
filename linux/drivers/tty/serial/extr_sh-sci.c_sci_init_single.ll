; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_init_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_init_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sci_port = type { i32, i64*, i32, %struct.TYPE_2__*, i32, i64, i64, %struct.plat_sci_port*, %struct.uart_port }
%struct.TYPE_2__ = type { i32, i32 }
%struct.uart_port = type { i32, i32, i32, i32, i64, i32, i32, i64, i32, i32*, i32, i32, i32* }
%struct.plat_sci_port = type { i32, i32, i64, i32 }
%struct.resource = type { i32 }

@sci_uart_ops = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCIx_SH7705_SCIF_REGTYPE = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@PORT_SCI = common dso_local global i32 0, align 4
@SCIx_RXI_IRQ = common dso_local global i64 0, align 8
@sci_serial_in = common dso_local global i32 0, align 4
@sci_serial_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.sci_port*, i32, %struct.plat_sci_port*, i32)* @sci_init_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_init_single(%struct.platform_device* %0, %struct.sci_port* %1, i32 %2, %struct.plat_sci_port* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.sci_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.plat_sci_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.uart_port*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.sci_port* %1, %struct.sci_port** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.plat_sci_port* %3, %struct.plat_sci_port** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %17 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %16, i32 0, i32 8
  store %struct.uart_port* %17, %struct.uart_port** %12, align 8
  %18 = load %struct.plat_sci_port*, %struct.plat_sci_port** %10, align 8
  %19 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %20 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %19, i32 0, i32 7
  store %struct.plat_sci_port* %18, %struct.plat_sci_port** %20, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 12
  store i32* @sci_uart_ops, i32** %22, align 8
  %23 = load i32, i32* @UPIO_MEM, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %13, align 8
  %32 = load %struct.resource*, %struct.resource** %13, align 8
  %33 = icmp eq %struct.resource* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %265

37:                                               ; preds = %5
  %38 = load %struct.resource*, %struct.resource** %13, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load %struct.resource*, %struct.resource** %13, align 8
  %44 = call i32 @resource_size(%struct.resource* %43)
  %45 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %46 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %78, %37
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %50 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @ARRAY_SIZE(i64* %51)
  %53 = icmp ult i32 %48, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %47
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @platform_get_irq_optional(%struct.platform_device* %58, i32 %59)
  %61 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %62 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  br label %77

67:                                               ; preds = %54
  %68 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @platform_get_irq(%struct.platform_device* %68, i32 %69)
  %71 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %72 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %70, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %57
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %14, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %47

81:                                               ; preds = %47
  %82 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %83 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %265

91:                                               ; preds = %81
  %92 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %93 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %91
  store i32 1, i32* %14, align 4
  br label %99

99:                                               ; preds = %118, %98
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %102 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = call i32 @ARRAY_SIZE(i64* %103)
  %105 = icmp ult i32 %100, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %108 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %113 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %111, i64* %117, align 8
  br label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %14, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %99

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121, %91
  %123 = load %struct.plat_sci_port*, %struct.plat_sci_port** %10, align 8
  %124 = call %struct.TYPE_2__* @sci_probe_regmap(%struct.plat_sci_port* %123)
  %125 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %126 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %125, i32 0, i32 3
  store %struct.TYPE_2__* %124, %struct.TYPE_2__** %126, align 8
  %127 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %128 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %127, i32 0, i32 3
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = icmp eq %struct.TYPE_2__* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %265

137:                                              ; preds = %122
  %138 = load %struct.plat_sci_port*, %struct.plat_sci_port** %10, align 8
  %139 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %163 [
    i32 128, label %141
    i32 131, label %144
    i32 129, label %147
    i32 130, label %150
  ]

141:                                              ; preds = %137
  %142 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %143 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %142, i32 0, i32 2
  store i32 48, i32* %143, align 8
  br label %166

144:                                              ; preds = %137
  %145 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %146 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %145, i32 0, i32 2
  store i32 64, i32* %146, align 8
  br label %166

147:                                              ; preds = %137
  %148 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %149 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %148, i32 0, i32 2
  store i32 32, i32* %149, align 8
  br label %166

150:                                              ; preds = %137
  %151 = load %struct.plat_sci_port*, %struct.plat_sci_port** %10, align 8
  %152 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SCIx_SH7705_SCIF_REGTYPE, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %158 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %157, i32 0, i32 2
  store i32 1, i32* %158, align 8
  br label %162

159:                                              ; preds = %150
  %160 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %161 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %160, i32 0, i32 2
  store i32 8, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %156
  br label %166

163:                                              ; preds = %137
  %164 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %165 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %164, i32 0, i32 2
  store i32 1, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %162, %147, %144, %141
  %167 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %168 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %167, i32 0, i32 6
  store i64 0, i64* %168, align 8
  %169 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %170 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %169, i32 0, i32 5
  store i64 0, i64* %170, align 8
  %171 = load %struct.plat_sci_port*, %struct.plat_sci_port** %10, align 8
  %172 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load %struct.plat_sci_port*, %struct.plat_sci_port** %10, align 8
  %177 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @SCI_SR(i64 %178)
  br label %186

180:                                              ; preds = %166
  %181 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %182 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %181, i32 0, i32 3
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  br label %186

186:                                              ; preds = %180, %175
  %187 = phi i32 [ %179, %175 ], [ %185, %180 ]
  %188 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %189 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %209, label %192

192:                                              ; preds = %186
  %193 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %194 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = call i32 @sci_init_clocks(%struct.sci_port* %193, i32* %195)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i32, i32* %15, align 4
  store i32 %200, i32* %6, align 4
  br label %265

201:                                              ; preds = %192
  %202 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %205 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %204, i32 0, i32 9
  store i32* %203, i32** %205, align 8
  %206 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 @pm_runtime_enable(i32* %207)
  br label %209

209:                                              ; preds = %201, %186
  %210 = load %struct.plat_sci_port*, %struct.plat_sci_port** %10, align 8
  %211 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %214 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @UPF_FIXED_PORT, align 4
  %216 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %217 = or i32 %215, %216
  %218 = load %struct.plat_sci_port*, %struct.plat_sci_port** %10, align 8
  %219 = getelementptr inbounds %struct.plat_sci_port, %struct.plat_sci_port* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %217, %220
  %222 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %223 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %225 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %224, i32 0, i32 3
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %230 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %229, i32 0, i32 8
  store i32 %228, i32* %230, align 8
  %231 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %232 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @PORT_SCI, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %248

236:                                              ; preds = %209
  %237 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %238 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp sge i32 %239, 32
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %243 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %242, i32 0, i32 3
  store i32 2, i32* %243, align 4
  br label %247

244:                                              ; preds = %236
  %245 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %246 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %245, i32 0, i32 3
  store i32 1, i32* %246, align 4
  br label %247

247:                                              ; preds = %244, %241
  br label %248

248:                                              ; preds = %247, %209
  %249 = load %struct.sci_port*, %struct.sci_port** %8, align 8
  %250 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %249, i32 0, i32 1
  %251 = load i64*, i64** %250, align 8
  %252 = load i64, i64* @SCIx_RXI_IRQ, align 8
  %253 = getelementptr inbounds i64, i64* %251, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %256 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %255, i32 0, i32 4
  store i64 %254, i64* %256, align 8
  %257 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %258 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %257, i32 0, i32 7
  store i64 0, i64* %258, align 8
  %259 = load i32, i32* @sci_serial_in, align 4
  %260 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %261 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %260, i32 0, i32 6
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* @sci_serial_out, align 4
  %263 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  %264 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %263, i32 0, i32 5
  store i32 %262, i32* %264, align 8
  store i32 0, i32* %6, align 4
  br label %265

265:                                              ; preds = %248, %199, %134, %88, %34
  %266 = load i32, i32* %6, align 4
  ret i32 %266
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @platform_get_irq_optional(%struct.platform_device*, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.TYPE_2__* @sci_probe_regmap(%struct.plat_sci_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SCI_SR(i64) #1

declare dso_local i32 @sci_init_clocks(%struct.sci_port*, i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
