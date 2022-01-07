; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_write_start_code_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_write_start_code_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32*, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbsp*)* @nal_h264_write_start_code_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nal_h264_write_start_code_prefix(%struct.rbsp* %0) #0 {
  %2 = alloca %struct.rbsp*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.rbsp* %0, %struct.rbsp** %2, align 8
  %5 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %6 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %9 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @DIV_ROUND_UP(i32 %10, i32 8)
  %12 = getelementptr inbounds i32, i32* %7, i64 %11
  store i32* %12, i32** %3, align 8
  store i32 4, i32* %4, align 4
  %13 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %14 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @DIV_ROUND_UP(i32 %15, i32 8)
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %21 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %28 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  br label %44

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %38, 8
  %40 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %41 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %29, %24
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
