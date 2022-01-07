; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_check_default_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_check_default_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i8* }

@default_par = common dso_local global i32 0, align 4
@atafb_predefined = common dso_local global %struct.fb_var_screeninfo* null, align 8
@FB_ACTIVATE_TEST = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"default%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"can't set default video mode\00", align 1
@default_mem_req = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_default_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_default_par(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_var_screeninfo, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @default_par, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** @atafb_predefined, align 8
  %11 = load i32, i32* @default_par, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i64 %13
  %15 = bitcast %struct.fb_var_screeninfo* %5 to i8*
  %16 = bitcast %struct.fb_var_screeninfo* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  %17 = load i8*, i8** @FB_ACTIVATE_TEST, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = call i64 @do_fb_set_var(%struct.fb_var_screeninfo* %5, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  store i32 0, i32* @default_par, align 4
  br label %22

22:                                               ; preds = %21, %9
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* @default_par, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** @atafb_predefined, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i64 %30
  %32 = bitcast %struct.fb_var_screeninfo* %5 to i8*
  %33 = bitcast %struct.fb_var_screeninfo* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 24, i1 false)
  %34 = load i8*, i8** @FB_ACTIVATE_TEST, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = call i64 @do_fb_set_var(%struct.fb_var_screeninfo* %5, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %2, align 4
  store i32 %39, i32* @default_par, align 4
  br label %40

40:                                               ; preds = %38, %26
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* @default_par, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 10
  br i1 %47, label %48, label %75

48:                                               ; preds = %45
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %53 = call i32 @get_video_mode(i8* %52)
  store i32 %53, i32* @default_par, align 4
  %54 = load i32, i32* @default_par, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %48
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** @atafb_predefined, align 8
  %60 = load i32, i32* @default_par, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i64 %62
  %64 = bitcast %struct.fb_var_screeninfo* %5 to i8*
  %65 = bitcast %struct.fb_var_screeninfo* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 24, i1 false)
  %66 = load i8*, i8** @FB_ACTIVATE_TEST, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 3
  store i8* %66, i8** %67, align 8
  %68 = call i64 @do_fb_set_var(%struct.fb_var_screeninfo* %5, i32 1)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %75

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %45

75:                                               ; preds = %70, %45
  br label %76

76:                                               ; preds = %75, %41
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %78, %80
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %81, %83
  %85 = sdiv i32 %84, 8
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* @default_mem_req, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = load i64, i64* %6, align 8
  store i64 %91, i64* @default_mem_req, align 8
  br label %92

92:                                               ; preds = %90, %76
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @do_fb_set_var(%struct.fb_var_screeninfo*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @get_video_mode(i8*) #2

declare dso_local i32 @panic(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
