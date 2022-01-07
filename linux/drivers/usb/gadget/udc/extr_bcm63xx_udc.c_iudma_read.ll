; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32 }
%struct.iudma_ch = type { i32, %struct.bcm_enet_desc*, %struct.bcm_enet_desc*, %struct.bcm_enet_desc* }
%struct.bcm_enet_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMADESC_OWNER_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMADESC_LENGTH_MASK = common dso_local global i32 0, align 4
@DMADESC_LENGTH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*, %struct.iudma_ch*)* @iudma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iudma_read(%struct.bcm63xx_udc* %0, %struct.iudma_ch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm63xx_udc*, align 8
  %5 = alloca %struct.iudma_ch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm_enet_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %4, align 8
  store %struct.iudma_ch* %1, %struct.iudma_ch** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.iudma_ch*, %struct.iudma_ch** %5, align 8
  %11 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %10, i32 0, i32 1
  %12 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %11, align 8
  store %struct.bcm_enet_desc* %12, %struct.bcm_enet_desc** %8, align 8
  %13 = load %struct.iudma_ch*, %struct.iudma_ch** %5, align 8
  %14 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.iudma_ch*, %struct.iudma_ch** %5, align 8
  %24 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %29 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DMADESC_OWNER_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %69

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @DMADESC_LENGTH_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @DMADESC_LENGTH_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %47 = load %struct.iudma_ch*, %struct.iudma_ch** %5, align 8
  %48 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %47, i32 0, i32 3
  %49 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %48, align 8
  %50 = icmp eq %struct.bcm_enet_desc* %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.iudma_ch*, %struct.iudma_ch** %5, align 8
  %53 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %52, i32 0, i32 2
  %54 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %53, align 8
  store %struct.bcm_enet_desc* %54, %struct.bcm_enet_desc** %8, align 8
  br label %58

55:                                               ; preds = %38
  %56 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %57 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %56, i32 1
  store %struct.bcm_enet_desc* %57, %struct.bcm_enet_desc** %8, align 8
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %21

62:                                               ; preds = %21
  %63 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %64 = load %struct.iudma_ch*, %struct.iudma_ch** %5, align 8
  %65 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %64, i32 0, i32 1
  store %struct.bcm_enet_desc* %63, %struct.bcm_enet_desc** %65, align 8
  %66 = load %struct.iudma_ch*, %struct.iudma_ch** %5, align 8
  %67 = getelementptr inbounds %struct.iudma_ch, %struct.iudma_ch* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %35, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
