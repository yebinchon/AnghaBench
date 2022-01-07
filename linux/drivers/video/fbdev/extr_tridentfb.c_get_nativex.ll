; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_get_nativex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_get_nativex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@nativex = common dso_local global i32 0, align 4
@VertStretch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%dx%d flat panel found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tridentfb_par*)* @get_nativex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nativex(%struct.tridentfb_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tridentfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %3, align 8
  %7 = load i32, i32* @nativex, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @nativex, align 4
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %13 = load i32, i32* @VertStretch, align 4
  %14 = call i32 @read3CE(%struct.tridentfb_par* %12, i32 %13)
  %15 = ashr i32 %14, 4
  %16 = and i32 %15, 3
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %22 [
    i32 0, label %18
    i32 2, label %19
    i32 3, label %20
    i32 1, label %21
  ]

18:                                               ; preds = %11
  store i32 1280, i32* %4, align 4
  store i32 1024, i32* %5, align 4
  br label %23

19:                                               ; preds = %11
  store i32 1024, i32* %4, align 4
  store i32 768, i32* %5, align 4
  br label %23

20:                                               ; preds = %11
  store i32 800, i32* %4, align 4
  store i32 600, i32* %5, align 4
  br label %23

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %11, %21
  store i32 640, i32* %4, align 4
  store i32 480, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %20, %19, %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @output(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @read3CE(%struct.tridentfb_par*, i32) #1

declare dso_local i32 @output(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
