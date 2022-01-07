; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neofb_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neofb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.neofb_par* }
%struct.neofb_par = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @neofb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neofb_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.neofb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.neofb_par*, %struct.neofb_par** %8, align 8
  store %struct.neofb_par* %9, %struct.neofb_par** %6, align 8
  %10 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %11 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %19 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %24 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %23, i32 0, i32 1
  %25 = call i32 @restore_vga(i32* %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %28 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @restore_vga(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
