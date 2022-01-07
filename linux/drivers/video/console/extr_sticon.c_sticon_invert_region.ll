; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_invert_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_invert_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32*, i32)* @sticon_invert_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sticon_invert_region(%struct.vc_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %35, %3
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @scr_readw(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 35071
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 28672
  %23 = ashr i32 %22, 4
  %24 = or i32 %20, %23
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 1792
  %27 = shl i32 %26, 4
  %28 = or i32 %24, %27
  store i32 %28, i32* %8, align 4
  br label %35

29:                                               ; preds = %13
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 1792
  %32 = icmp eq i32 %31, 256
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 28672, i32 30464
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %29, %18
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %5, align 8
  %39 = ptrtoint i32* %37 to i32
  %40 = call i32 @scr_writew(i32 %36, i32 %39)
  br label %9

41:                                               ; preds = %9
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
