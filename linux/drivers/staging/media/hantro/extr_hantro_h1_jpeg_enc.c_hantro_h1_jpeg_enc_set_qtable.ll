; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h1_jpeg_enc.c_hantro_h1_jpeg_enc_set_qtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h1_jpeg_enc.c_hantro_h1_jpeg_enc_set_qtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32 }

@H1_JPEG_QUANT_TABLE_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_dev*, i8*, i8*)* @hantro_h1_jpeg_enc_set_qtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_h1_jpeg_enc_set_qtable(%struct.hantro_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hantro_dev* %0, %struct.hantro_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %32, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @H1_JPEG_QUANT_TABLE_COUNT, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = call i64 @get_unaligned_be32(i8* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @H1_REG_JPEG_LUMA_QUAT(i64 %20)
  %22 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %18, i64 %19, i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = call i64 @get_unaligned_be32(i8* %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @H1_REG_JPEG_CHROMA_QUAT(i64 %29)
  %31 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %27, i64 %28, i32 %30)
  br label %32

32:                                               ; preds = %13
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %9

35:                                               ; preds = %9
  ret void
}

declare dso_local i64 @get_unaligned_be32(i8*) #1

declare dso_local i32 @vepu_write_relaxed(%struct.hantro_dev*, i64, i32) #1

declare dso_local i32 @H1_REG_JPEG_LUMA_QUAT(i64) #1

declare dso_local i32 @H1_REG_JPEG_CHROMA_QUAT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
