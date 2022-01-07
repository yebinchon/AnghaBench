; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_trans_key_value_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_trans_key_value_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)* }
%struct.omap_overlay_manager_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*, i8*, i64)* @manager_trans_key_value_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_trans_key_value_store(%struct.omap_overlay_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_overlay_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.omap_overlay_manager_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @kstrtouint(i8* %11, i32 0, i32* %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %19 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %18, i32 0, i32 2
  %20 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %19, align 8
  %21 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %22 = call i32 %20(%struct.omap_overlay_manager* %21, %struct.omap_overlay_manager_info* %8)
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %26 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %25, i32 0, i32 0
  %27 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %26, align 8
  %28 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %29 = call i32 %27(%struct.omap_overlay_manager* %28, %struct.omap_overlay_manager_info* %8)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %17
  %35 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %36 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %35, i32 0, i32 1
  %37 = load i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*)** %36, align 8
  %38 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %39 = call i32 %37(%struct.omap_overlay_manager* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %47

44:                                               ; preds = %34
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %42, %32, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
