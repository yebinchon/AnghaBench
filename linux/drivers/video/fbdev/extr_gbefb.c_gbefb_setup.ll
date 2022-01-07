; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbefb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbefb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"monitor:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"crt\00", align 1
@flat_panel_enabled = common dso_local global i32 0, align 4
@default_var_CRT = common dso_local global i32 0, align 4
@default_var = common dso_local global i32* null, align 8
@default_mode_CRT = common dso_local global i32 0, align 4
@default_mode = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"1600sw\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@default_var_LCD = common dso_local global i32 0, align 4
@default_mode_LCD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mem:\00", align 1
@gbe_mem_size = common dso_local global i32 0, align 4
@CONFIG_FB_GBE_MEM = common dso_local global i32 0, align 4
@TILE_SIZE = common dso_local global i32 0, align 4
@mode_option = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gbefb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbefb_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %68

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %66, %12
  %14 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %67

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* @flat_panel_enabled, align 4
  store i32* @default_var_CRT, i32** @default_var, align 8
  store i32* @default_mode_CRT, i32** @default_mode, align 8
  br label %38

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %26
  store i32 1, i32* @flat_panel_enabled, align 4
  store i32* @default_var_LCD, i32** @default_var, align 8
  store i32* @default_mode_LCD, i32** @default_mode, align 8
  br label %37

37:                                               ; preds = %36, %31
  br label %38

38:                                               ; preds = %37, %25
  br label %66

39:                                               ; preds = %16
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = call i32 @memparse(i8* %45, i8** %4)
  store i32 %46, i32* @gbe_mem_size, align 4
  %47 = load i32, i32* @gbe_mem_size, align 4
  %48 = load i32, i32* @CONFIG_FB_GBE_MEM, align 4
  %49 = mul nsw i32 %48, 1024
  %50 = mul nsw i32 %49, 1024
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32, i32* @CONFIG_FB_GBE_MEM, align 4
  %54 = mul nsw i32 %53, 1024
  %55 = mul nsw i32 %54, 1024
  store i32 %55, i32* @gbe_mem_size, align 4
  br label %56

56:                                               ; preds = %52, %43
  %57 = load i32, i32* @gbe_mem_size, align 4
  %58 = load i32, i32* @TILE_SIZE, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @TILE_SIZE, align 4
  store i32 %61, i32* @gbe_mem_size, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %65

63:                                               ; preds = %39
  %64 = load i8*, i8** %4, align 8
  store i8* %64, i8** @mode_option, align 8
  br label %65

65:                                               ; preds = %63, %62
  br label %66

66:                                               ; preds = %65, %38
  br label %13

67:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memparse(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
