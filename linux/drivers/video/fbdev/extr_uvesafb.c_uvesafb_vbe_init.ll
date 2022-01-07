; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.uvesafb_par* }
%struct.uvesafb_par = type { i64, i64, i32 }
%struct.uvesafb_ktask = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nocrtc = common dso_local global i32 0, align 4
@_PAGE_NX = common dso_local global i32 0, align 4
@__supported_pte_mask = common dso_local global i32 0, align 4
@pmi_setpal = common dso_local global i64 0, align 8
@ypan = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @uvesafb_vbe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_vbe_init(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.uvesafb_ktask*, align 8
  %5 = alloca %struct.uvesafb_par*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.uvesafb_ktask* null, %struct.uvesafb_ktask** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  store %struct.uvesafb_par* %9, %struct.uvesafb_par** %5, align 8
  %10 = call %struct.uvesafb_ktask* (...) @uvesafb_prep()
  store %struct.uvesafb_ktask* %10, %struct.uvesafb_ktask** %4, align 8
  %11 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %12 = icmp ne %struct.uvesafb_ktask* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %18 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %19 = call i32 @uvesafb_vbe_getinfo(%struct.uvesafb_ktask* %17, %struct.uvesafb_par* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %47

23:                                               ; preds = %16
  %24 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %25 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %26 = call i32 @uvesafb_vbe_getmodes(%struct.uvesafb_ktask* %24, %struct.uvesafb_par* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %47

30:                                               ; preds = %23
  %31 = load i32, i32* @nocrtc, align 4
  %32 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %33 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %35 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %37 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = call i32 @uvesafb_vbe_getmonspecs(%struct.uvesafb_ktask* %41, %struct.fb_info* %42)
  %44 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %45 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %46 = call i32 @uvesafb_vbe_getstatesize(%struct.uvesafb_ktask* %44, %struct.uvesafb_par* %45)
  br label %47

47:                                               ; preds = %30, %29, %22
  %48 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %4, align 8
  %49 = call i32 @uvesafb_free(%struct.uvesafb_ktask* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.uvesafb_ktask* @uvesafb_prep(...) #1

declare dso_local i32 @uvesafb_vbe_getinfo(%struct.uvesafb_ktask*, %struct.uvesafb_par*) #1

declare dso_local i32 @uvesafb_vbe_getmodes(%struct.uvesafb_ktask*, %struct.uvesafb_par*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @uvesafb_vbe_getmonspecs(%struct.uvesafb_ktask*, %struct.fb_info*) #1

declare dso_local i32 @uvesafb_vbe_getstatesize(%struct.uvesafb_ktask*, %struct.uvesafb_par*) #1

declare dso_local i32 @uvesafb_free(%struct.uvesafb_ktask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
