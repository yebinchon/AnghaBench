; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.qla_hw_data = type { i32, i32, i32, i32, i32, i32, i64, %struct.qla_msix_entry*, %struct.TYPE_9__, i64 }
%struct.qla_msix_entry = type { i32, i32, i32, i32, i32, %struct.rsp_que* }
%struct.TYPE_9__ = type { i32 }
%struct.rsp_que = type { %struct.qla_msix_entry* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.irq_affinity = type { i32 }

@QLA_BASE_VECTORS = common dso_local global i32 0, align 4
@ql2xenablemsix = common dso_local global i64 0, align 8
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_AFFINITY = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"MSI-X: Failed to enable support, giving   up -- %d/%d.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"MSI-X: Using %d vectors\0A\00", align 1
@ql2xmqsupport = common dso_local global i64 0, align 8
@ql2xnvmeenable = common dso_local global i64 0, align 8
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Adjusted Max no of queues pairs: %d.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to allocate memory for ha->msix_entries.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"qla2xxx%lu_%s\00", align 1
@msix_entries = common dso_local global %struct.TYPE_12__* null, align 8
@qla82xx_msix_entries = common dso_local global %struct.TYPE_11__* null, align 8
@QLA_ATIO_VECTOR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"MSI-X: unable to register handler -- %x/%d.\0A\00", align 1
@ql_dbg_multiq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"mqiobase=%p, max_rsp_queues=%d, max_req_queues=%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, %struct.rsp_que*)* @qla24xx_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_enable_msix(%struct.qla_hw_data* %0, %struct.rsp_que* %1) #0 {
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_msix_entry*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_affinity, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %4, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_10__* @pci_get_drvdata(i32 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = load i32, i32* @QLA_BASE_VECTORS, align 4
  store i32 %15, i32* %9, align 4
  %16 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %10, i32 0, i32 0
  %17 = load i32, i32* @QLA_BASE_VECTORS, align 4
  store i32 %17, i32* %16, align 4
  %18 = call i64 (...) @QLA_TGT_MODE_ENABLED()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i64, i64* @ql2xenablemsix, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %25 = call i64 @IS_ATIO_MSIX_CAPABLE(%struct.qla_hw_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %27, %23, %20, %2
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %35 = call i64 @USER_CTRL_IRQ(%struct.qla_hw_data* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37, %33
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %51 = call i32 @pci_alloc_irq_vectors(i32 %45, i32 %46, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %64

52:                                               ; preds = %37
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %61 = load i32, i32* @PCI_IRQ_AFFINITY, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @pci_alloc_irq_vectors_affinity(i32 %55, i32 %56, i32 %59, i32 %62, %struct.irq_affinity* %10)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %52, %42
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* @ql_log_fatal, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %68, %struct.TYPE_10__* %69, i32 199, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %426

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %135

81:                                               ; preds = %75
  %82 = load i32, i32* @ql_log_info, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %82, %struct.TYPE_10__* %83, i32 198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %88 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %90 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %134

93:                                               ; preds = %81
  %94 = load i64, i64* @ql2xmqsupport, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* @ql2xnvmeenable, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %96, %93
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %105 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = call i64 (...) @QLA_TGT_MODE_ENABLED()
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %99
  %109 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %110 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %99
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %118 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %120 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %125 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %124, i32 0, i32 9
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* @ql_dbg_init, align 4
  %127 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %128 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %131 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %130, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @ql_dbg_pci(i32 %126, i32 %129, i32 400, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %113, %96, %81
  br label %135

135:                                              ; preds = %134, %75
  br label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %10, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %142 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call %struct.qla_msix_entry* @kcalloc(i32 %143, i32 32, i32 %144)
  %146 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %147 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %146, i32 0, i32 7
  store %struct.qla_msix_entry* %145, %struct.qla_msix_entry** %147, align 8
  %148 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %149 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %148, i32 0, i32 7
  %150 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %149, align 8
  %151 = icmp ne %struct.qla_msix_entry* %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %136
  %153 = load i32, i32* @ql_log_fatal, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %153, %struct.TYPE_10__* %154, i32 200, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %6, align 4
  br label %428

158:                                              ; preds = %136
  %159 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %160 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %191, %158
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %165 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %194

168:                                              ; preds = %162
  %169 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %170 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %169, i32 0, i32 7
  %171 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %171, i64 %173
  store %struct.qla_msix_entry* %174, %struct.qla_msix_entry** %7, align 8
  %175 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %176 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @pci_irq_vector(i32 %177, i32 %178)
  %180 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %181 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %184 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %186 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %185, i32 0, i32 2
  store i32 0, i32* %186, align 8
  %187 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %188 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %187, i32 0, i32 3
  store i32 0, i32* %188, align 4
  %189 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %190 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %189, i32 0, i32 5
  store %struct.rsp_que* null, %struct.rsp_que** %190, align 8
  br label %191

191:                                              ; preds = %168
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %5, align 4
  br label %162

194:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %270, %194
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @QLA_BASE_VECTORS, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %273

199:                                              ; preds = %195
  %200 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %201 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %200, i32 0, i32 7
  %202 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %202, i64 %204
  store %struct.qla_msix_entry* %205, %struct.qla_msix_entry** %7, align 8
  %206 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %207 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %208 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %207, i32 0, i32 5
  store %struct.rsp_que* %206, %struct.rsp_que** %208, align 8
  %209 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %210 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %211 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %210, i32 0, i32 0
  store %struct.qla_msix_entry* %209, %struct.qla_msix_entry** %211, align 8
  %212 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %213 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** @msix_entries, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @scnprintf(i32 %214, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %217, i32 %223)
  %225 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %226 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %246

228:                                              ; preds = %199
  %229 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %230 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** @qla82xx_msix_entries, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** @qla82xx_msix_entries, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %245 = call i32 @request_irq(i32 %231, i32 %237, i32 0, i32 %243, %struct.rsp_que* %244)
  store i32 %245, i32* %6, align 4
  br label %261

246:                                              ; preds = %199
  %247 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %248 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** @msix_entries, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %257 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %260 = call i32 @request_irq(i32 %249, i32 %255, i32 0, i32 %258, %struct.rsp_que* %259)
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %246, %228
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  br label %325

265:                                              ; preds = %261
  %266 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %267 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %266, i32 0, i32 2
  store i32 1, i32* %267, align 8
  %268 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %269 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %268, i32 0, i32 3
  store i32 1, i32* %269, align 4
  br label %270

270:                                              ; preds = %265
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %5, align 4
  br label %195

273:                                              ; preds = %195
  %274 = call i64 (...) @QLA_TGT_MODE_ENABLED()
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %324

276:                                              ; preds = %273
  %277 = load i64, i64* @ql2xenablemsix, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %324

279:                                              ; preds = %276
  %280 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %281 = call i64 @IS_ATIO_MSIX_CAPABLE(%struct.qla_hw_data* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %324

283:                                              ; preds = %279
  %284 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %285 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %284, i32 0, i32 7
  %286 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %285, align 8
  %287 = load i64, i64* @QLA_ATIO_VECTOR, align 8
  %288 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %286, i64 %287
  store %struct.qla_msix_entry* %288, %struct.qla_msix_entry** %7, align 8
  %289 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %290 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %291 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %290, i32 0, i32 0
  store %struct.qla_msix_entry* %289, %struct.qla_msix_entry** %291, align 8
  %292 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %293 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %294 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %293, i32 0, i32 5
  store %struct.rsp_que* %292, %struct.rsp_que** %294, align 8
  %295 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %296 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** @msix_entries, align 8
  %302 = load i64, i64* @QLA_ATIO_VECTOR, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @scnprintf(i32 %297, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %300, i32 %305)
  %307 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %308 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %307, i32 0, i32 3
  store i32 1, i32* %308, align 4
  %309 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %310 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** @msix_entries, align 8
  %313 = load i64, i64* @QLA_ATIO_VECTOR, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %318 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %321 = call i32 @request_irq(i32 %311, i32 %316, i32 0, i32 %319, %struct.rsp_que* %320)
  store i32 %321, i32* %6, align 4
  %322 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %323 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %322, i32 0, i32 2
  store i32 1, i32* %323, align 8
  br label %324

324:                                              ; preds = %283, %279, %276, %273
  br label %325

325:                                              ; preds = %324, %264
  %326 = load i32, i32* %6, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %325
  %329 = load i32, i32* @ql_log_fatal, align 4
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %331 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %7, align 8
  %332 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %6, align 4
  %335 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %329, %struct.TYPE_10__* %330, i32 203, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %333, i32 %334)
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %337 = call i32 @qla2x00_free_irqs(%struct.TYPE_10__* %336)
  %338 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %339 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %338, i32 0, i32 3
  store i32 0, i32* %339, align 4
  br label %426

340:                                              ; preds = %325
  %341 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %342 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %352, label %344

344:                                              ; preds = %340
  %345 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %346 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %352, label %348

348:                                              ; preds = %344
  %349 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %350 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %379

352:                                              ; preds = %348, %344, %340
  %353 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %354 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %353, i32 0, i32 6
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %378

357:                                              ; preds = %352
  %358 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %359 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %378

362:                                              ; preds = %357
  %363 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %364 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = icmp sgt i32 %365, 1
  br i1 %366, label %375, label %367

367:                                              ; preds = %362
  %368 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %369 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp sgt i32 %370, 1
  br i1 %371, label %375, label %372

372:                                              ; preds = %367
  %373 = load i64, i64* @ql2xmqsupport, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %372, %367, %362
  %376 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %377 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %376, i32 0, i32 3
  store i32 1, i32* %377, align 4
  br label %378

378:                                              ; preds = %375, %372, %357, %352
  br label %401

379:                                              ; preds = %348
  %380 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %381 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %380, i32 0, i32 5
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %400

384:                                              ; preds = %379
  %385 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %386 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = icmp sgt i32 %387, 1
  br i1 %388, label %397, label %389

389:                                              ; preds = %384
  %390 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %391 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = icmp sgt i32 %392, 1
  br i1 %393, label %397, label %394

394:                                              ; preds = %389
  %395 = load i64, i64* @ql2xmqsupport, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %394, %389, %384
  %398 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %399 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %398, i32 0, i32 3
  store i32 1, i32* %399, align 4
  br label %400

400:                                              ; preds = %397, %394, %379
  br label %401

401:                                              ; preds = %400, %378
  %402 = load i32, i32* @ql_dbg_multiq, align 4
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %404 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %405 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %408 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %411 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @ql_dbg(i32 %402, %struct.TYPE_10__* %403, i32 49157, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %406, i32 %409, i32 %412)
  %414 = load i32, i32* @ql_dbg_init, align 4
  %415 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %416 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %417 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %416, i32 0, i32 5
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %420 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %423 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @ql_dbg(i32 %414, %struct.TYPE_10__* %415, i32 85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %418, i32 %421, i32 %424)
  br label %426

426:                                              ; preds = %428, %401, %328, %67
  %427 = load i32, i32* %6, align 4
  ret i32 %427

428:                                              ; preds = %152
  %429 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %430 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %429, i32 0, i32 4
  %431 = load i32, i32* %430, align 8
  %432 = call i32 @pci_free_irq_vectors(i32 %431)
  br label %426
}

declare dso_local %struct.TYPE_10__* @pci_get_drvdata(i32) #1

declare dso_local i64 @QLA_TGT_MODE_ENABLED(...) #1

declare dso_local i64 @IS_ATIO_MSIX_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @USER_CTRL_IRQ(%struct.qla_hw_data*) #1

declare dso_local i32 @pci_alloc_irq_vectors(i32, i32, i32, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors_affinity(i32, i32, i32, i32, %struct.irq_affinity*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @ql_dbg_pci(i32, i32, i32, i8*, i64) #1

declare dso_local %struct.qla_msix_entry* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.rsp_que*) #1

declare dso_local i32 @qla2x00_free_irqs(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_10__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
