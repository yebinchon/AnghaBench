; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_set_mclk_as_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_set_mclk_as_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.cirrusfb_info* }
%struct.cirrusfb_info = type { i32 }

@CL_SEQR1F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Set %s as pixclock source.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MCLK/2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MCLK\00", align 1
@CL_SEQR1E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @cirrusfb_set_mclk_as_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cirrusfb_set_mclk_as_source(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cirrusfb_info*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %9, align 8
  store %struct.cirrusfb_info* %10, %struct.cirrusfb_info** %5, align 8
  %11 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  %12 = icmp ne %struct.cirrusfb_info* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  %16 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CL_SEQR1F, align 4
  %19 = call i32 @vga_rseq(i32 %17, i32 %18)
  %20 = and i32 %19, -65
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %6, align 1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %2
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, 64
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %6, align 1
  %37 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  %38 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CL_SEQR1E, align 4
  %41 = call i32 @vga_rseq(i32 %39, i32 %40)
  %42 = and i32 %41, -2
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %7, align 1
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %51

46:                                               ; preds = %24
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, 1
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %7, align 1
  br label %51

51:                                               ; preds = %46, %24
  %52 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  %53 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CL_SEQR1E, align 4
  %56 = load i8, i8* %7, align 1
  %57 = call i32 @vga_wseq(i32 %54, i32 %55, i8 zeroext %56)
  br label %58

58:                                               ; preds = %51, %2
  %59 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  %60 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CL_SEQR1F, align 4
  %63 = load i8, i8* %6, align 1
  %64 = call i32 @vga_wseq(i32 %61, i32 %62, i8 zeroext %63)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vga_rseq(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @vga_wseq(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
