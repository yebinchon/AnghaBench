; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_ext_caps_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_ext_caps_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_mac_ext_caps_free(%struct.qtnf_wmac* %0) #0 {
  %2 = alloca %struct.qtnf_wmac*, align 8
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %2, align 8
  %3 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %4 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %10 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @kfree(i32* %12)
  %14 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %15 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %18 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree(i32* %20)
  %22 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %23 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %26 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
