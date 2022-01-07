; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.w100fb_par* }
%struct.w100fb_par = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.w100_tg_info* }
%struct.w100_tg_info = type { i32 (%struct.w100fb_par*)*, i32 (%struct.w100fb_par*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @w100fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w100fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.w100fb_par*, align 8
  %6 = alloca %struct.w100_tg_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.w100fb_par*, %struct.w100fb_par** %8, align 8
  store %struct.w100fb_par* %9, %struct.w100fb_par** %5, align 8
  %10 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %11 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.w100_tg_info*, %struct.w100_tg_info** %13, align 8
  store %struct.w100_tg_info* %14, %struct.w100_tg_info** %6, align 8
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %62 [
    i32 131, label %16
    i32 128, label %16
    i32 132, label %16
    i32 130, label %16
    i32 129, label %39
  ]

16:                                               ; preds = %2, %2, %2, %2
  %17 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %18 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.w100_tg_info*, %struct.w100_tg_info** %6, align 8
  %23 = icmp ne %struct.w100_tg_info* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.w100_tg_info*, %struct.w100_tg_info** %6, align 8
  %26 = getelementptr inbounds %struct.w100_tg_info, %struct.w100_tg_info* %25, i32 0, i32 1
  %27 = load i32 (%struct.w100fb_par*)*, i32 (%struct.w100fb_par*)** %26, align 8
  %28 = icmp ne i32 (%struct.w100fb_par*)* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.w100_tg_info*, %struct.w100_tg_info** %6, align 8
  %31 = getelementptr inbounds %struct.w100_tg_info, %struct.w100_tg_info* %30, i32 0, i32 1
  %32 = load i32 (%struct.w100fb_par*)*, i32 (%struct.w100fb_par*)** %31, align 8
  %33 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %34 = call i32 %32(%struct.w100fb_par* %33)
  br label %35

35:                                               ; preds = %29, %24, %21
  %36 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %37 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %16
  br label %62

39:                                               ; preds = %2
  %40 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %41 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.w100_tg_info*, %struct.w100_tg_info** %6, align 8
  %46 = icmp ne %struct.w100_tg_info* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.w100_tg_info*, %struct.w100_tg_info** %6, align 8
  %49 = getelementptr inbounds %struct.w100_tg_info, %struct.w100_tg_info* %48, i32 0, i32 0
  %50 = load i32 (%struct.w100fb_par*)*, i32 (%struct.w100fb_par*)** %49, align 8
  %51 = icmp ne i32 (%struct.w100fb_par*)* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.w100_tg_info*, %struct.w100_tg_info** %6, align 8
  %54 = getelementptr inbounds %struct.w100_tg_info, %struct.w100_tg_info* %53, i32 0, i32 0
  %55 = load i32 (%struct.w100fb_par*)*, i32 (%struct.w100fb_par*)** %54, align 8
  %56 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %57 = call i32 %55(%struct.w100fb_par* %56)
  br label %58

58:                                               ; preds = %52, %47, %44
  %59 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %60 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %39
  br label %62

62:                                               ; preds = %2, %61, %38
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
