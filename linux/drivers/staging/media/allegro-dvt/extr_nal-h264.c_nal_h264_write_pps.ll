; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_write_pps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_write_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nal_h264_pps = type { i32 }
%struct.rbsp = type { i32, i64 }

@PICTURE_PARAMETER_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nal_h264_write_pps(%struct.device* %0, i8* %1, i64 %2, %struct.nal_h264_pps* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nal_h264_pps*, align 8
  %10 = alloca %struct.rbsp, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.nal_h264_pps* %3, %struct.nal_h264_pps** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @PICTURE_PARAMETER_SET, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %41

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @rbsp_init(%struct.rbsp* %10, i8* %21, i64 %22, i32* @write)
  %24 = call i32 @nal_h264_write_start_code_prefix(%struct.rbsp* %10)
  %25 = call i32 @rbsp_bit(%struct.rbsp* %10, i32* %11)
  %26 = call i32 @rbsp_bits(%struct.rbsp* %10, i32 2, i32* %12)
  %27 = call i32 @rbsp_bits(%struct.rbsp* %10, i32 5, i32* %13)
  %28 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %29 = call i32 @nal_h264_rbsp_pps(%struct.rbsp* %10, %struct.nal_h264_pps* %28)
  %30 = call i32 @nal_h264_rbsp_trailing_bits(%struct.rbsp* %10)
  %31 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  br label %41

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @DIV_ROUND_UP(i32 %39, i32 8)
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %37, %34, %17
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i32 @rbsp_init(%struct.rbsp*, i8*, i64, i32*) #1

declare dso_local i32 @nal_h264_write_start_code_prefix(%struct.rbsp*) #1

declare dso_local i32 @rbsp_bit(%struct.rbsp*, i32*) #1

declare dso_local i32 @rbsp_bits(%struct.rbsp*, i32, i32*) #1

declare dso_local i32 @nal_h264_rbsp_pps(%struct.rbsp*, %struct.nal_h264_pps*) #1

declare dso_local i32 @nal_h264_rbsp_trailing_bits(%struct.rbsp*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
