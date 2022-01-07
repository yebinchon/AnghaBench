; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c_rtl92e_stop_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c_rtl92e_stop_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32 (%struct.net_device*, i32, i32*)* }

@RT_OP_MODE_NO_LINK = common dso_local global i32 0, align 4
@HW_VAR_MEDIA_STATUS = common dso_local global i32 0, align 4
@CMDR = common dso_local global i32 0, align 4
@CPU_GEN = common dso_local global i32 0, align 4
@CPU_GEN_SYSTEM_RESET = common dso_local global i32 0, align 4
@WFCRC0 = common dso_local global i32 0, align 4
@WFCRC1 = common dso_local global i32 0, align 4
@WFCRC2 = common dso_local global i32 0, align 4
@PMR = common dso_local global i32 0, align 4
@MacBlkCtrl = common dso_local global i32 0, align 4
@MAX_QUEUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_stop_adapter(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %5, align 8
  %12 = load i32, i32* @RT_OP_MODE_NO_LINK, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load i32, i32* @HW_VAR_MEDIA_STATUS, align 4
  %20 = call i32 %17(%struct.net_device* %18, i32 %19, i32* %7)
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load i32, i32* @CMDR, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @rtl92e_writeb(%struct.net_device* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %2
  %33 = call i32 @mdelay(i32 20)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %32
  %37 = call i32 @mdelay(i32 150)
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 0
  store i32 2, i32* %39, align 8
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %36
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @rtl92e_set_rf_off(%struct.net_device* %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load i32, i32* @CPU_GEN, align 4
  %51 = call i32 @rtl92e_readl(%struct.net_device* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @CPU_GEN_SYSTEM_RESET, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load i32, i32* @CPU_GEN, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @rtl92e_writel(%struct.net_device* %55, i32 %56, i32 %57)
  br label %75

59:                                               ; preds = %36
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load i32, i32* @WFCRC0, align 4
  %62 = call i32 @rtl92e_writel(%struct.net_device* %60, i32 %61, i32 -1)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load i32, i32* @WFCRC1, align 4
  %65 = call i32 @rtl92e_writel(%struct.net_device* %63, i32 %64, i32 -1)
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load i32, i32* @WFCRC2, align 4
  %68 = call i32 @rtl92e_writel(%struct.net_device* %66, i32 %67, i32 -1)
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = load i32, i32* @PMR, align 4
  %71 = call i32 @rtl92e_writeb(%struct.net_device* %69, i32 %70, i32 5)
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = load i32, i32* @MacBlkCtrl, align 4
  %74 = call i32 @rtl92e_writeb(%struct.net_device* %72, i32 %73, i32 10)
  br label %75

75:                                               ; preds = %59, %46
  br label %76

76:                                               ; preds = %75, %32
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @MAX_QUEUE_SIZE, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %83 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @skb_queue_purge(i32* %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %77

94:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %109, %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @MAX_QUEUE_SIZE, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %101 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i32 @skb_queue_purge(i32* %107)
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %95

112:                                              ; preds = %95
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 1
  %115 = call i32 @skb_queue_purge(i32* %114)
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl92e_set_rf_off(%struct.net_device*) #1

declare dso_local i32 @rtl92e_readl(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_writel(%struct.net_device*, i32, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
