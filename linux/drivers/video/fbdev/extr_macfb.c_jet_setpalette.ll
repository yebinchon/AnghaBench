; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_jet_setpalette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_jet_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jet_cmap_regs = type { i32, i32 }
%struct.fb_info = type { i32 }

@slot_addr = common dso_local global %struct.jet_cmap_regs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @jet_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jet_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.jet_cmap_regs*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fb_info* %4, %struct.fb_info** %10, align 8
  %13 = load %struct.jet_cmap_regs*, %struct.jet_cmap_regs** @slot_addr, align 8
  store %struct.jet_cmap_regs* %13, %struct.jet_cmap_regs** %11, align 8
  %14 = load i64, i64* %12, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.jet_cmap_regs*, %struct.jet_cmap_regs** %11, align 8
  %18 = getelementptr inbounds %struct.jet_cmap_regs, %struct.jet_cmap_regs* %17, i32 0, i32 1
  %19 = call i32 @nubus_writeb(i32 %16, i32* %18)
  %20 = call i32 (...) @nop()
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.jet_cmap_regs*, %struct.jet_cmap_regs** %11, align 8
  %23 = getelementptr inbounds %struct.jet_cmap_regs, %struct.jet_cmap_regs* %22, i32 0, i32 0
  %24 = call i32 @nubus_writeb(i32 %21, i32* %23)
  %25 = call i32 (...) @nop()
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.jet_cmap_regs*, %struct.jet_cmap_regs** %11, align 8
  %28 = getelementptr inbounds %struct.jet_cmap_regs, %struct.jet_cmap_regs* %27, i32 0, i32 0
  %29 = call i32 @nubus_writeb(i32 %26, i32* %28)
  %30 = call i32 (...) @nop()
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.jet_cmap_regs*, %struct.jet_cmap_regs** %11, align 8
  %33 = getelementptr inbounds %struct.jet_cmap_regs, %struct.jet_cmap_regs* %32, i32 0, i32 0
  %34 = call i32 @nubus_writeb(i32 %31, i32* %33)
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @local_irq_restore(i64 %35)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @nubus_writeb(i32, i32*) #1

declare dso_local i32 @nop(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
