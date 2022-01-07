; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_simplefb.c_simplefb_parse_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_simplefb.c_simplefb_parse_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.simplefb_params = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.simplefb_platform_data = type { i32, i32, i32, i32 }

@simplefb_formats = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Invalid format value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.simplefb_params*)* @simplefb_parse_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simplefb_parse_pd(%struct.platform_device* %0, %struct.simplefb_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.simplefb_params*, align 8
  %6 = alloca %struct.simplefb_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.simplefb_params* %1, %struct.simplefb_params** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.simplefb_platform_data* @dev_get_platdata(i32* %9)
  store %struct.simplefb_platform_data* %10, %struct.simplefb_platform_data** %6, align 8
  %11 = load %struct.simplefb_platform_data*, %struct.simplefb_platform_data** %6, align 8
  %12 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %15 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.simplefb_platform_data*, %struct.simplefb_platform_data** %6, align 8
  %17 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %20 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.simplefb_platform_data*, %struct.simplefb_platform_data** %6, align 8
  %22 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %25 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %27 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %26, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %27, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %53, %2
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @simplefb_formats, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load %struct.simplefb_platform_data*, %struct.simplefb_platform_data** %6, align 8
  %35 = getelementptr inbounds %struct.simplefb_platform_data, %struct.simplefb_platform_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @simplefb_formats, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @strcmp(i32 %36, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %53

46:                                               ; preds = %33
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @simplefb_formats, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %52 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %51, i32 0, i32 0
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %52, align 8
  br label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %28

56:                                               ; preds = %46, %28
  %57 = load %struct.simplefb_params*, %struct.simplefb_params** %5, align 8
  %58 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp ne %struct.TYPE_3__* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.simplefb_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
