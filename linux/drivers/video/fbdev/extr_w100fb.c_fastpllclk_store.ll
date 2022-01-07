; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_fastpllclk_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_fastpllclk_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { %struct.w100fb_par* }
%struct.w100fb_par = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"w100fb: Using fast system clock (if possible)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"w100fb: Using normal system clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fastpllclk_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fastpllclk_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca %struct.w100fb_par*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.fb_info* %12, %struct.fb_info** %9, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load %struct.w100fb_par*, %struct.w100fb_par** %14, align 8
  store %struct.w100fb_par* %15, %struct.w100fb_par** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @simple_strtoul(i8* %16, i32* null, i32 10)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.w100fb_par*, %struct.w100fb_par** %10, align 8
  %21 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %27

23:                                               ; preds = %4
  %24 = load %struct.w100fb_par*, %struct.w100fb_par** %10, align 8
  %25 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.w100fb_par*, %struct.w100fb_par** %10, align 8
  %29 = call i32 @w100_init_clocks(%struct.w100fb_par* %28)
  %30 = load %struct.w100fb_par*, %struct.w100fb_par** %10, align 8
  %31 = call i32 @calc_hsync(%struct.w100fb_par* %30)
  %32 = load i64, i64* %8, align 8
  ret i64 %32
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @w100_init_clocks(%struct.w100fb_par*) #1

declare dso_local i32 @calc_hsync(%struct.w100fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
