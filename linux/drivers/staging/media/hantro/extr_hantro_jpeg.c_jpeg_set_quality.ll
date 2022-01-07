; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_jpeg.c_jpeg_set_quality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_jpeg.c_jpeg_set_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUMA_QUANT_OFF = common dso_local global i32 0, align 4
@luma_q_table = common dso_local global i32 0, align 4
@CHROMA_QUANT_OFF = common dso_local global i32 0, align 4
@chroma_q_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @jpeg_set_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpeg_set_quality(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 50
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 5000, %9
  store i32 %10, i32* %5, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 2, %12
  %14 = sub nsw i32 200, %13
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @LUMA_QUANT_OFF, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i32, i32* @luma_q_table, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @jpeg_scale_quant_table(i8* %19, i32 %20, i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @CHROMA_QUANT_OFF, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* @chroma_q_table, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @jpeg_scale_quant_table(i8* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @jpeg_scale_quant_table(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
