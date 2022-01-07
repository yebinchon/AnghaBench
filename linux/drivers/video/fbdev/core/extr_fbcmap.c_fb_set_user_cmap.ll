; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcmap.c_fb_set_user_cmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcmap.c_fb_set_user_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap_user = type { i32, i32, i32*, i32*, i32*, i32* }
%struct.fb_info = type { i32 }
%struct.fb_cmap = type { i32, i32, i32, i32, i32 }

@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_set_user_cmap(%struct.fb_cmap_user* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_cmap_user*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fb_cmap, align 4
  store %struct.fb_cmap_user* %0, %struct.fb_cmap_user** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %10 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %20 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @E2BIG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %100

26:                                               ; preds = %17
  %27 = call i32 @memset(%struct.fb_cmap* %8, i32 0, i32 20)
  %28 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %29 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %32 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @fb_alloc_cmap_gfp(%struct.fb_cmap* %8, i32 %30, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %100

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %46 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @copy_from_user(i32 %44, i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %55 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @copy_from_user(i32 %53, i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %64 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @copy_from_user(i32 %62, i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %60
  %70 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %71 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %78 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @copy_from_user(i32 %76, i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74, %60, %51, %42
  %84 = load i32, i32* @EFAULT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %97

86:                                               ; preds = %74, %69
  %87 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %4, align 8
  %88 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %92 = call i32 @lock_fb_info(%struct.fb_info* %91)
  %93 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %94 = call i32 @fb_set_cmap(%struct.fb_cmap* %8, %struct.fb_info* %93)
  store i32 %94, i32* %6, align 4
  %95 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %96 = call i32 @unlock_fb_info(%struct.fb_info* %95)
  br label %97

97:                                               ; preds = %86, %83
  %98 = call i32 @fb_dealloc_cmap(%struct.fb_cmap* %8)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %40, %23
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.fb_cmap*, i32, i32) #1

declare dso_local i32 @fb_alloc_cmap_gfp(%struct.fb_cmap*, i32, i32, i32) #1

declare dso_local i64 @copy_from_user(i32, i32*, i32) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @fb_set_cmap(%struct.fb_cmap*, %struct.fb_info*) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.fb_cmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
