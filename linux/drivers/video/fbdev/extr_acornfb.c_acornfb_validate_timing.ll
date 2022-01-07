; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_acornfb.c_acornfb_validate_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_acornfb.c_acornfb_validate_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fb_monspecs = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_monspecs*)* @acornfb_validate_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acornfb_validate_timing(%struct.fb_var_screeninfo* %0, %struct.fb_monspecs* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_monspecs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_monspecs* %1, %struct.fb_monspecs** %4, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sdiv i32 1953125000, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = mul i64 %12, 512
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  %29 = udiv i64 %13, %28
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %33, %36
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = udiv i64 %30, %45
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %49 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %47, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %2
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %55 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ule i64 %53, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %61 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp uge i64 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %67 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ule i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %74

71:                                               ; preds = %64, %58, %52, %2
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  br label %74

74:                                               ; preds = %71, %70
  %75 = phi i32 [ 0, %70 ], [ %73, %71 ]
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
