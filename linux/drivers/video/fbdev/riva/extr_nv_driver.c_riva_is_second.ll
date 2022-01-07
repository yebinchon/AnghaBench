; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_nv_driver.c_riva_is_second.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_nv_driver.c_riva_is_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_par = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.riva_par*)* @riva_is_second to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riva_is_second(%struct.riva_par* %0) #0 {
  %2 = alloca %struct.riva_par*, align 8
  store %struct.riva_par* %0, %struct.riva_par** %2, align 8
  %3 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %4 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %9 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 65535
  switch i32 %11, label %16 [
    i32 372, label %12
    i32 373, label %12
    i32 374, label %12
    i32 375, label %12
    i32 377, label %12
    i32 380, label %12
    i32 381, label %12
    i32 390, label %12
    i32 391, label %12
    i32 646, label %12
    i32 652, label %12
    i32 790, label %12
    i32 791, label %12
    i32 794, label %12
    i32 795, label %12
    i32 796, label %12
    i32 797, label %12
    i32 798, label %12
    i32 799, label %12
    i32 804, label %12
    i32 805, label %12
    i32 808, label %12
    i32 809, label %12
    i32 812, label %12
    i32 813, label %12
  ]

12:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %13 = load i8*, i8** @TRUE, align 8
  %14 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %15 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  br label %20

16:                                               ; preds = %7
  %17 = load i8*, i8** @FALSE, align 8
  %18 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %19 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %16, %12
  br label %69

21:                                               ; preds = %1
  %22 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %23 = call i64 @riva_is_connected(%struct.riva_par* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %27 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @NV_RD32(i32 %29, i32 1324)
  %31 = and i32 %30, 256
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i8*, i8** @TRUE, align 8
  %35 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %36 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  br label %41

37:                                               ; preds = %25
  %38 = load i8*, i8** @FALSE, align 8
  %39 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %40 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  br label %68

42:                                               ; preds = %21
  %43 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %44 = call i64 @riva_is_connected(%struct.riva_par* %43, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %48 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @NV_RD32(i32 %50, i32 9516)
  %52 = and i32 %51, 256
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i8*, i8** @TRUE, align 8
  %56 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %57 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %62

58:                                               ; preds = %46
  %59 = load i8*, i8** @FALSE, align 8
  %60 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %61 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %67

63:                                               ; preds = %42
  %64 = load i8*, i8** @FALSE, align 8
  %65 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %66 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %62
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %20
  %70 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %71 = call i32 @riva_override_CRTC(%struct.riva_par* %70)
  ret void
}

declare dso_local i64 @riva_is_connected(%struct.riva_par*, i32) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local i32 @riva_override_CRTC(%struct.riva_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
