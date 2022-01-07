; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_sm750fb_framebuffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_sm750fb_framebuffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm750_dev = type { i32, %struct.fb_info**, %struct.TYPE_2__* }
%struct.fb_info = type { %struct.lynxfb_par* }
%struct.lynxfb_par = type { %struct.sm750_dev* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm750_dev*, i32)* @sm750fb_framebuffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm750fb_framebuffer_alloc(%struct.sm750_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm750_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.lynxfb_par*, align 8
  %8 = alloca i32, align 4
  store %struct.sm750_dev* %0, %struct.sm750_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %10 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call %struct.fb_info* @framebuffer_alloc(i32 8, i32* %12)
  store %struct.fb_info* %13, %struct.fb_info** %6, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %15 = icmp ne %struct.fb_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %21 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %22 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %21, i32 0, i32 1
  %23 = load %struct.fb_info**, %struct.fb_info*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %23, i64 %25
  store %struct.fb_info* %20, %struct.fb_info** %26, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = load %struct.lynxfb_par*, %struct.lynxfb_par** %28, align 8
  store %struct.lynxfb_par* %29, %struct.lynxfb_par** %7, align 8
  %30 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %31 = load %struct.lynxfb_par*, %struct.lynxfb_par** %7, align 8
  %32 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %31, i32 0, i32 0
  store %struct.sm750_dev* %30, %struct.sm750_dev** %32, align 8
  %33 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @lynxfb_set_fbinfo(%struct.fb_info* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  br label %50

39:                                               ; preds = %19
  %40 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %41 = call i32 @register_framebuffer(%struct.fb_info* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %50

45:                                               ; preds = %39
  %46 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %47 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %54

50:                                               ; preds = %44, %38
  %51 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %52 = call i32 @framebuffer_release(%struct.fb_info* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %45, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @lynxfb_set_fbinfo(%struct.fb_info*, i32) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
