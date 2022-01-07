; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_init_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_init_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iudma_ch_cfg = type { i32, i64 }
%struct.bcm63xx_udc = type { i32, %struct.bcm63xx_ep*, %struct.iudma_ch* }
%struct.bcm63xx_ep = type { i32, %struct.iudma_ch* }
%struct.iudma_ch = type { i64, i32, i32, i32, i32, i32*, i32*, i32, %struct.bcm63xx_udc*, %struct.bcm63xx_ep* }

@iudma_defaults = common dso_local global %struct.iudma_ch_cfg* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*, i32)* @iudma_init_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iudma_init_channel(%struct.bcm63xx_udc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm63xx_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iudma_ch*, align 8
  %7 = alloca %struct.iudma_ch_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm63xx_ep*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %11 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %10, i32 0, i32 2
  %12 = load %struct.iudma_ch*, %struct.iudma_ch** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %12, i64 %14
  store %struct.iudma_ch* %15, %struct.iudma_ch** %6, align 8
  %16 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** @iudma_defaults, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %16, i64 %18
  store %struct.iudma_ch_cfg* %19, %struct.iudma_ch_cfg** %7, align 8
  %20 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %7, align 8
  %21 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  store %struct.bcm63xx_ep* null, %struct.bcm63xx_ep** %9, align 8
  %23 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %7, align 8
  %24 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %27 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %30 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %38 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %40 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %2
  %44 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %45 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %44, i32 0, i32 1
  %46 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %45, align 8
  %47 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %48 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %46, i64 %49
  store %struct.bcm63xx_ep* %50, %struct.bcm63xx_ep** %9, align 8
  %51 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %52 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %9, align 8
  %53 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %52, i32 0, i32 1
  store %struct.iudma_ch* %51, %struct.iudma_ch** %53, align 8
  %54 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %9, align 8
  %55 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %54, i32 0, i32 0
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  br label %57

57:                                               ; preds = %43, %2
  %58 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %9, align 8
  %59 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %60 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %59, i32 0, i32 9
  store %struct.bcm63xx_ep* %58, %struct.bcm63xx_ep** %60, align 8
  %61 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %62 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %63 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %62, i32 0, i32 8
  store %struct.bcm63xx_udc* %61, %struct.bcm63xx_udc** %63, align 8
  %64 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %65 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ule i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %70 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %69, i32 0, i32 3
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %57
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %74 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %76 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %83 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %82, i32 0, i32 7
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32* @dmam_alloc_coherent(i32 %77, i32 %81, i32* %83, i32 %84)
  %86 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %87 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %86, i32 0, i32 5
  store i32* %85, i32** %87, align 8
  %88 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %89 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %71
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %105

95:                                               ; preds = %71
  %96 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %97 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sub i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load %struct.iudma_ch*, %struct.iudma_ch** %6, align 8
  %104 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %103, i32 0, i32 6
  store i32* %102, i32** %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %95, %92
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @dmam_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
