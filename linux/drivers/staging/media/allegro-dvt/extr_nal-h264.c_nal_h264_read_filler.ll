; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_read_filler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_read_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rbsp = type { i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@read = common dso_local global i32 0, align 4
@FILLER_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nal_h264_read_filler(%struct.device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rbsp, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %57

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @rbsp_init(%struct.rbsp* %8, i8* %18, i64 %19, i32* @read)
  %21 = call i32 @nal_h264_read_start_code_prefix(%struct.rbsp* %8)
  %22 = call i32 @rbsp_bit(%struct.rbsp* %8, i32* %9)
  %23 = call i32 @rbsp_bits(%struct.rbsp* %8, i32 2, i32* %10)
  %24 = call i32 @rbsp_bits(%struct.rbsp* %8, i32 5, i32* %11)
  %25 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %8, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %8, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  br label %57

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @FILLER_DATA, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %34, %31
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %4, align 8
  br label %57

44:                                               ; preds = %37
  %45 = call i32 @nal_h264_read_filler_data(%struct.rbsp* %8)
  %46 = call i32 @nal_h264_rbsp_trailing_bits(%struct.rbsp* %8)
  %47 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %8, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %4, align 8
  br label %57

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @DIV_ROUND_UP(i32 %55, i32 8)
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %53, %50, %41, %28, %14
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i32 @rbsp_init(%struct.rbsp*, i8*, i64, i32*) #1

declare dso_local i32 @nal_h264_read_start_code_prefix(%struct.rbsp*) #1

declare dso_local i32 @rbsp_bit(%struct.rbsp*, i32*) #1

declare dso_local i32 @rbsp_bits(%struct.rbsp*, i32, i32*) #1

declare dso_local i32 @nal_h264_read_filler_data(%struct.rbsp*) #1

declare dso_local i32 @nal_h264_rbsp_trailing_bits(%struct.rbsp*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
