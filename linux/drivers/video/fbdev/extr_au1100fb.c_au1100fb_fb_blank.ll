; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_fb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.au1100fb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fb_blank %d %p\00", align 1
@LCD_CONTROL_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @au1100fb_fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1100fb_fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.au1100fb_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %7 = call %struct.au1100fb_device* @to_au1100fb_device(%struct.fb_info* %6)
  store %struct.au1100fb_device* %7, %struct.au1100fb_device** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = call i32 @print_dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8, %struct.fb_info* %9)
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %31 [
    i32 130, label %12
    i32 128, label %21
    i32 131, label %21
    i32 129, label %21
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @LCD_CONTROL_GO, align 4
  %14 = load %struct.au1100fb_device*, %struct.au1100fb_device** %5, align 8
  %15 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %13
  store i32 %19, i32* %17, align 4
  %20 = call i32 (...) @wmb()
  br label %32

21:                                               ; preds = %2, %2, %2
  %22 = load i32, i32* @LCD_CONTROL_GO, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.au1100fb_device*, %struct.au1100fb_device** %5, align 8
  %25 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %23
  store i32 %29, i32* %27, align 4
  %30 = call i32 (...) @wmb()
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %21, %12
  ret i32 0
}

declare dso_local %struct.au1100fb_device* @to_au1100fb_device(%struct.fb_info*) #1

declare dso_local i32 @print_dbg(i8*, i32, %struct.fb_info*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
