; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32, i32, i32, i32, i32 }

@BIT_RFF_OR_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Rx fifo overflow\0A\00", align 1
@BIT_HRESP_ERR_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Hresponse error detected\0A\00", align 1
@BIT_ADDR_CH_ERR_INT = common dso_local global i32 0, align 4
@BIT_DMA_TSF_DONE_FB1 = common dso_local global i32 0, align 4
@BIT_DMA_TSF_DONE_FB2 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx7_csi_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx7_csi*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.imx7_csi*
  store %struct.imx7_csi* %8, %struct.imx7_csi** %5, align 8
  %9 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %10 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %13 = call i32 @imx7_csi_irq_clear(%struct.imx7_csi* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BIT_RFF_OR_INT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %20 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %24 = call i32 @imx7_csi_error_recovery(%struct.imx7_csi* %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BIT_HRESP_ERR_INT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %32 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %36 = call i32 @imx7_csi_error_recovery(%struct.imx7_csi* %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @BIT_ADDR_CH_ERR_INT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %44 = call i32 @imx7_csi_hw_disable(%struct.imx7_csi* %43)
  %45 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %46 = call i32 @imx7_csi_dma_reflash(%struct.imx7_csi* %45)
  %47 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %48 = call i32 @imx7_csi_hw_enable(%struct.imx7_csi* %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @BIT_DMA_TSF_DONE_FB1, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @BIT_DMA_TSF_DONE_FB2, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %78

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @BIT_DMA_TSF_DONE_FB1, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %67 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  br label %77

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @BIT_DMA_TSF_DONE_FB2, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %75 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %59
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @BIT_DMA_TSF_DONE_FB1, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @BIT_DMA_TSF_DONE_FB2, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83, %78
  %89 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %90 = call i32 @imx7_csi_vb2_buf_done(%struct.imx7_csi* %89)
  %91 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %92 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %97 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %96, i32 0, i32 3
  %98 = call i32 @complete(i32* %97)
  %99 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %100 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %88
  br label %102

102:                                              ; preds = %101, %83
  %103 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %104 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %103, i32 0, i32 2
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %106
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @imx7_csi_irq_clear(%struct.imx7_csi*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @imx7_csi_error_recovery(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_hw_disable(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_dma_reflash(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_hw_enable(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_vb2_buf_done(%struct.imx7_csi*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
