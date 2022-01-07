; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_EP0_send_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_EP0_send_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EP0_INAK = common dso_local global i64 0, align 8
@EP0_INAK_EN = common dso_local global i32 0, align 4
@EP0_PIDCLR = common dso_local global i32 0, align 4
@EP0_DEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, i32)* @EP0_send_NULL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EP0_send_NULL(%struct.nbu2ss_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.nbu2ss_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %7 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @_nbu2ss_readl(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* @EP0_INAK, align 8
  %12 = trunc i64 %11 to i32
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @EP0_INAK_EN, align 4
  %20 = load i32, i32* @EP0_PIDCLR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @EP0_DEND, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @EP0_INAK_EN, align 4
  %28 = load i32, i32* @EP0_DEND, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %34 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @_nbu2ss_writel(i32* %36, i32 %37)
  ret i32 0
}

declare dso_local i32 @_nbu2ss_readl(i32*) #1

declare dso_local i32 @_nbu2ss_writel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
