; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_update_msr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_update_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.net_device*, i32)*, i32 }

@LED_CTL_NO_LINK = common dso_local global i32 0, align 4
@MSR = common dso_local global i32 0, align 4
@MSR_LINK_MASK = common dso_local global i32 0, align 4
@RTLLIB_LINKED = common dso_local global i32 0, align 4
@MSR_LINK_MANAGED = common dso_local global i32 0, align 4
@MSR_LINK_SHIFT = common dso_local global i32 0, align 4
@MSR_LINK_NONE = common dso_local global i32 0, align 4
@LED_CTL_LINK = common dso_local global i32 0, align 4
@MSR_LINK_ADHOC = common dso_local global i32 0, align 4
@MSR_LINK_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_update_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_update_msr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  %8 = load i32, i32* @LED_CTL_NO_LINK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @MSR, align 4
  %11 = call i32 @rtl92e_readb(%struct.net_device* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MSR_LINK_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %85 [
    i32 129, label %21
    i32 130, label %43
    i32 128, label %64
  ]

21:                                               ; preds = %1
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RTLLIB_LINKED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @MSR_LINK_MANAGED, align 4
  %31 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %21
  %36 = load i32, i32* @MSR_LINK_NONE, align 4
  %37 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %42, i32* %5, align 4
  br label %86

43:                                               ; preds = %1
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RTLLIB_LINKED, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32, i32* @MSR_LINK_ADHOC, align 4
  %53 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %63

57:                                               ; preds = %43
  %58 = load i32, i32* @MSR_LINK_NONE, align 4
  %59 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %51
  br label %86

64:                                               ; preds = %1
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RTLLIB_LINKED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* @MSR_LINK_MASTER, align 4
  %74 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %84

78:                                               ; preds = %64
  %79 = load i32, i32* @MSR_LINK_NONE, align 4
  %80 = load i32, i32* @MSR_LINK_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %72
  br label %86

85:                                               ; preds = %1
  br label %86

86:                                               ; preds = %85, %84, %63, %41
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = load i32, i32* @MSR, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @rtl92e_writeb(%struct.net_device* %87, i32 %88, i32 %89)
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %94, align 8
  %96 = icmp ne i32 (%struct.net_device*, i32)* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %86
  %98 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %99 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %101, align 8
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 %102(%struct.net_device* %103, i32 %104)
  br label %106

106:                                              ; preds = %97, %86
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_readb(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
