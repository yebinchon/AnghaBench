; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_civic_setpalette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_civic_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fb_info = type { i32 }

@civic_cmap_regs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @civic_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @civic_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fb_info* %4, %struct.fb_info** %10, align 8
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = trunc i32 %16 to i8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = call i32 @nubus_writeb(i8 zeroext %17, i32* %19)
  %21 = call i32 (...) @nop()
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i8* @nubus_readb(i32* %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %5
  %30 = load i32, i32* %7, align 4
  %31 = trunc i32 %30 to i8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @nubus_writeb(i8 zeroext %31, i32* %33)
  %35 = call i32 (...) @nop()
  %36 = load i32, i32* %8, align 4
  %37 = trunc i32 %36 to i8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @nubus_writeb(i8 zeroext %37, i32* %39)
  %41 = call i32 (...) @nop()
  %42 = load i32, i32* %9, align 4
  %43 = trunc i32 %42 to i8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @nubus_writeb(i8 zeroext %43, i32* %45)
  %47 = call i32 (...) @nop()
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @nubus_writeb(i8 zeroext 0, i32* %49)
  br label %107

51:                                               ; preds = %5
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i8* @nubus_readb(i32* %53)
  %55 = ptrtoint i8* %54 to i8
  store i8 %55, i8* %13, align 1
  %56 = call i32 (...) @nop()
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i8* @nubus_readb(i32* %58)
  %60 = ptrtoint i8* %59 to i8
  store i8 %60, i8* %13, align 1
  %61 = call i32 (...) @nop()
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i8* @nubus_readb(i32* %63)
  %65 = ptrtoint i8* %64 to i8
  store i8 %65, i8* %13, align 1
  %66 = call i32 (...) @nop()
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i8* @nubus_readb(i32* %68)
  %70 = ptrtoint i8* %69 to i8
  store i8 %70, i8* %13, align 1
  %71 = call i32 (...) @nop()
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 13
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %51
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @nubus_writeb(i8 zeroext 0, i32* %77)
  %79 = call i32 (...) @nop()
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @nubus_writeb(i8 zeroext 0, i32* %81)
  %83 = call i32 (...) @nop()
  br label %84

84:                                               ; preds = %75, %51
  %85 = load i32, i32* %7, align 4
  %86 = trunc i32 %85 to i8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @nubus_writeb(i8 zeroext %86, i32* %88)
  %90 = call i32 (...) @nop()
  %91 = load i32, i32* %8, align 4
  %92 = trunc i32 %91 to i8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @nubus_writeb(i8 zeroext %92, i32* %94)
  %96 = call i32 (...) @nop()
  %97 = load i32, i32* %9, align 4
  %98 = trunc i32 %97 to i8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @nubus_writeb(i8 zeroext %98, i32* %100)
  %102 = call i32 (...) @nop()
  %103 = load i8, i8* %13, align 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @civic_cmap_regs, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @nubus_writeb(i8 zeroext %103, i32* %105)
  br label %107

107:                                              ; preds = %84, %29
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @local_irq_restore(i64 %108)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @nubus_writeb(i8 zeroext, i32*) #1

declare dso_local i32 @nop(...) #1

declare dso_local i8* @nubus_readb(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
