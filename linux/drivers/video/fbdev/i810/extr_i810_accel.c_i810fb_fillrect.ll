; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_accel.c_i810fb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_accel.c_i810fb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, i64, %struct.TYPE_3__, %struct.i810fb_par* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i810fb_par = type { i32, i32, i32 }
%struct.fb_fillrect = type { i32, i64, i32, i32, i32, i32 }

@LOCKUP = common dso_local global i32 0, align 4
@i810fb_rop = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i810fb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.i810fb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 3
  %15 = load %struct.i810fb_par*, %struct.i810fb_par** %14, align 8
  store %struct.i810fb_par* %15, %struct.i810fb_par** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %23 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LOCKUP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %30 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %21, %2
  %34 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %35 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %36 = call i32 @cfb_fillrect(%struct.fb_info* %34, %struct.fb_fillrect* %35)
  br label %111

37:                                               ; preds = %28
  %38 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %39 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %44 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %12, align 4
  br label %57

46:                                               ; preds = %37
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %52 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %46, %42
  %58 = load i32*, i32** @i810fb_rop, align 8
  %59 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %60 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %65 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %68 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  store i32 %70, i32* %6, align 4
  %71 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %72 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %75 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  store i32 %77, i32* %8, align 4
  %78 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %79 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %7, align 4
  %81 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %82 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %88, %92
  %94 = add nsw i32 %87, %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %107 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %110 = call i32 @color_blit(i32 %97, i32 %98, i32 %102, i32 %103, i32 %104, i32 %105, i32 %108, %struct.fb_info* %109)
  br label %111

111:                                              ; preds = %57, %33
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @color_blit(i32, i32, i32, i32, i32, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
