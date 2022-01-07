; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbsysfs.c_fb_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbsysfs.c_fb_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32 }

@FB_SYSFS_FLAG_ATTR = common dso_local global i32 0, align 4
@device_attrs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_init_device(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = call i32 @dev_set_drvdata(i32 %7, %struct.fb_info* %8)
  %10 = load i32, i32* @FB_SYSFS_FLAG_ATTR, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %33, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32*, i32** @device_attrs, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @device_attrs, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @device_create_file(i32 %23, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %15

36:                                               ; preds = %31, %15
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %3, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @device_attrs, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @device_remove_file(i32 %47, i32* %51)
  br label %40

53:                                               ; preds = %40
  %54 = load i32, i32* @FB_SYSFS_FLAG_ATTR, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %53, %36
  ret i32 0
}

declare dso_local i32 @dev_set_drvdata(i32, %struct.fb_info*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
