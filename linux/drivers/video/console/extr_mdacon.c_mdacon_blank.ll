; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_mdacon.c_mdacon_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_mdacon.c_mdacon_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32 }

@mda_type = common dso_local global i64 0, align 8
@TYPE_MDA = common dso_local global i64 0, align 8
@mda_vram_base = common dso_local global i32 0, align 4
@mda_mode_port = common dso_local global i32 0, align 4
@MDA_MODE_VIDEO_EN = common dso_local global i32 0, align 4
@MDA_MODE_BLINK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32)* @mdacon_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdacon_blank(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @mda_type, align 8
  %9 = load i64, i64* @TYPE_MDA, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* @mda_vram_base, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mda_convert_attr(i32 %18)
  %20 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @scr_memsetw(i32 %15, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %14, %11
  store i32 1, i32* %4, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @mda_mode_port, align 4
  %30 = call i32 @outb_p(i32 0, i32 %29)
  br label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @MDA_MODE_VIDEO_EN, align 4
  %33 = load i32, i32* @MDA_MODE_BLINK_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @mda_mode_port, align 4
  %36 = call i32 @outb_p(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %28
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @scr_memsetw(i32, i32, i32) #1

declare dso_local i32 @mda_convert_attr(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
