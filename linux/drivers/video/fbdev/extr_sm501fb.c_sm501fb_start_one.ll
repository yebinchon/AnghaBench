; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_start_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_start_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501fb_info = type { i32, %struct.fb_info** }
%struct.fb_info = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"cannot initialise fb %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to register fb %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"fb%d: %s frame buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm501fb_info*, i32, i8*)* @sm501fb_start_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_start_one(%struct.sm501fb_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sm501fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  store %struct.sm501fb_info* %0, %struct.sm501fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.sm501fb_info*, %struct.sm501fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %10, i32 0, i32 1
  %12 = load %struct.fb_info**, %struct.fb_info*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %12, i64 %14
  %16 = load %struct.fb_info*, %struct.fb_info** %15, align 8
  store %struct.fb_info* %16, %struct.fb_info** %8, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %18 = icmp ne %struct.fb_info* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

20:                                               ; preds = %3
  %21 = load %struct.sm501fb_info*, %struct.sm501fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %21, i32 0, i32 1
  %23 = load %struct.fb_info**, %struct.fb_info*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %23, i64 %25
  %27 = load %struct.fb_info*, %struct.fb_info** %26, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 2
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.sm501fb_info*, %struct.sm501fb_info** %5, align 8
  %31 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %30, i32 0, i32 1
  %32 = load %struct.fb_info**, %struct.fb_info*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %32, i64 %34
  %36 = load %struct.fb_info*, %struct.fb_info** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sm501fb_init_fb(%struct.fb_info* %36, i32 %37, i8* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %20
  %43 = load %struct.sm501fb_info*, %struct.sm501fb_info** %5, align 8
  %44 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %82

49:                                               ; preds = %20
  %50 = load %struct.sm501fb_info*, %struct.sm501fb_info** %5, align 8
  %51 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %50, i32 0, i32 1
  %52 = load %struct.fb_info**, %struct.fb_info*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %52, i64 %54
  %56 = load %struct.fb_info*, %struct.fb_info** %55, align 8
  %57 = call i32 @register_framebuffer(%struct.fb_info* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = load %struct.sm501fb_info*, %struct.sm501fb_info** %5, align 8
  %62 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load %struct.sm501fb_info*, %struct.sm501fb_info** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @sm501_free_init_fb(%struct.sm501fb_info* %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %82

70:                                               ; preds = %49
  %71 = load %struct.sm501fb_info*, %struct.sm501fb_info** %5, align 8
  %72 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %70, %60, %42, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sm501fb_init_fb(%struct.fb_info*, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @sm501_free_init_fb(%struct.sm501fb_info*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
