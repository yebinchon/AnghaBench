; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_con2fb_acquire_newinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_con2fb_acquire_newinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.fb_info = type { %struct.TYPE_2__*, %struct.fbcon_ops* }
%struct.TYPE_2__ = type { i32, i64 (%struct.fb_info*, i32)* }
%struct.fbcon_ops = type { i32, %struct.fb_info* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@con2fb_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.fb_info*, i32, i32)* @con2fb_acquire_newinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con2fb_acquire_newinfo(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fbcon_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store %struct.fb_info* %1, %struct.fb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.fbcon_ops* null, %struct.fbcon_ops** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @try_module_get(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i32)** %28, align 8
  %30 = icmp ne i64 (%struct.fb_info*, i32)* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i32)** %35, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %38 = call i64 %36(%struct.fb_info* %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %31, %24, %21
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.fbcon_ops* @kzalloc(i32 16, i32 %47)
  store %struct.fbcon_ops* %48, %struct.fbcon_ops** %9, align 8
  %49 = load %struct.fbcon_ops*, %struct.fbcon_ops** %9, align 8
  %50 = icmp ne %struct.fbcon_ops* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @HZ, align 4
  %60 = sdiv i32 %59, 5
  %61 = load %struct.fbcon_ops*, %struct.fbcon_ops** %9, align 8
  %62 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %64 = load %struct.fbcon_ops*, %struct.fbcon_ops** %9, align 8
  %65 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %64, i32 0, i32 1
  store %struct.fb_info* %63, %struct.fb_info** %65, align 8
  %66 = load %struct.fbcon_ops*, %struct.fbcon_ops** %9, align 8
  %67 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 1
  store %struct.fbcon_ops* %66, %struct.fbcon_ops** %68, align 8
  %69 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %70 = icmp ne %struct.vc_data* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %73 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %74 = call i32 @set_blitting_type(%struct.vc_data* %72, %struct.fb_info* %73)
  br label %75

75:                                               ; preds = %71, %58
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** @con2fb_map, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @module_put(i32 %89)
  br label %91

91:                                               ; preds = %79, %76
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.fbcon_ops* @kzalloc(i32, i32) #1

declare dso_local i32 @set_blitting_type(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
