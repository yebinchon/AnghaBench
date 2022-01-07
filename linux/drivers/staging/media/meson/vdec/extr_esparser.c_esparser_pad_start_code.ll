; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_pad_start_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_pad_start_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }

@ESPARSER_MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@SEARCH_PATTERN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @esparser_pad_start_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esparser_pad_start_code(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %7 = call i32 @vb2_get_plane_payload(%struct.vb2_buffer* %6, i32 0)
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = call i32* @vb2_plane_vaddr(%struct.vb2_buffer* %8, i32 0)
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ESPARSER_MIN_PACKET_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @ESPARSER_MIN_PACKET_SIZE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @memset(i32* %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* @SEARCH_PATTERN_LEN, align 4
  %29 = call i32 @memset(i32* %27, i32 0, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 1, i32* %43, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 255, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i32* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
