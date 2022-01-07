; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_lcdc_read_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_lcdc_read_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sh_mobile_lcdc_chan*, i32)* @lcdc_read_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lcdc_read_chan(%struct.sh_mobile_lcdc_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %6 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %11 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %9, %16
  %18 = call i64 @ioread32(i64 %17)
  ret i64 %18
}

declare dso_local i64 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
