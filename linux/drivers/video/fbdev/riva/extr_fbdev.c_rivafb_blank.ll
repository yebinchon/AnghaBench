; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.riva_par* }
%struct.riva_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @rivafb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rivafb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.riva_par*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.riva_par*, %struct.riva_par** %9, align 8
  store %struct.riva_par* %10, %struct.riva_par** %5, align 8
  %11 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %12 = call i32 @SEQin(%struct.riva_par* %11, i32 1)
  %13 = and i32 %12, -33
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %6, align 1
  %15 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %16 = call i32 @CRTCin(%struct.riva_par* %15, i32 26)
  %17 = and i32 %16, -193
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %7, align 1
  %19 = call i32 (...) @NVTRACE_ENTER()
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, 32
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %6, align 1
  br label %27

27:                                               ; preds = %22, %2
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %45 [
    i32 129, label %29
    i32 131, label %29
    i32 128, label %30
    i32 132, label %35
    i32 130, label %40
  ]

29:                                               ; preds = %27, %27
  br label %45

30:                                               ; preds = %27
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, 128
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %7, align 1
  br label %45

35:                                               ; preds = %27
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 64
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %7, align 1
  br label %45

40:                                               ; preds = %27
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, 192
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %7, align 1
  br label %45

45:                                               ; preds = %27, %40, %35, %30, %29
  %46 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %47 = load i8, i8* %6, align 1
  %48 = call i32 @SEQout(%struct.riva_par* %46, i32 1, i8 zeroext %47)
  %49 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %50 = load i8, i8* %7, align 1
  %51 = call i32 @CRTCout(%struct.riva_par* %49, i32 26, i8 zeroext %50)
  %52 = call i32 (...) @NVTRACE_LEAVE()
  ret i32 0
}

declare dso_local i32 @SEQin(%struct.riva_par*, i32) #1

declare dso_local i32 @CRTCin(%struct.riva_par*, i32) #1

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @SEQout(%struct.riva_par*, i32, i8 zeroext) #1

declare dso_local i32 @CRTCout(%struct.riva_par*, i32, i8 zeroext) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
