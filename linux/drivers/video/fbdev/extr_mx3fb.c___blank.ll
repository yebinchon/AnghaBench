; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c___blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c___blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64, %struct.mx3fb_info* }
%struct.TYPE_2__ = type { i32 }
%struct.mx3fb_info = type { i32, %struct.mx3fb_data* }
%struct.mx3fb_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fb_info*)* @__blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.mx3fb_info*, align 8
  %6 = alloca %struct.mx3fb_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.mx3fb_info*, %struct.mx3fb_info** %9, align 8
  store %struct.mx3fb_info* %10, %struct.mx3fb_info** %5, align 8
  %11 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %11, i32 0, i32 1
  %13 = load %struct.mx3fb_data*, %struct.mx3fb_data** %12, align 8
  store %struct.mx3fb_data* %13, %struct.mx3fb_data** %6, align 8
  %14 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %19 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 129
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 129
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %51

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %3, align 4
  switch i32 %27, label %51 [
    i32 130, label %28
    i32 128, label %28
    i32 132, label %28
    i32 131, label %28
    i32 129, label %43
  ]

28:                                               ; preds = %26, %26, %26, %26
  %29 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %30 = call i32 @sdc_set_brightness(%struct.mx3fb_data* %29, i32 0)
  %31 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memset(i8* %34, i32 0, i32 %38)
  %40 = call i32 @msleep(i32 25)
  %41 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %42 = call i32 @sdc_disable_channel(%struct.mx3fb_info* %41)
  br label %51

43:                                               ; preds = %26
  %44 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %45 = call i32 @sdc_enable_channel(%struct.mx3fb_info* %44)
  %46 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %47 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %48 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sdc_set_brightness(%struct.mx3fb_data* %46, i32 %49)
  br label %51

51:                                               ; preds = %25, %26, %43, %28
  ret void
}

declare dso_local i32 @sdc_set_brightness(%struct.mx3fb_data*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sdc_disable_channel(%struct.mx3fb_info*) #1

declare dso_local i32 @sdc_enable_channel(%struct.mx3fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
