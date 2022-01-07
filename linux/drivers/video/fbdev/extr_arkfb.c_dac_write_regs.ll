; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_dac_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arkfb.c_dac_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dac_info = type { i32, i32 (i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dac_info*, i32*, i32)* @dac_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac_write_regs(%struct.dac_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.dac_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.dac_info* %0, %struct.dac_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dac_info*, %struct.dac_info** %4, align 8
  %8 = getelementptr inbounds %struct.dac_info, %struct.dac_info* %7, i32 0, i32 1
  %9 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %8, align 8
  %10 = load %struct.dac_info*, %struct.dac_info** %4, align 8
  %11 = getelementptr inbounds %struct.dac_info, %struct.dac_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 %9(i32 %12, i32* %13, i32 %14)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
