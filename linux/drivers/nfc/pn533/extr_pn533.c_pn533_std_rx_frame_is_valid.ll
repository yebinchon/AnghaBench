; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_std_rx_frame_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_std_rx_frame_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pn533_std_frame = type { i64, i64, i32, i32 }
%struct.pn533_ext_frame = type { i64, i32, i32 }

@PN533_STD_FRAME_SOF = common dso_local global i32 0, align 4
@PN533_STD_FRAME_HEADER_LEN = common dso_local global i32 0, align 4
@PN533_EXT_FRAME_HEADER_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pn533*)* @pn533_std_rx_frame_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_std_rx_frame_is_valid(i8* %0, %struct.pn533* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pn533*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pn533_std_frame*, align 8
  %8 = alloca %struct.pn533_ext_frame*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pn533* %1, %struct.pn533** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pn533_std_frame*
  store %struct.pn533_std_frame* %10, %struct.pn533_std_frame** %7, align 8
  %11 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %7, align 8
  %12 = getelementptr inbounds %struct.pn533_std_frame, %struct.pn533_std_frame* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @PN533_STD_FRAME_SOF, align 4
  %15 = call i64 @cpu_to_be16(i32 %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %7, align 8
  %20 = call i32 @PN533_STD_IS_EXTENDED(%struct.pn533_std_frame* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %18
  %27 = load i32, i32* @PN533_STD_FRAME_HEADER_LEN, align 4
  %28 = load %struct.pn533*, %struct.pn533** %5, align 8
  %29 = getelementptr inbounds %struct.pn533, %struct.pn533* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %7, align 8
  %33 = getelementptr inbounds %struct.pn533_std_frame, %struct.pn533_std_frame* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @pn533_std_checksum(i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %7, align 8
  %38 = getelementptr inbounds %struct.pn533_std_frame, %struct.pn533_std_frame* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %91

42:                                               ; preds = %26
  %43 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %7, align 8
  %44 = getelementptr inbounds %struct.pn533_std_frame, %struct.pn533_std_frame* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %7, align 8
  %47 = getelementptr inbounds %struct.pn533_std_frame, %struct.pn533_std_frame* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @pn533_std_data_checksum(i32 %45, i32 %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %7, align 8
  %52 = call i64 @PN533_STD_FRAME_CHECKSUM(%struct.pn533_std_frame* %51)
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %91

55:                                               ; preds = %42
  br label %90

56:                                               ; preds = %18
  %57 = load i8*, i8** %4, align 8
  %58 = bitcast i8* %57 to %struct.pn533_ext_frame*
  store %struct.pn533_ext_frame* %58, %struct.pn533_ext_frame** %8, align 8
  %59 = load i32, i32* @PN533_EXT_FRAME_HEADER_LEN, align 4
  %60 = load %struct.pn533*, %struct.pn533** %5, align 8
  %61 = getelementptr inbounds %struct.pn533, %struct.pn533* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.pn533_ext_frame*, %struct.pn533_ext_frame** %8, align 8
  %65 = getelementptr inbounds %struct.pn533_ext_frame, %struct.pn533_ext_frame* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @be16_to_cpu(i32 %66)
  %68 = call i64 @pn533_ext_checksum(i32 %67)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.pn533_ext_frame*, %struct.pn533_ext_frame** %8, align 8
  %71 = getelementptr inbounds %struct.pn533_ext_frame, %struct.pn533_ext_frame* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %91

75:                                               ; preds = %56
  %76 = load %struct.pn533_ext_frame*, %struct.pn533_ext_frame** %8, align 8
  %77 = getelementptr inbounds %struct.pn533_ext_frame, %struct.pn533_ext_frame* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pn533_ext_frame*, %struct.pn533_ext_frame** %8, align 8
  %80 = getelementptr inbounds %struct.pn533_ext_frame, %struct.pn533_ext_frame* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @be16_to_cpu(i32 %81)
  %83 = call i64 @pn533_std_data_checksum(i32 %78, i32 %82)
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.pn533_ext_frame*, %struct.pn533_ext_frame** %8, align 8
  %86 = call i64 @PN533_EXT_FRAME_CHECKSUM(%struct.pn533_ext_frame* %85)
  %87 = icmp ne i64 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %91

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %55
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %88, %74, %54, %41, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PN533_STD_IS_EXTENDED(%struct.pn533_std_frame*) #1

declare dso_local i64 @pn533_std_checksum(i32) #1

declare dso_local i64 @pn533_std_data_checksum(i32, i32) #1

declare dso_local i64 @PN533_STD_FRAME_CHECKSUM(%struct.pn533_std_frame*) #1

declare dso_local i64 @pn533_ext_checksum(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @PN533_EXT_FRAME_CHECKSUM(%struct.pn533_ext_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
