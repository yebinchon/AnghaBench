; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_xmit_linux.c_r8712_xmit_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_xmit_linux.c_r8712_xmit_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xmit_frame = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }
%struct._adapter = type { %struct.TYPE_3__, %struct.xmit_priv }
%struct.TYPE_3__ = type { i32 (%struct._adapter.0*, i32)* }
%struct._adapter.0 = type opaque
%struct.xmit_priv = type { i32, i32, i32 }

@LED_CTL_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_xmit_entry(i32* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xmit_frame*, align 8
  %7 = alloca %struct._adapter*, align 8
  %8 = alloca %struct.xmit_priv*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.xmit_frame* null, %struct.xmit_frame** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct._adapter* @netdev_priv(%struct.net_device* %9)
  store %struct._adapter* %10, %struct._adapter** %7, align 8
  %11 = load %struct._adapter*, %struct._adapter** %7, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 1
  store %struct.xmit_priv* %12, %struct.xmit_priv** %8, align 8
  %13 = load %struct._adapter*, %struct._adapter** %7, align 8
  %14 = call i32 @r8712_if_up(%struct._adapter* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %19 = call %struct.xmit_frame* @r8712_alloc_xmitframe(%struct.xmit_priv* %18)
  store %struct.xmit_frame* %19, %struct.xmit_frame** %6, align 8
  %20 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %21 = icmp ne %struct.xmit_frame* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %67

23:                                               ; preds = %17
  %24 = load %struct._adapter*, %struct._adapter** %7, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %27 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %26, i32 0, i32 0
  %28 = call i64 @r8712_update_attrib(%struct._adapter* %24, i32* %25, %struct.TYPE_4__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %67

31:                                               ; preds = %23
  %32 = load %struct._adapter*, %struct._adapter** %7, align 8
  %33 = getelementptr inbounds %struct._adapter, %struct._adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %34, align 8
  %36 = load %struct._adapter*, %struct._adapter** %7, align 8
  %37 = bitcast %struct._adapter* %36 to %struct._adapter.0*
  %38 = load i32, i32* @LED_CTL_TX, align 4
  %39 = call i32 %35(%struct._adapter.0* %37, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %42 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct._adapter*, %struct._adapter** %7, align 8
  %44 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %45 = call i64 @r8712_pre_xmit(%struct._adapter* %43, %struct.xmit_frame* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @dev_kfree_skb_any(i32* %48)
  %50 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %51 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %31
  %53 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %54 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %58 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %62 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %81

67:                                               ; preds = %30, %22, %16
  %68 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %69 = icmp ne %struct.xmit_frame* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %72 = load %struct.xmit_frame*, %struct.xmit_frame** %6, align 8
  %73 = call i32 @r8712_free_xmitframe(%struct.xmit_priv* %71, %struct.xmit_frame* %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %76 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @dev_kfree_skb_any(i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %52
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @r8712_if_up(%struct._adapter*) #1

declare dso_local %struct.xmit_frame* @r8712_alloc_xmitframe(%struct.xmit_priv*) #1

declare dso_local i64 @r8712_update_attrib(%struct._adapter*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @r8712_pre_xmit(%struct._adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @r8712_free_xmitframe(%struct.xmit_priv*, %struct.xmit_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
