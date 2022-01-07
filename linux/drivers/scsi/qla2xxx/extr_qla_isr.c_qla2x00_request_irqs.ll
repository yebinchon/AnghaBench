; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, %struct.TYPE_8__, %struct.TYPE_11__*, %struct.TYPE_7__*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.rsp_que = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql2xenablemsix = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_HP = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"MSI-X: Unsupported ISP 2432 SSVID/SSDID (0x%X,0x%X).\0A\00", align 1
@QLA_MSIX_CHIP_REV_24XX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"MSI-X; Unsupported ISP2432 (0x%X, 0x%X).\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"MSI-X: Enabled (0x%X, 0x%X).\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Falling back-to MSI mode -%d.\0A\00", align 1
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"MSI: Enabled.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Falling back-to INTa mode -- %d.\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@QLA2XXX_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Failed to reserve interrupt %d already in use.\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"INTa mode: Enabled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_request_irqs(%struct.qla_hw_data* %0, %struct.rsp_que* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  %9 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %11 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %10, i32 0, i32 6
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = call i32* @pci_get_drvdata(%struct.TYPE_11__* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* @ql2xenablemsix, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %2
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %21 = call i64 @IS_QLA2432(%struct.qla_hw_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %25 = call i32 @IS_QLA2532(%struct.qla_hw_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %23
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %29 = call i32 @IS_QLA8432(%struct.qla_hw_data* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %27
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %33 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %37 = call i32 @IS_QLA2031(%struct.qla_hw_data* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %41 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %45 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %49 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %2
  br label %196

52:                                               ; preds = %47, %43, %39, %35, %31, %27, %23, %19
  %53 = load i32, i32* @ql2xenablemsix, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %138

56:                                               ; preds = %52
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PCI_VENDOR_ID_HP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %99

64:                                               ; preds = %56
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 28736
  br i1 %70, label %85, label %71

71:                                               ; preds = %64
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 28737
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 5893
  br i1 %84, label %85, label %99

85:                                               ; preds = %78, %71, %64
  %86 = load i32, i32* @ql_log_warn, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %94 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %93, i32 0, i32 2
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i32*, i32, i8*, i32, ...) @ql_log(i32 %86, i32* %87, i32 52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %97)
  br label %196

99:                                               ; preds = %78, %56
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %101 = call i64 @IS_QLA2432(%struct.qla_hw_data* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %105 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @QLA_MSIX_CHIP_REV_24XX, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load i32, i32* @ql_log_warn, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 2
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @QLA_MSIX_CHIP_REV_24XX, align 4
  %120 = call i32 (i32, i32*, i32, i8*, i32, ...) @ql_log(i32 %112, i32* %113, i32 53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %119)
  br label %138

121:                                              ; preds = %103, %99
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %123 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %124 = call i32 @qla24xx_enable_msix(%struct.qla_hw_data* %122, %struct.rsp_que* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* @ql_dbg_init, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %131 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %134 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i32*, i32, i8*, ...) @ql_dbg(i32 %128, i32* %129, i32 54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %135)
  br label %258

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %111, %55
  %139 = load i32, i32* @ql_log_info, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 (i32, i32*, i32, i8*, i32, ...) @ql_log(i32 %139, i32* %140, i32 55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %144 = call i32 @IS_QLA24XX(%struct.qla_hw_data* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %175, label %146

146:                                              ; preds = %138
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %148 = call i32 @IS_QLA2532(%struct.qla_hw_data* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %175, label %150

150:                                              ; preds = %146
  %151 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %152 = call i32 @IS_QLA8432(%struct.qla_hw_data* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %175, label %154

154:                                              ; preds = %150
  %155 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %156 = call i32 @IS_QLA8001(%struct.qla_hw_data* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %154
  %159 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %160 = call i32 @IS_P3P_TYPE(%struct.qla_hw_data* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %158
  %163 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %164 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %162
  %167 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %168 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %166
  %171 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %172 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  br label %196

175:                                              ; preds = %170, %166, %162, %158, %154, %150, %146, %138
  %176 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %177 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %176, i32 0, i32 2
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = load i32, i32* @PCI_IRQ_MSI, align 4
  %180 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_11__* %178, i32 1, i32 1, i32 %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %175
  %184 = load i32, i32* @ql_dbg_init, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = call i32 (i32, i32*, i32, i8*, ...) @ql_dbg(i32 %184, i32* %185, i32 56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %187 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %188 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 4
  br label %195

190:                                              ; preds = %175
  %191 = load i32, i32* @ql_log_warn, align 4
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 (i32, i32*, i32, i8*, i32, ...) @ql_log(i32 %191, i32* %192, i32 57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %190, %183
  br label %196

196:                                              ; preds = %195, %174, %85, %51
  %197 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %198 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %196
  %203 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %204 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %207, i32* %3, align 4
  br label %280

208:                                              ; preds = %202, %196
  %209 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %210 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %209, i32 0, i32 2
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %215 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %214, i32 0, i32 3
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %220 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %208
  br label %227

225:                                              ; preds = %208
  %226 = load i32, i32* @IRQF_SHARED, align 4
  br label %227

227:                                              ; preds = %225, %224
  %228 = phi i32 [ 0, %224 ], [ %226, %225 ]
  %229 = load i32, i32* @QLA2XXX_DRIVER_NAME, align 4
  %230 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %231 = call i32 @request_irq(i32 %213, i32 %218, i32 %228, i32 %229, %struct.rsp_que* %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %227
  %235 = load i32, i32* @ql_log_warn, align 4
  %236 = load i32*, i32** %8, align 8
  %237 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %238 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %237, i32 0, i32 2
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i32, i32*, i32, i8*, i32, ...) @ql_log(i32 %235, i32* %236, i32 58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %241)
  br label %278

243:                                              ; preds = %227
  %244 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %245 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %243
  %250 = load i32, i32* @ql_dbg_init, align 4
  %251 = load i32*, i32** %8, align 8
  %252 = call i32 (i32, i32*, i32, i8*, ...) @ql_dbg(i32 %250, i32* %251, i32 293, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %253 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %254 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  store i32 1, i32* %255, align 4
  br label %256

256:                                              ; preds = %249, %243
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257, %127
  %259 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %260 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %264 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %262, %258
  br label %278

267:                                              ; preds = %262
  %268 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %269 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %268, i32 0, i32 0
  %270 = call i32 @spin_lock_irq(i32* %269)
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = call i32 @WRT_REG_WORD(i32* %273, i32 0)
  %275 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %276 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %275, i32 0, i32 0
  %277 = call i32 @spin_unlock_irq(i32* %276)
  br label %278

278:                                              ; preds = %267, %266, %234
  %279 = load i32, i32* %6, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %278, %206
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32* @pci_get_drvdata(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_QLA2432(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA2532(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA8432(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @qla24xx_enable_msix(%struct.qla_hw_data*, %struct.rsp_que*) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @IS_QLA24XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA8001(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.rsp_que*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WRT_REG_WORD(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
