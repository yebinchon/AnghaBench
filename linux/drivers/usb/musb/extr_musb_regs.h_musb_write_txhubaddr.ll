; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_regs.h_musb_write_txhubaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_regs.h_musb_write_txhubaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@MUSB_TXHUBADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, i32, i32)* @musb_write_txhubaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_write_txhubaddr(%struct.musb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.musb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.musb*, %struct.musb** %4, align 8
  %8 = getelementptr inbounds %struct.musb, %struct.musb* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.musb*, %struct.musb** %4, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MUSB_TXHUBADDR, align 4
  %16 = call i32 %13(i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @musb_writeb(i32 %9, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
