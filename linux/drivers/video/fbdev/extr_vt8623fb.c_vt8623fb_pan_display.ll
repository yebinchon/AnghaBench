; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8623fb.c_vt8623fb_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8623fb.c_vt8623fb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.vt8623fb_info* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vt8623fb_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@vt8623_start_address_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @vt8623fb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8623fb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vt8623fb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %8, align 8
  store %struct.vt8623fb_info* %9, %struct.vt8623fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 16
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = lshr i32 %29, 3
  store i32 %30, i32* %6, align 4
  br label %59

31:                                               ; preds = %2
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %34, %38
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %42, %46
  %48 = sdiv i32 %47, 8
  %49 = add nsw i32 %39, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 4
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 2, i32 1
  %58 = lshr i32 %50, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %31, %15
  %60 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %5, align 8
  %61 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @vt8623_start_address_regs, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @svga_wcrt_multi(i32 %63, i32 %64, i32 %65)
  ret i32 0
}

declare dso_local i32 @svga_wcrt_multi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
