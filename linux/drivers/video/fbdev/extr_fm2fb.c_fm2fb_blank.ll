; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fm2fb.c_fm2fb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fm2fb.c_fm2fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@FRAMEMASTER_ROM = common dso_local global i8 0, align 1
@FRAMEMASTER_ENABLE = common dso_local global i8 0, align 1
@FRAMEMASTER_NOLACE = common dso_local global i8 0, align 1
@fm2fb_reg = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @fm2fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm2fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load i8, i8* @FRAMEMASTER_ROM, align 1
  store i8 %6, i8* %5, align 1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load i8, i8* @FRAMEMASTER_ENABLE, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @FRAMEMASTER_NOLACE, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %5, align 1
  br label %19

19:                                               ; preds = %9, %2
  %20 = load i8, i8* %5, align 1
  %21 = load i8*, i8** @fm2fb_reg, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %20, i8* %22, align 1
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
