; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tgui_copy_rect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tgui_copy_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@DRAWFL = common dso_local global i32 0, align 4
@ROP_S = common dso_local global i32 0, align 4
@OLDSRC = common dso_local global i32 0, align 4
@OLDDST = common dso_local global i32 0, align 4
@OLDDIM = common dso_local global i32 0, align 4
@OLDCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i64, i64, i64, i64, i64, i64)* @tgui_copy_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgui_copy_rect(%struct.tridentfb_par* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.tridentfb_par*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %7
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %15, align 4
  %29 = or i32 %28, 512
  store i32 %29, i32* %15, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %13, align 8
  %32 = add nsw i64 %30, %31
  %33 = sub nsw i64 %32, 1
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %13, align 8
  %36 = add nsw i64 %34, %35
  %37 = sub nsw i64 %36, 1
  store i64 %37, i64* %17, align 8
  br label %41

38:                                               ; preds = %23, %7
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %17, align 8
  br label %41

41:                                               ; preds = %38, %27
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32, i32* %15, align 4
  %47 = or i32 %46, 256
  store i32 %47, i32* %15, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %14, align 8
  %50 = add nsw i64 %48, %49
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %14, align 8
  %54 = add nsw i64 %52, %53
  %55 = sub nsw i64 %54, 1
  store i64 %55, i64* %19, align 8
  br label %59

56:                                               ; preds = %41
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %18, align 8
  %58 = load i64, i64* %12, align 8
  store i64 %58, i64* %19, align 8
  br label %59

59:                                               ; preds = %56, %45
  %60 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %61 = load i32, i32* @DRAWFL, align 4
  %62 = load i32, i32* %15, align 4
  %63 = or i32 4, %62
  %64 = call i32 @writemmr(%struct.tridentfb_par* %60, i32 %61, i32 %63)
  %65 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %66 = load i32, i32* @ROP_S, align 4
  %67 = call i32 @t_outb(%struct.tridentfb_par* %65, i32 %66, i32 8487)
  %68 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %69 = load i32, i32* @OLDSRC, align 4
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %18, align 8
  %72 = call i32 @point(i64 %70, i64 %71)
  %73 = call i32 @writemmr(%struct.tridentfb_par* %68, i32 %69, i32 %72)
  %74 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %75 = load i32, i32* @OLDDST, align 4
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* %19, align 8
  %78 = call i32 @point(i64 %76, i64 %77)
  %79 = call i32 @writemmr(%struct.tridentfb_par* %74, i32 %75, i32 %78)
  %80 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %81 = load i32, i32* @OLDDIM, align 4
  %82 = load i64, i64* %13, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load i64, i64* %14, align 8
  %85 = sub nsw i64 %84, 1
  %86 = call i32 @point(i64 %83, i64 %85)
  %87 = call i32 @writemmr(%struct.tridentfb_par* %80, i32 %81, i32 %86)
  %88 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %89 = load i32, i32* @OLDCMD, align 4
  %90 = call i32 @t_outb(%struct.tridentfb_par* %88, i32 1, i32 %89)
  ret void
}

declare dso_local i32 @writemmr(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @t_outb(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @point(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
