; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_pal.c_wusbhc_pal_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_pal.c_wusbhc_pal_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"wusbhc\00", align 1
@wusbhc_channel_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_pal_register(%struct.wusbhc* %0) #0 {
  %2 = alloca %struct.wusbhc*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %2, align 8
  %3 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %4 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %3, i32 0, i32 0
  %5 = call i32 @uwb_pal_init(%struct.TYPE_7__* %4)
  %6 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %10 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i32 %13, i32* %16, align 8
  %17 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %18 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %21 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @wusbhc_channel_changed, align 4
  %24 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %25 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %28 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %27, i32 0, i32 0
  %29 = call i32 @uwb_pal_register(%struct.TYPE_7__* %28)
  ret i32 %29
}

declare dso_local i32 @uwb_pal_init(%struct.TYPE_7__*) #1

declare dso_local i32 @uwb_pal_register(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
