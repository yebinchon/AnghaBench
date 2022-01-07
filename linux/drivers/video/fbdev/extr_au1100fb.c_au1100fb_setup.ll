; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.au1100fb_device = type { i32, %struct.TYPE_3__* }

@known_lcd_panels = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"No LCD panels supported by driver!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"panel:\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Panel '%s' not supported!\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Unsupported option \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Panel=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1100fb_device*)* @au1100fb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1100fb_setup(%struct.au1100fb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au1100fb_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.au1100fb_device* %0, %struct.au1100fb_device** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @known_lcd_panels, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @print_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %91

16:                                               ; preds = %1
  %17 = load i32, i32* @DRIVER_NAME, align 4
  %18 = call i64 @fb_get_options(i32 %17, i8** %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %91

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %83, %29
  %31 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %84

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %80, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  store i8* %39, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %67, %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @known_lcd_panels, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = call i32 @strncmp(i8* %45, i8* %51, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %44
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @known_lcd_panels, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = load %struct.au1100fb_device*, %struct.au1100fb_device** %3, align 8
  %62 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %61, i32 0, i32 1
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.au1100fb_device*, %struct.au1100fb_device** %3, align 8
  %65 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %70

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %40

70:                                               ; preds = %56, %40
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @print_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %91

79:                                               ; preds = %70
  br label %83

80:                                               ; preds = %33
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @print_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %79
  br label %30

84:                                               ; preds = %30
  %85 = load %struct.au1100fb_device*, %struct.au1100fb_device** %3, align 8
  %86 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @print_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %84, %74, %26, %20, %12
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @print_err(i8*) #1

declare dso_local i64 @fb_get_options(i32, i8**) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @print_warn(i8*, i8*) #1

declare dso_local i32 @print_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
