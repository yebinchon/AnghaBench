; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32*, i32, %struct.iss_device*, i32, %struct.TYPE_2__ }
%struct.iss_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iss_pipeline = type { i32 }

@CSI2_IRQSTATUS = common dso_local global i32 0, align 4
@CSI2_IRQ_COMPLEXIO_ERR = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CSI2: ComplexIO Error IRQ %x\0A\00", align 1
@CSI2_IRQ_OCP_ERR = common dso_local global i32 0, align 4
@CSI2_IRQ_SHORT_PACKET = common dso_local global i32 0, align 4
@CSI2_IRQ_ECC_NO_CORRECTION = common dso_local global i32 0, align 4
@CSI2_IRQ_FIFO_OVF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"CSI2 Err: OCP:%d SHORT:%d ECC:%d CPXIO:%d OVF:%d\0A\00", align 1
@CSI2_IRQ_CONTEXT0 = common dso_local global i32 0, align 4
@CSI2_IRQ_ECC_CORRECTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"CSI2: ECC correction done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap4iss_csi2_isr(%struct.iss_csi2_device* %0) #0 {
  %2 = alloca %struct.iss_csi2_device*, align 8
  %3 = alloca %struct.iss_pipeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iss_device*, align 8
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %2, align 8
  %7 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %8 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call %struct.iss_pipeline* @to_iss_pipeline(i32* %9)
  store %struct.iss_pipeline* %10, %struct.iss_pipeline** %3, align 8
  %11 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %12 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %11, i32 0, i32 2
  %13 = load %struct.iss_device*, %struct.iss_device** %12, align 8
  store %struct.iss_device* %13, %struct.iss_device** %6, align 8
  %14 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %15 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %138

19:                                               ; preds = %1
  %20 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %21 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %20, i32 0, i32 2
  %22 = load %struct.iss_device*, %struct.iss_device** %21, align 8
  %23 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %24 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CSI2_IRQSTATUS, align 4
  %27 = call i32 @iss_reg_read(%struct.iss_device* %22, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %29 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %28, i32 0, i32 2
  %30 = load %struct.iss_device*, %struct.iss_device** %29, align 8
  %31 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %32 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CSI2_IRQSTATUS, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @iss_reg_write(%struct.iss_device* %30, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CSI2_IRQ_COMPLEXIO_ERR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %19
  %42 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %43 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %42, i32 0, i32 2
  %44 = load %struct.iss_device*, %struct.iss_device** %43, align 8
  %45 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %46 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CSI2_COMPLEXIO_IRQSTATUS, align 4
  %49 = call i32 @iss_reg_read(%struct.iss_device* %44, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %51 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %50, i32 0, i32 2
  %52 = load %struct.iss_device*, %struct.iss_device** %51, align 8
  %53 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %54 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CSI2_COMPLEXIO_IRQSTATUS, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @iss_reg_write(%struct.iss_device* %52, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.iss_device*, %struct.iss_device** %6, align 8
  %60 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32, i8*, ...) @dev_dbg(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.iss_pipeline*, %struct.iss_pipeline** %3, align 8
  %65 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %41, %19
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @CSI2_IRQ_OCP_ERR, align 4
  %69 = load i32, i32* @CSI2_IRQ_SHORT_PACKET, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CSI2_IRQ_ECC_NO_CORRECTION, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @CSI2_IRQ_COMPLEXIO_ERR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CSI2_IRQ_FIFO_OVF, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %67, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %66
  %80 = load %struct.iss_device*, %struct.iss_device** %6, align 8
  %81 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @CSI2_IRQ_OCP_ERR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @CSI2_IRQ_SHORT_PACKET, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @CSI2_IRQ_ECC_NO_CORRECTION, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @CSI2_IRQ_COMPLEXIO_ERR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @CSI2_IRQ_FIFO_OVF, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = call i32 (i32, i8*, ...) @dev_dbg(i32 %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %94, i32 %100, i32 %106, i32 %112)
  %114 = load %struct.iss_pipeline*, %struct.iss_pipeline** %3, align 8
  %115 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %79, %66
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @CSI2_IRQ_CONTEXT0, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %123 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %2, align 8
  %124 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = call i32 @csi2_isr_ctx(%struct.iss_csi2_device* %122, i32* %126)
  br label %128

128:                                              ; preds = %121, %116
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @CSI2_IRQ_ECC_CORRECTION, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.iss_device*, %struct.iss_device** %6, align 8
  %135 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @dev_dbg(i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %18, %133, %128
  ret void
}

declare dso_local %struct.iss_pipeline* @to_iss_pipeline(i32*) #1

declare dso_local i32 @iss_reg_read(%struct.iss_device*, i32, i32) #1

declare dso_local i32 @iss_reg_write(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @csi2_isr_ctx(%struct.iss_csi2_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
