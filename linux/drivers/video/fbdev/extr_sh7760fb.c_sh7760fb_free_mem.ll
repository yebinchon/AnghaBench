; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32*, i32, %struct.sh7760fb_par* }
%struct.sh7760fb_par = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @sh7760fb_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh7760fb_free_mem(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.sh7760fb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 3
  %6 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %5, align 8
  store %struct.sh7760fb_par* %6, %struct.sh7760fb_par** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %3, align 8
  %23 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dma_free_coherent(i32 %15, i64 %18, i32* %21, i64 %24)
  %26 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %3, align 8
  %27 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
