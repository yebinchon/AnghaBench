; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.uvesafb_par* }
%struct.uvesafb_par = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [48 x i8] c"save hardware state failed, error code is %ld!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @uvesafb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvesafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.uvesafb_par*, %struct.uvesafb_par** %9, align 8
  store %struct.uvesafb_par* %10, %struct.uvesafb_par** %5, align 8
  %11 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %12 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %11, i32 0, i32 0
  %13 = call i32 @atomic_read(i32* %12)
  store i32 %13, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %18 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %23 = call i32* @uvesafb_vbe_state_save(%struct.uvesafb_par* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @IS_ERR(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @PTR_ERR(i32* %28)
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %35

31:                                               ; preds = %21
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %34 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %16, %2
  %37 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %38 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %37, i32 0, i32 0
  %39 = call i32 @atomic_inc(i32* %38)
  ret i32 0
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32* @uvesafb_vbe_state_save(%struct.uvesafb_par*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
