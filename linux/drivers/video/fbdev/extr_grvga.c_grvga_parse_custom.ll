; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_grvga.c_grvga_parse_custom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_grvga.c_grvga_parse_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fb_var_screeninfo*)* @grvga_parse_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grvga_parse_custom(i8* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %109

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %101, %23, %15
  %17 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %102

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %16

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %100 [
    i32 0, label %26
    i32 1, label %33
    i32 2, label %42
    i32 3, label %49
    i32 4, label %56
    i32 5, label %63
    i32 6, label %72
    i32 7, label %79
    i32 8, label %86
    i32 9, label %93
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @simple_strtoul(i8* %27, i32* null, i32 0)
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 13
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %101

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @simple_strtoul(i8* %34, i32* null, i32 0)
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 12
  store i8* %35, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %101

42:                                               ; preds = %24
  %43 = load i8*, i8** %6, align 8
  %44 = call i8* @simple_strtoul(i8* %43, i32* null, i32 0)
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %101

49:                                               ; preds = %24
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @simple_strtoul(i8* %50, i32* null, i32 0)
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %101

56:                                               ; preds = %24
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @simple_strtoul(i8* %57, i32* null, i32 0)
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %101

63:                                               ; preds = %24
  %64 = load i8*, i8** %6, align 8
  %65 = call i8* @simple_strtoul(i8* %64, i32* null, i32 0)
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 7
  store i8* %65, i8** %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %101

72:                                               ; preds = %24
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @simple_strtoul(i8* %73, i32* null, i32 0)
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %101

79:                                               ; preds = %24
  %80 = load i8*, i8** %6, align 8
  %81 = call i8* @simple_strtoul(i8* %80, i32* null, i32 0)
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %101

86:                                               ; preds = %24
  %87 = load i8*, i8** %6, align 8
  %88 = call i8* @simple_strtoul(i8* %87, i32* null, i32 0)
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %101

93:                                               ; preds = %24
  %94 = load i8*, i8** %6, align 8
  %95 = call i8* @simple_strtoul(i8* %94, i32* null, i32 0)
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %101

100:                                              ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %109

101:                                              ; preds = %93, %86, %79, %72, %63, %56, %49, %42, %33, %26
  br label %16

102:                                              ; preds = %16
  %103 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %107 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %108 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %100, %14
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
