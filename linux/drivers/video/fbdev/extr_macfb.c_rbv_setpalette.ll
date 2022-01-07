; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_rbv_setpalette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_rbv_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@rbv_cmap_regs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @rbv_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbv_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fb_info* %4, %struct.fb_info** %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = sub nsw i32 256, %18
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = call i32 @nubus_writeb(i32 255, i32* %23)
  %25 = call i32 (...) @nop()
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @nubus_writeb(i32 %26, i32* %28)
  %30 = call i32 (...) @nop()
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @nubus_writeb(i32 %31, i32* %33)
  %35 = call i32 (...) @nop()
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @nubus_writeb(i32 %36, i32* %38)
  %40 = call i32 (...) @nop()
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rbv_cmap_regs, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @nubus_writeb(i32 %41, i32* %43)
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @local_irq_restore(i64 %45)
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
