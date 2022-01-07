; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_write_filler_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_write_filler_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbsp*)* @nal_h264_write_filler_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nal_h264_write_filler_data(%struct.rbsp* %0) #0 {
  %2 = alloca %struct.rbsp*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.rbsp* %0, %struct.rbsp** %2, align 8
  %5 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %6 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %9 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @DIV_ROUND_UP(i32 %10, i32 8)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %7, i64 %12
  store i32* %13, i32** %3, align 8
  %14 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %15 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %18 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DIV_ROUND_UP(i32 %19, i32 8)
  %21 = sub nsw i32 %16, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @memset(i32* %23, i32 255, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 8
  %28 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %29 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 8
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
