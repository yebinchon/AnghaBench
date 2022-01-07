; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_read_filler_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_read_filler_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32*, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbsp*)* @nal_h264_read_filler_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nal_h264_read_filler_data(%struct.rbsp* %0) #0 {
  %2 = alloca %struct.rbsp*, align 8
  %3 = alloca i32*, align 8
  store %struct.rbsp* %0, %struct.rbsp** %2, align 8
  %4 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %5 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %8 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @DIV_ROUND_UP(i32 %9, i32 8)
  %11 = getelementptr inbounds i32, i32* %6, i64 %10
  store i32* %11, i32** %3, align 8
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %18 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @DIV_ROUND_UP(i32 %19, i32 8)
  %21 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %22 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %29 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  br label %37

30:                                               ; preds = %16
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %3, align 8
  %33 = load %struct.rbsp*, %struct.rbsp** %2, align 8
  %34 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 8
  store i32 %36, i32* %34, align 8
  br label %12

37:                                               ; preds = %25, %12
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
