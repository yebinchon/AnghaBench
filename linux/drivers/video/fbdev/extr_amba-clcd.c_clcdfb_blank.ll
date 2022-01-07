; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.clcd_fb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @clcdfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clcdfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.clcd_fb*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %7 = call %struct.clcd_fb* @to_clcd(%struct.fb_info* %6)
  store %struct.clcd_fb* %7, %struct.clcd_fb** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.clcd_fb*, %struct.clcd_fb** %5, align 8
  %12 = call i32 @clcdfb_disable(%struct.clcd_fb* %11)
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.clcd_fb*, %struct.clcd_fb** %5, align 8
  %15 = load %struct.clcd_fb*, %struct.clcd_fb** %5, align 8
  %16 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clcdfb_enable(%struct.clcd_fb* %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %10
  ret i32 0
}

declare dso_local %struct.clcd_fb* @to_clcd(%struct.fb_info*) #1

declare dso_local i32 @clcdfb_disable(%struct.clcd_fb*) #1

declare dso_local i32 @clcdfb_enable(%struct.clcd_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
