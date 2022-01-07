; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.uvesafb_par* }
%struct.uvesafb_par = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uvesafb_ktask = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VBE_CAP_VGACOMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @uvesafb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.uvesafb_ktask*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = call %struct.uvesafb_ktask* (...) @uvesafb_prep()
  store %struct.uvesafb_ktask* %8, %struct.uvesafb_ktask** %6, align 8
  %9 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %10 = icmp ne %struct.uvesafb_ktask* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %16 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 20240, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %35 [
    i32 128, label %20
    i32 130, label %25
    i32 129, label %30
  ]

20:                                               ; preds = %14
  %21 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %22 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %36

25:                                               ; preds = %14
  %26 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %27 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 257, i32* %29, align 4
  br label %36

30:                                               ; preds = %14
  %31 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %32 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 1025, i32* %34, align 4
  br label %36

35:                                               ; preds = %14
  br label %51

36:                                               ; preds = %30, %25, %20
  %37 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %38 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %43 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 65535
  %48 = icmp ne i32 %47, 79
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %36
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %41
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %53 = call i32 @uvesafb_free(%struct.uvesafb_ktask* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.uvesafb_ktask* @uvesafb_prep(...) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @uvesafb_free(%struct.uvesafb_ktask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
