; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_read_sps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_read_sps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nal_h264_sps = type { i32 }
%struct.rbsp = type { i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@read = common dso_local global i32 0, align 4
@SEQUENCE_PARAMETER_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nal_h264_read_sps(%struct.device* %0, %struct.nal_h264_sps* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nal_h264_sps*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rbsp, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.nal_h264_sps* %1, %struct.nal_h264_sps** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %57

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @rbsp_init(%struct.rbsp* %10, i8* %20, i64 %21, i32* @read)
  %23 = call i32 @nal_h264_read_start_code_prefix(%struct.rbsp* %10)
  %24 = call i32 @rbsp_bit(%struct.rbsp* %10, i32* %11)
  %25 = call i32 @rbsp_bits(%struct.rbsp* %10, i32 2, i32* %12)
  %26 = call i32 @rbsp_bits(%struct.rbsp* %10, i32 5, i32* %13)
  %27 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @SEQUENCE_PARAMETER_SET, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %33, %30, %19
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %57

43:                                               ; preds = %36
  %44 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %7, align 8
  %45 = call i32 @nal_h264_rbsp_sps(%struct.rbsp* %10, %struct.nal_h264_sps* %44)
  %46 = call i32 @nal_h264_rbsp_trailing_bits(%struct.rbsp* %10)
  %47 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %5, align 8
  br label %57

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @DIV_ROUND_UP(i32 %55, i32 8)
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %53, %50, %40, %16
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local i32 @rbsp_init(%struct.rbsp*, i8*, i64, i32*) #1

declare dso_local i32 @nal_h264_read_start_code_prefix(%struct.rbsp*) #1

declare dso_local i32 @rbsp_bit(%struct.rbsp*, i32*) #1

declare dso_local i32 @rbsp_bits(%struct.rbsp*, i32, i32*) #1

declare dso_local i32 @nal_h264_rbsp_sps(%struct.rbsp*, %struct.nal_h264_sps*) #1

declare dso_local i32 @nal_h264_rbsp_trailing_bits(%struct.rbsp*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
