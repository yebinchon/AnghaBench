; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_isr_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_isr_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i64, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iss_csi2_ctx_cfg = type { i32, i32, i32 }
%struct.iss_pipeline = type { i32 }

@CSI2_CTX_IRQ_FS = common dso_local global i32 0, align 4
@CSI2_CTX_CTRL2_FRAME_SHIFT = common dso_local global i32 0, align 4
@CSI2_CTX_IRQ_FE = common dso_local global i32 0, align 4
@CSI2_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csi2_device*, %struct.iss_csi2_ctx_cfg*)* @csi2_isr_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_isr_ctx(%struct.iss_csi2_device* %0, %struct.iss_csi2_ctx_cfg* %1) #0 {
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca %struct.iss_csi2_ctx_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iss_pipeline*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  store %struct.iss_csi2_ctx_cfg* %1, %struct.iss_csi2_ctx_cfg** %4, align 8
  %10 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %11 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %14 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %17 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @CSI2_CTX_IRQSTATUS(i32 %19)
  %21 = call i32 @iss_reg_read(i32 %15, i32 %18, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %23 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %26 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @CSI2_CTX_IRQSTATUS(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @iss_reg_write(i32 %24, i32 %27, i32 %29, i32 %30)
  %32 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %33 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %32, i32 0, i32 6
  %34 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %35 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %34, i32 0, i32 5
  %36 = call i64 @omap4iss_module_sync_is_stopping(i32* %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %133

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CSI2_CTX_IRQ_FS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %91

44:                                               ; preds = %39
  %45 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %46 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call %struct.iss_pipeline* @to_iss_pipeline(i32* %47)
  store %struct.iss_pipeline* %48, %struct.iss_pipeline** %7, align 8
  %49 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %50 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %53 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CSI2_CTX_CTRL2(i32 %57)
  %59 = call i32 @iss_reg_read(i32 %51, i32 %54, i32 %58)
  %60 = load i32, i32* @CSI2_CTX_CTRL2_FRAME_SHIFT, align 4
  %61 = ashr i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %44
  %65 = load %struct.iss_pipeline*, %struct.iss_pipeline** %7, align 8
  %66 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %65, i32 0, i32 0
  %67 = call i32 @atomic_inc(i32* %66)
  br label %90

68:                                               ; preds = %44
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %71 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %76 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %68
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %85 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.iss_pipeline*, %struct.iss_pipeline** %7, align 8
  %88 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %87, i32 0, i32 0
  %89 = call i32 @atomic_add(i32 %86, i32* %88)
  br label %90

90:                                               ; preds = %82, %64
  br label %91

91:                                               ; preds = %90, %39
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @CSI2_CTX_IRQ_FE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %133

97:                                               ; preds = %91
  %98 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %99 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %97
  %103 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %104 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %108 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %113 = call i32 @csi2_ctx_map_format(%struct.iss_csi2_device* %112)
  %114 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %115 = getelementptr inbounds %struct.iss_csi2_ctx_cfg, %struct.iss_csi2_ctx_cfg* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %117 = load %struct.iss_csi2_ctx_cfg*, %struct.iss_csi2_ctx_cfg** %4, align 8
  %118 = call i32 @csi2_ctx_config(%struct.iss_csi2_device* %116, %struct.iss_csi2_ctx_cfg* %117)
  %119 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @csi2_ctx_enable(%struct.iss_csi2_device* %119, i32 %120, i32 1)
  br label %122

122:                                              ; preds = %111, %102
  br label %133

123:                                              ; preds = %97
  %124 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %125 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CSI2_OUTPUT_MEMORY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %132 = call i32 @csi2_isr_buffer(%struct.iss_csi2_device* %131)
  br label %133

133:                                              ; preds = %38, %96, %122, %130, %123
  ret void
}

declare dso_local i32 @iss_reg_read(i32, i32, i32) #1

declare dso_local i32 @CSI2_CTX_IRQSTATUS(i32) #1

declare dso_local i32 @iss_reg_write(i32, i32, i32, i32) #1

declare dso_local i64 @omap4iss_module_sync_is_stopping(i32*, i32*) #1

declare dso_local %struct.iss_pipeline* @to_iss_pipeline(i32*) #1

declare dso_local i32 @CSI2_CTX_CTRL2(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @csi2_ctx_map_format(%struct.iss_csi2_device*) #1

declare dso_local i32 @csi2_ctx_config(%struct.iss_csi2_device*, %struct.iss_csi2_ctx_cfg*) #1

declare dso_local i32 @csi2_ctx_enable(%struct.iss_csi2_device*, i32, i32) #1

declare dso_local i32 @csi2_isr_buffer(%struct.iss_csi2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
