; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_AmpduMaxTime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_AmpduMaxTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32)* }

@pCoexDm = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @halbtc8723b1ant_AmpduMaxTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_AmpduMaxTime(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %12, %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %39 [
    i32 0, label %24
    i32 1, label %33
  ]

24:                                               ; preds = %20
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %27(%struct.TYPE_6__* %28, i32 1110, i32 %31)
  br label %40

33:                                               ; preds = %20
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = call i32 %36(%struct.TYPE_6__* %37, i32 1110, i32 56)
  br label %40

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %33, %24
  br label %41

41:                                               ; preds = %40, %12
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
