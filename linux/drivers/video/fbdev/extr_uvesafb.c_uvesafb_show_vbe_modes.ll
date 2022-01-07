; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_show_vbe_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_show_vbe_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { %struct.uvesafb_par* }
%struct.uvesafb_par = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%dx%d-%d, 0x%.4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @uvesafb_show_vbe_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_show_vbe_modes(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca %struct.uvesafb_par*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.fb_info* %12, %struct.fb_info** %7, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load %struct.uvesafb_par*, %struct.uvesafb_par** %14, align 8
  store %struct.uvesafb_par* %15, %struct.uvesafb_par** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %73, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %19 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i1 [ false, %16 ], [ %25, %22 ]
  br i1 %27, label %28, label %76

28:                                               ; preds = %26
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %37 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %45 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %53 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  %61 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @snprintf(i8* %32, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %51, i32 %59, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %28
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %16

76:                                               ; preds = %26
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
