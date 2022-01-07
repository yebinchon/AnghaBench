; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_get_ff_hwaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_get_ff_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_frame = type { i64, %struct._adapter*, %struct.pkt_attrib }
%struct._adapter = type { %struct.dvobj_priv }
%struct.dvobj_priv = type { i32 }
%struct.pkt_attrib = type { i32, i32 }

@TXAGG_FRAMETAG = common dso_local global i64 0, align 8
@RTL8712_DMA_H2CCMD = common dso_local global i32 0, align 4
@MGNT_FRAMETAG = common dso_local global i64 0, align 8
@RTL8712_DMA_MGTQ = common dso_local global i32 0, align 4
@RTL8712_DMA_BEQ = common dso_local global i32 0, align 4
@RTL8712_DMA_BKQ = common dso_local global i32 0, align 4
@RTL8712_DMA_VIQ = common dso_local global i32 0, align 4
@RTL8712_DMA_VOQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xmit_frame*)* @get_ff_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ff_hwaddr(%struct.xmit_frame* %0) #0 {
  %2 = alloca %struct.xmit_frame*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca %struct.dvobj_priv*, align 8
  store %struct.xmit_frame* %0, %struct.xmit_frame** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.xmit_frame*, %struct.xmit_frame** %2, align 8
  %8 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %7, i32 0, i32 2
  store %struct.pkt_attrib* %8, %struct.pkt_attrib** %4, align 8
  %9 = load %struct.xmit_frame*, %struct.xmit_frame** %2, align 8
  %10 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %9, i32 0, i32 1
  %11 = load %struct._adapter*, %struct._adapter** %10, align 8
  store %struct._adapter* %11, %struct._adapter** %5, align 8
  %12 = load %struct._adapter*, %struct._adapter** %5, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 0
  store %struct.dvobj_priv* %13, %struct.dvobj_priv** %6, align 8
  %14 = load %struct.xmit_frame*, %struct.xmit_frame** %2, align 8
  %15 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TXAGG_FRAMETAG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @RTL8712_DMA_H2CCMD, align 4
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load %struct.xmit_frame*, %struct.xmit_frame** %2, align 8
  %23 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MGNT_FRAMETAG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @RTL8712_DMA_MGTQ, align 4
  store i32 %28, i32* %3, align 4
  br label %71

29:                                               ; preds = %21
  %30 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %31 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %36 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %48 [
    i32 0, label %38
    i32 3, label %38
    i32 1, label %40
    i32 2, label %40
    i32 4, label %42
    i32 5, label %42
    i32 6, label %44
    i32 7, label %44
    i32 16, label %46
    i32 17, label %46
    i32 18, label %46
    i32 19, label %46
  ]

38:                                               ; preds = %34, %34
  %39 = load i32, i32* @RTL8712_DMA_BEQ, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %34, %34
  %41 = load i32, i32* @RTL8712_DMA_BKQ, align 4
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %34, %34
  %43 = load i32, i32* @RTL8712_DMA_VIQ, align 4
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %34, %34
  %45 = load i32, i32* @RTL8712_DMA_VOQ, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %34, %34, %34, %34
  %47 = load i32, i32* @RTL8712_DMA_H2CCMD, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @RTL8712_DMA_BEQ, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %46, %44, %42, %40, %38
  br label %70

51:                                               ; preds = %29
  %52 = load %struct.dvobj_priv*, %struct.dvobj_priv** %6, align 8
  %53 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %58 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %66 [
    i32 0, label %60
    i32 3, label %60
    i32 1, label %60
    i32 2, label %60
    i32 4, label %62
    i32 5, label %62
    i32 6, label %62
    i32 7, label %62
    i32 16, label %64
    i32 17, label %64
    i32 18, label %64
    i32 19, label %64
  ]

60:                                               ; preds = %56, %56, %56, %56
  %61 = load i32, i32* @RTL8712_DMA_BEQ, align 4
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %56, %56, %56, %56
  %63 = load i32, i32* @RTL8712_DMA_VOQ, align 4
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %56, %56, %56, %56
  %65 = load i32, i32* @RTL8712_DMA_H2CCMD, align 4
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @RTL8712_DMA_BEQ, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %64, %62, %60
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %27
  br label %72

72:                                               ; preds = %71, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
