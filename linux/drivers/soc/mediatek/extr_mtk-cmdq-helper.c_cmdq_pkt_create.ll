; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_pkt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_pkt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_pkt = type { i64, i32, %struct.cmdq_pkt*, i8* }
%struct.cmdq_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dma map failed, size=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmdq_pkt* @cmdq_pkt_create(%struct.cmdq_client* %0, i64 %1) #0 {
  %3 = alloca %struct.cmdq_pkt*, align 8
  %4 = alloca %struct.cmdq_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cmdq_pkt*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.cmdq_client* %0, %struct.cmdq_client** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i64 32, i32 %9)
  %11 = bitcast i8* %10 to %struct.cmdq_pkt*
  store %struct.cmdq_pkt* %11, %struct.cmdq_pkt** %6, align 8
  %12 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %13 = icmp ne %struct.cmdq_pkt* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.cmdq_pkt* @ERR_PTR(i32 %16)
  store %struct.cmdq_pkt* %17, %struct.cmdq_pkt** %3, align 8
  br label %82

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i64 %19, i32 %20)
  %22 = bitcast i8* %21 to %struct.cmdq_pkt*
  %23 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %24 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %23, i32 0, i32 2
  store %struct.cmdq_pkt* %22, %struct.cmdq_pkt** %24, align 8
  %25 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %26 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %25, i32 0, i32 2
  %27 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %26, align 8
  %28 = icmp ne %struct.cmdq_pkt* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %31 = call i32 @kfree(%struct.cmdq_pkt* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.cmdq_pkt* @ERR_PTR(i32 %33)
  store %struct.cmdq_pkt* %34, %struct.cmdq_pkt** %3, align 8
  br label %82

35:                                               ; preds = %18
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %38 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.cmdq_client*, %struct.cmdq_client** %4, align 8
  %40 = bitcast %struct.cmdq_client* %39 to i8*
  %41 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %42 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.cmdq_client*, %struct.cmdq_client** %4, align 8
  %44 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.device*, %struct.device** %48, align 8
  store %struct.device* %49, %struct.device** %7, align 8
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %52 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %51, i32 0, i32 2
  %53 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %52, align 8
  %54 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %55 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_map_single(%struct.device* %50, %struct.cmdq_pkt* %53, i64 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @dma_mapping_error(%struct.device* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %35
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = load i64, i64* %5, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %69 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %68, i32 0, i32 2
  %70 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %69, align 8
  %71 = call i32 @kfree(%struct.cmdq_pkt* %70)
  %72 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %73 = call i32 @kfree(%struct.cmdq_pkt* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.cmdq_pkt* @ERR_PTR(i32 %75)
  store %struct.cmdq_pkt* %76, %struct.cmdq_pkt** %3, align 8
  br label %82

77:                                               ; preds = %35
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  %80 = getelementptr inbounds %struct.cmdq_pkt, %struct.cmdq_pkt* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %6, align 8
  store %struct.cmdq_pkt* %81, %struct.cmdq_pkt** %3, align 8
  br label %82

82:                                               ; preds = %77, %63, %29, %14
  %83 = load %struct.cmdq_pkt*, %struct.cmdq_pkt** %3, align 8
  ret %struct.cmdq_pkt* %83
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local %struct.cmdq_pkt* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.cmdq_pkt*) #1

declare dso_local i32 @dma_map_single(%struct.device*, %struct.cmdq_pkt*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
