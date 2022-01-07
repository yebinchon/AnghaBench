; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__InitQueueReservedPage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__InitQueueReservedPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__*, %struct.registry_priv }
%struct.TYPE_2__ = type { i32 }
%struct.registry_priv = type { i32 }

@TX_SELE_HQ = common dso_local global i32 0, align 4
@TX_SELE_LQ = common dso_local global i32 0, align 4
@TX_SELE_NQ = common dso_local global i32 0, align 4
@REG_RQPN_NPQ = common dso_local global i32 0, align 4
@LD_RQPN = common dso_local global i32 0, align 4
@REG_RQPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitQueueReservedPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitQueueReservedPage(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.registry_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  store %struct.registry_priv* %12, %struct.registry_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %14 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %75

18:                                               ; preds = %1
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TX_SELE_HQ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 41, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TX_SELE_LQ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 28, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %28
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TX_SELE_NQ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 28, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @_NPQ(i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = load i32, i32* @REG_RQPN_NPQ, align 4
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @usb_write8(%struct.adapter* %51, i32 %52, i64 %53)
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 168, %55
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @_HPQ(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @_LPQ(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @_PUBQ(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* @LD_RQPN, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = load i32, i32* @REG_RQPN, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @usb_write32(%struct.adapter* %71, i32 %72, i32 %73)
  br label %85

75:                                               ; preds = %1
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = load i32, i32* @REG_RQPN_NPQ, align 4
  %78 = call i32 @usb_write16(%struct.adapter* %76, i32 %77, i32 0)
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = load i32, i32* @REG_RQPN_NPQ, align 4
  %81 = call i32 @usb_write16(%struct.adapter* %79, i32 %80, i32 13)
  %82 = load %struct.adapter*, %struct.adapter** %2, align 8
  %83 = load i32, i32* @REG_RQPN, align 4
  %84 = call i32 @usb_write32(%struct.adapter* %82, i32 %83, i32 -2138177523)
  br label %85

85:                                               ; preds = %75, %48
  ret void
}

declare dso_local i64 @_NPQ(i32) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i64) #1

declare dso_local i32 @_HPQ(i32) #1

declare dso_local i32 @_LPQ(i32) #1

declare dso_local i32 @_PUBQ(i32) #1

declare dso_local i32 @usb_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @usb_write16(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
