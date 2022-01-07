; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32, i32, %struct.iss_csi2_device, %struct.iss_csi2_device }
%struct.iss_csi2_device = type { i32, i32, i8*, i32, i32*, i32, %struct.iss_device* }

@OMAP4_ISS_MEM_CSI2_A_REGS1 = common dso_local global i32 0, align 4
@OMAP4_ISS_SUBCLK_CSI2_A = common dso_local global i32 0, align 4
@ISS_PIPELINE_STREAM_STOPPED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@OMAP4_ISS_MEM_CSI2_B_REGS1 = common dso_local global i32 0, align 4
@OMAP4_ISS_SUBCLK_CSI2_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_csi2_init(%struct.iss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca %struct.iss_csi2_device*, align 8
  %5 = alloca %struct.iss_csi2_device*, align 8
  %6 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %3, align 8
  %7 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %8 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %7, i32 0, i32 3
  store %struct.iss_csi2_device* %8, %struct.iss_csi2_device** %4, align 8
  %9 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %10 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %9, i32 0, i32 2
  store %struct.iss_csi2_device* %10, %struct.iss_csi2_device** %5, align 8
  %11 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %12 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %13 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %12, i32 0, i32 6
  store %struct.iss_device* %11, %struct.iss_device** %13, align 8
  %14 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %15 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* @OMAP4_ISS_MEM_CSI2_A_REGS1, align 4
  %17 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %18 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %20 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %19, i32 0, i32 1
  %21 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %22 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %21, i32 0, i32 4
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @OMAP4_ISS_SUBCLK_CSI2_A, align 4
  %24 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %25 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @ISS_PIPELINE_STREAM_STOPPED, align 8
  %27 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %28 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %30 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %29, i32 0, i32 1
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %33 = call i32 @csi2_init_entities(%struct.iss_csi2_device* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %1
  %39 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %40 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %41 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %40, i32 0, i32 6
  store %struct.iss_device* %39, %struct.iss_device** %41, align 8
  %42 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %43 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @OMAP4_ISS_MEM_CSI2_B_REGS1, align 4
  %45 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %46 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %48 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %47, i32 0, i32 0
  %49 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %50 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* @OMAP4_ISS_SUBCLK_CSI2_B, align 4
  %52 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %53 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @ISS_PIPELINE_STREAM_STOPPED, align 8
  %55 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %56 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %58 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %57, i32 0, i32 1
  %59 = call i32 @init_waitqueue_head(i32* %58)
  %60 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %61 = call i32 @csi2_init_entities(%struct.iss_csi2_device* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %38
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %64, %36
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @csi2_init_entities(%struct.iss_csi2_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
