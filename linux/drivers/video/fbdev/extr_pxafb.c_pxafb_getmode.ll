; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_getmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_getmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_mode_info = type { i32, i32, i64 }
%struct.pxafb_mach_info = type { i32, %struct.pxafb_mode_info* }
%struct.fb_var_screeninfo = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxafb_mode_info* (%struct.pxafb_mach_info*, %struct.fb_var_screeninfo*)* @pxafb_getmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxafb_mode_info* @pxafb_getmode(%struct.pxafb_mach_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.pxafb_mach_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.pxafb_mode_info*, align 8
  %6 = alloca %struct.pxafb_mode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pxafb_mach_info* %0, %struct.pxafb_mach_info** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  store %struct.pxafb_mode_info* null, %struct.pxafb_mode_info** %5, align 8
  %10 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %3, align 8
  %11 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %10, i32 0, i32 1
  %12 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %11, align 8
  store %struct.pxafb_mode_info* %12, %struct.pxafb_mode_info** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %88, %2
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %3, align 8
  %16 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %13
  %20 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %20, i64 %22
  %24 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp uge i32 %25, %28
  br i1 %29, label %30, label %87

30:                                               ; preds = %19
  %31 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %31, i64 %33
  %35 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp uge i32 %36, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %30
  %42 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %42, i64 %44
  %46 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %41
  %51 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %51, i64 %53
  %55 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %50
  %60 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %60, i64 %62
  %64 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %59
  %71 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %71, i64 %73
  %75 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %7, align 4
  %77 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %77, i64 %79
  %81 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  %83 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.pxafb_mode_info, %struct.pxafb_mode_info* %83, i64 %85
  store %struct.pxafb_mode_info* %86, %struct.pxafb_mode_info** %5, align 8
  br label %87

87:                                               ; preds = %70, %59, %50, %41, %30, %19
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %13

91:                                               ; preds = %13
  %92 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %5, align 8
  ret %struct.pxafb_mode_info* %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
