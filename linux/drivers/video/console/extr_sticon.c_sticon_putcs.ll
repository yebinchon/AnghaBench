; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_putcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_putcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.vc_data = type { i64 }

@vga_is_gfx = common dso_local global i64 0, align 8
@console_blanked = common dso_local global i64 0, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@sticon_sti = common dso_local global i32 0, align 4
@CURSOR_DRAW_DELAY = common dso_local global i32 0, align 4
@vbl_cursor_cnt = common dso_local global i32 0, align 4
@p = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i16*, i32, i32, i32)* @sticon_putcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sticon_putcs(%struct.vc_data* %0, i16* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* @vga_is_gfx, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i64, i64* @console_blanked, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %5
  br label %45

18:                                               ; preds = %14
  %19 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KD_TEXT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %45

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32, i32* @sticon_sti, align 4
  %32 = load i16*, i16** %7, align 8
  %33 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %33, i16** %7, align 8
  %34 = ptrtoint i16* %32 to i32
  %35 = call i32 @scr_readw(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = call i32 @sti_putc(i32 %31, i32 %35, i32 %36, i32 %37)
  br label %26

40:                                               ; preds = %26
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @CURSOR_DRAW_DELAY, align 4
  store i32 %44, i32* @vbl_cursor_cnt, align 4
  br label %45

45:                                               ; preds = %17, %24, %43, %40
  ret void
}

declare dso_local i32 @sti_putc(i32, i32, i32, i32) #1

declare dso_local i32 @scr_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
