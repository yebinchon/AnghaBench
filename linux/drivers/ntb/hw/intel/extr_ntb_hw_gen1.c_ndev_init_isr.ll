; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_init_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_init_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32, i32, i32, i32, %struct.intel_ntb_dev*, %struct.intel_ntb_dev*, i32, %struct.intel_ntb_dev*, %struct.TYPE_6__*, i64, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i32, i64)* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ndev_vec_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ndev_vec_isr\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Using %d msix interrupts\0A\00", align 1
@ndev_irq_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ndev_irq_isr\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Using msi interrupts\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Using intx interrupts\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndev_init_isr(%struct.intel_ntb_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_ntb_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %18 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %17, i32 0, i32 13
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %12, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @dev_to_node(i32* %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %25 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %28 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %30 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %29, i32 0, i32 11
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (i32, i64)*, i32 (i32, i64)** %32, align 8
  %34 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %35 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %38 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %41 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %40, i32 0, i32 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %39, %44
  %46 = call i32 %33(i32 %36, i64 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i8* @kcalloc_node(i32 %47, i32 96, i32 %48, i32 %49)
  %51 = bitcast i8* %50 to %struct.intel_ntb_dev*
  %52 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %53 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %52, i32 0, i32 4
  store %struct.intel_ntb_dev* %51, %struct.intel_ntb_dev** %53, align 8
  %54 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %55 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %54, i32 0, i32 4
  %56 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %55, align 8
  %57 = icmp ne %struct.intel_ntb_dev* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %5
  br label %190

59:                                               ; preds = %5
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i8* @kcalloc_node(i32 %60, i32 96, i32 %61, i32 %62)
  %64 = bitcast i8* %63 to %struct.intel_ntb_dev*
  %65 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %66 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %65, i32 0, i32 5
  store %struct.intel_ntb_dev* %64, %struct.intel_ntb_dev** %66, align 8
  %67 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %68 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %67, i32 0, i32 5
  %69 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %68, align 8
  %70 = icmp ne %struct.intel_ntb_dev* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %59
  br label %185

72:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %86, %72
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %80 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %79, i32 0, i32 5
  %81 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %81, i64 %83
  %85 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 8
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %73

89:                                               ; preds = %73
  %90 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %91 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %92 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %91, i32 0, i32 5
  %93 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @pci_enable_msix_range(%struct.pci_dev* %90, %struct.intel_ntb_dev* %93, i32 %94, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %180

100:                                              ; preds = %89
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %142, %100
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %145

105:                                              ; preds = %101
  %106 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %107 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %108 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %107, i32 0, i32 4
  %109 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %109, i64 %111
  %113 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %112, i32 0, i32 7
  store %struct.intel_ntb_dev* %106, %struct.intel_ntb_dev** %113, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %116 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %115, i32 0, i32 4
  %117 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %117, i64 %119
  %121 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %120, i32 0, i32 1
  store i32 %114, i32* %121, align 4
  %122 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %123 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %122, i32 0, i32 5
  %124 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %124, i64 %126
  %128 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ndev_vec_isr, align 4
  %131 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %132 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %131, i32 0, i32 4
  %133 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %133, i64 %135
  %137 = call i32 @request_irq(i32 %129, i32 %130, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.intel_ntb_dev* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %105
  br label %156

141:                                              ; preds = %105
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %101

145:                                              ; preds = %101
  %146 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %15, align 4
  %149 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %152 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %155 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  store i32 0, i32* %6, align 4
  br label %246

156:                                              ; preds = %140
  br label %157

157:                                              ; preds = %161, %156
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %14, align 4
  %160 = icmp sgt i32 %158, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %163 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %162, i32 0, i32 5
  %164 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %164, i64 %166
  %168 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %171 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %170, i32 0, i32 4
  %172 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %172, i64 %174
  %176 = call i32 @free_irq(i32 %169, %struct.intel_ntb_dev* %175)
  br label %157

177:                                              ; preds = %157
  %178 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %179 = call i32 @pci_disable_msix(%struct.pci_dev* %178)
  br label %180

180:                                              ; preds = %177, %99
  %181 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %182 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %181, i32 0, i32 5
  %183 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %182, align 8
  %184 = call i32 @kfree(%struct.intel_ntb_dev* %183)
  br label %185

185:                                              ; preds = %180, %71
  %186 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %187 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %186, i32 0, i32 4
  %188 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %187, align 8
  %189 = call i32 @kfree(%struct.intel_ntb_dev* %188)
  br label %190

190:                                              ; preds = %185, %58
  %191 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %192 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %191, i32 0, i32 5
  store %struct.intel_ntb_dev* null, %struct.intel_ntb_dev** %192, align 8
  %193 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %194 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %193, i32 0, i32 4
  store %struct.intel_ntb_dev* null, %struct.intel_ntb_dev** %194, align 8
  %195 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %196 = call i32 @pci_enable_msi(%struct.pci_dev* %195)
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %222

200:                                              ; preds = %190
  %201 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %202 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ndev_irq_isr, align 4
  %205 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %206 = call i32 @request_irq(i32 %203, i32 %204, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.intel_ntb_dev* %205)
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  br label %219

210:                                              ; preds = %200
  %211 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %212 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %211, i32 0, i32 0
  %213 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %212, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %214 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %215 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %214, i32 0, i32 2
  store i32 1, i32* %215, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %218 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  store i32 0, i32* %6, align 4
  br label %246

219:                                              ; preds = %209
  %220 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %221 = call i32 @pci_disable_msi(%struct.pci_dev* %220)
  br label %222

222:                                              ; preds = %219, %199
  %223 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %224 = call i32 @pci_intx(%struct.pci_dev* %223, i32 1)
  %225 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %226 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @ndev_irq_isr, align 4
  %229 = load i32, i32* @IRQF_SHARED, align 4
  %230 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %231 = call i32 @request_irq(i32 %227, i32 %228, i32 %229, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.intel_ntb_dev* %230)
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %13, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %222
  br label %244

235:                                              ; preds = %222
  %236 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %237 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %236, i32 0, i32 0
  %238 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %237, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %239 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %240 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %239, i32 0, i32 2
  store i32 1, i32* %240, align 8
  %241 = load i32, i32* %11, align 4
  %242 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %7, align 8
  %243 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  store i32 0, i32* %6, align 4
  br label %246

244:                                              ; preds = %234
  %245 = load i32, i32* %13, align 4
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %244, %235, %210, %145
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i8* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_range(%struct.pci_dev*, %struct.intel_ntb_dev*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.intel_ntb_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @free_irq(i32, %struct.intel_ntb_dev*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.intel_ntb_dev*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_intx(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
