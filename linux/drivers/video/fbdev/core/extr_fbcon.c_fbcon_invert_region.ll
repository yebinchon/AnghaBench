; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_invert_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_invert_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64, i32 }

@softback_end = common dso_local global i64 0, align 8
@softback_buf = common dso_local global i64 0, align 8
@softback_in = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32*, i32)* @fbcon_invert_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_invert_region(%struct.vc_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %73, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %74

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @scr_readw(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, 2048
  store i32 %21, i32* %7, align 4
  br label %50

22:                                               ; preds = %12
  %23 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 4607
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 57344
  %32 = ashr i32 %31, 4
  %33 = or i32 %29, %32
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 3584
  %36 = shl i32 %35, 4
  %37 = or i32 %33, %36
  store i32 %37, i32* %7, align 4
  br label %49

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 35071
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 28672
  %43 = ashr i32 %42, 4
  %44 = or i32 %40, %43
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 1792
  %47 = shl i32 %46, 4
  %48 = or i32 %44, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %38, %27
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %5, align 8
  %54 = ptrtoint i32* %52 to i32
  %55 = call i32 @scr_writew(i32 %51, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i64, i64* @softback_end, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = icmp eq i32* %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i64, i64* @softback_buf, align 8
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %5, align 8
  br label %63

63:                                               ; preds = %60, %50
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* @softback_in, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = icmp eq i32* %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %70 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %5, align 8
  br label %73

73:                                               ; preds = %68, %63
  br label %8

74:                                               ; preds = %8
  ret void
}

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i32 @scr_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
