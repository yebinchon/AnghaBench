; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_set_addr_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_set_addr_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.fbtft_par = type { i32 }

@addr_win = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fbtft_par*, i32, i32, i32, i32)* @set_addr_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addr_win(%struct.fbtft_par* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fbtft_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @addr_win, i32 0, i32 0), align 4
  %12 = load i32, i32* %8, align 4
  %13 = sdiv i32 %12, 8
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @addr_win, i32 0, i32 1), align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @addr_win, i32 0, i32 2), align 4
  %15 = load i32, i32* %10, align 4
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @addr_win, i32 0, i32 3), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
