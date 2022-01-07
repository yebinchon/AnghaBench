; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, %struct.tx_desc* }
%struct.tx_desc = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot allocate TX ring (prio = %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @_rtl92e_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_alloc_tx_ring(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r8192_priv*, align 8
  %9 = alloca %struct.tx_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %8, align 8
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.tx_desc* @pci_zalloc_consistent(i32 %16, i32 %20, i64* %10)
  store %struct.tx_desc* %21, %struct.tx_desc** %9, align 8
  %22 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %23 = icmp ne %struct.tx_desc* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %26 = ptrtoint %struct.tx_desc* %25 to i64
  %27 = and i64 %26, 255
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24, %3
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @netdev_warn(%struct.net_device* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %97

35:                                               ; preds = %24
  %36 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store %struct.tx_desc* %36, %struct.tx_desc** %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i64 %44, i64* %51, align 8
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %59, i32* %66, align 8
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = call i32 @skb_queue_head_init(i32* %73)
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %93, %35
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %7, align 4
  %84 = urem i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = add i64 %80, %86
  %88 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %88, i64 %90
  %92 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %91, i32 0, i32 0
  store i64 %87, i64* %92, align 8
  br label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %75

96:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %29
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local %struct.tx_desc* @pci_zalloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
