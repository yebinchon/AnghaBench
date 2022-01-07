; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_dafb_setpalette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_dafb_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32* }

@dafb_setpalette.lastreg = internal global i32 -2, align 4
@dafb_cmap_regs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @dafb_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dafb_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fb_info* %4, %struct.fb_info** %10, align 8
  %13 = load i64, i64* %11, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @dafb_setpalette.lastreg, align 4
  %17 = add nsw i32 %16, 1
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @nubus_writel(i32 0, i32* %21)
  %23 = call i32 (...) @nop()
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %68, %19
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @nubus_writeb(i32 %37, i32* %39)
  %41 = call i32 (...) @nop()
  %42 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @nubus_writeb(i32 %50, i32* %52)
  %54 = call i32 (...) @nop()
  %55 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @nubus_writeb(i32 %63, i32* %65)
  %67 = call i32 (...) @nop()
  br label %68

68:                                               ; preds = %28
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %24

71:                                               ; preds = %24
  br label %72

72:                                               ; preds = %71, %5
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @nubus_writeb(i32 %73, i32* %75)
  %77 = call i32 (...) @nop()
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @nubus_writeb(i32 %78, i32* %80)
  %82 = call i32 (...) @nop()
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dafb_cmap_regs, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @nubus_writeb(i32 %83, i32* %85)
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @local_irq_restore(i64 %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* @dafb_setpalette.lastreg, align 4
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @nubus_writel(i32, i32*) #1

declare dso_local i32 @nop(...) #1

declare dso_local i32 @nubus_writeb(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
