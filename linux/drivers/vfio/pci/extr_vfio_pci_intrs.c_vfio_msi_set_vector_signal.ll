; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_msi_set_vector_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_msi_set_vector_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, %struct.TYPE_4__*, %struct.pci_dev* }
%struct.TYPE_4__ = type { %struct.eventfd_ctx*, %struct.TYPE_5__, i32 }
%struct.eventfd_ctx = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.eventfd_ctx* }
%struct.pci_dev = type { i32 }
%struct.msi_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vfio-msi%s[%d](%s)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@vfio_msihandler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"irq bypass producer (token %p) registration fails: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, i32)* @vfio_msi_set_vector_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_msi_set_vector_signal(%struct.vfio_pci_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfio_pci_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.eventfd_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.msi_msg, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %16 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %15, i32 0, i32 2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %23 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %226

29:                                               ; preds = %20
  %30 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @pci_irq_vector(%struct.pci_dev* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %34 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %39, align 8
  %41 = icmp ne %struct.eventfd_ctx* %40, null
  br i1 %41, label %42, label %86

42:                                               ; preds = %29
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %45 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %50, align 8
  %52 = call i32 @free_irq(i32 %43, %struct.eventfd_ctx* %51)
  %53 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %54 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i32 @irq_bypass_unregister_producer(%struct.TYPE_5__* %59)
  %61 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %62 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @kfree(i32 %68)
  %70 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %71 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %76, align 8
  %78 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %77)
  %79 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %80 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store %struct.eventfd_ctx* null, %struct.eventfd_ctx** %85, align 8
  br label %86

86:                                               ; preds = %42, %29
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %226

90:                                               ; preds = %86
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %98 = call i32 @pci_name(%struct.pci_dev* %97)
  %99 = call i32 @kasprintf(i32 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %95, i32 %96, i32 %98)
  %100 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %101 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %99, i32* %106, align 8
  %107 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %108 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %90
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %226

119:                                              ; preds = %90
  %120 = load i32, i32* %8, align 4
  %121 = call %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 %120)
  store %struct.eventfd_ctx* %121, %struct.eventfd_ctx** %11, align 8
  %122 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %123 = call i64 @IS_ERR(%struct.eventfd_ctx* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %127 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @kfree(i32 %133)
  %135 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %136 = call i32 @PTR_ERR(%struct.eventfd_ctx* %135)
  store i32 %136, i32* %5, align 4
  br label %226

137:                                              ; preds = %119
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @get_cached_msi_msg(i32 %141, %struct.msi_msg* %14)
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @pci_write_msi_msg(i32 %143, %struct.msi_msg* %14)
  br label %145

145:                                              ; preds = %140, %137
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @vfio_msihandler, align 4
  %148 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %149 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %157 = call i32 @request_irq(i32 %146, i32 %147, i32 0, i32 %155, %struct.eventfd_ctx* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %145
  %161 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %162 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @kfree(i32 %168)
  %170 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %171 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %170)
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %5, align 4
  br label %226

173:                                              ; preds = %145
  %174 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %175 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %176 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  store %struct.eventfd_ctx* %174, %struct.eventfd_ctx** %182, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %185 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  store i32 %183, i32* %191, align 8
  %192 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %193 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %192, i32 0, i32 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = call i32 @irq_bypass_register_producer(%struct.TYPE_5__* %198)
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i64 @unlikely(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %173
  %204 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %205 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %204, i32 0, i32 0
  %206 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %207 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %206, i32 0, i32 1
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @dev_info(i32* %205, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), %struct.eventfd_ctx* %214, i32 %215)
  br label %217

217:                                              ; preds = %203, %173
  %218 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %219 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %220 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %219, i32 0, i32 1
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  store %struct.eventfd_ctx* %218, %struct.eventfd_ctx** %225, align 8
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %217, %160, %125, %116, %89, %26
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.eventfd_ctx*) #1

declare dso_local i32 @irq_bypass_unregister_producer(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @eventfd_ctx_put(%struct.eventfd_ctx*) #1

declare dso_local i32 @kasprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32) #1

declare dso_local i64 @IS_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @get_cached_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @pci_write_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.eventfd_ctx*) #1

declare dso_local i32 @irq_bypass_register_producer(%struct.TYPE_5__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, %struct.eventfd_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
