; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_read_pps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_read_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nal_h264_pps = type { i32 }
%struct.rbsp = type { i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nal_h264_read_pps(%struct.device* %0, %struct.nal_h264_pps* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nal_h264_pps*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rbsp, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.nal_h264_pps* %1, %struct.nal_h264_pps** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %5, align 8
  br label %37

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @rbsp_init(%struct.rbsp* %10, i8* %17, i64 %18, i32* @read)
  %20 = call i32 @nal_h264_read_start_code_prefix(%struct.rbsp* %10)
  %21 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 8
  store i32 %23, i32* %21, align 8
  %24 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %7, align 8
  %25 = call i32 @nal_h264_rbsp_pps(%struct.rbsp* %10, %struct.nal_h264_pps* %24)
  %26 = call i32 @nal_h264_rbsp_trailing_bits(%struct.rbsp* %10)
  %27 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  br label %37

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @DIV_ROUND_UP(i32 %35, i32 8)
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %33, %30, %13
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local i32 @rbsp_init(%struct.rbsp*, i8*, i64, i32*) #1

declare dso_local i32 @nal_h264_read_start_code_prefix(%struct.rbsp*) #1

declare dso_local i32 @nal_h264_rbsp_pps(%struct.rbsp*, %struct.nal_h264_pps*) #1

declare dso_local i32 @nal_h264_rbsp_trailing_bits(%struct.rbsp*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
