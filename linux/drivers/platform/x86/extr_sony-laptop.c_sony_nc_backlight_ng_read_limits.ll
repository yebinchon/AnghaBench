; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_backlight_ng_read_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_backlight_ng_read_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_backlight_props = type { i32, i8, i32 }

@sony_nc_acpi_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SN06\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Brightness level: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Brightness levels: min=%d max=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sony_backlight_props*)* @sony_nc_backlight_ng_read_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_nc_backlight_ng_read_limits(i32 %0, %struct.sony_backlight_props* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sony_backlight_props*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  store %struct.sony_backlight_props* %1, %struct.sony_backlight_props** %4, align 8
  store i32 0, i32* %7, align 4
  store i8 -1, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %11 = bitcast [32 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %14 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %16 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %15, i32 0, i32 1
  store i8 0, i8* %16, align 4
  %17 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %18 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %17, i32 0, i32 2
  store i32 255, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @sony_find_snc_handle(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @sony_nc_acpi_handle, align 4
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %23 = call i32 @sony_nc_buffer_call(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %5, i8* %22, i32 32)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %102

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %31 [
    i32 303, label %29
    i32 311, label %29
    i32 323, label %30
    i32 331, label %30
    i32 332, label %30
  ]

29:                                               ; preds = %27, %27
  store i32 9, i32* %7, align 4
  br label %31

30:                                               ; preds = %27, %27, %27
  store i32 16, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %30, %29
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %84, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %39 = call i32 @ARRAY_SIZE(i8* %38)
  %40 = icmp slt i32 %37, %39
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  br i1 %42, label %43, label %87

43:                                               ; preds = %41
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i32 (i8*, i8, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %47)
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %87

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %9, align 1
  br label %69

69:                                               ; preds = %64, %55
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %8, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %8, align 1
  br label %83

83:                                               ; preds = %78, %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %32

87:                                               ; preds = %54, %41
  %88 = load i8, i8* %8, align 1
  %89 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %90 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %89, i32 0, i32 1
  store i8 %88, i8* %90, align 4
  %91 = load i8, i8* %9, align 1
  %92 = zext i8 %91 to i32
  %93 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %94 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %96 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %95, i32 0, i32 1
  %97 = load i8, i8* %96, align 4
  %98 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %99 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i8, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %97, i32 %100)
  br label %102

102:                                              ; preds = %87, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sony_find_snc_handle(i32) #2

declare dso_local i32 @sony_nc_buffer_call(i32, i8*, i32*, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @dprintk(i8*, i8 zeroext, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
