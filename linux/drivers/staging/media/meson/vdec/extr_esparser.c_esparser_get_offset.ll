; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_get_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i64, i64, i32, i32, %struct.amvdec_core* }
%struct.amvdec_core = type { i32 }

@PARSER_VIDEO_WP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.amvdec_session*)* @esparser_get_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @esparser_get_offset(%struct.amvdec_session* %0) #0 {
  %2 = alloca %struct.amvdec_session*, align 8
  %3 = alloca %struct.amvdec_core*, align 8
  %4 = alloca i64, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %2, align 8
  %5 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %6 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %5, i32 0, i32 4
  %7 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  store %struct.amvdec_core* %7, %struct.amvdec_core** %3, align 8
  %8 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %9 = load i32, i32* @PARSER_VIDEO_WP, align 4
  %10 = call i64 @amvdec_read_parser(%struct.amvdec_core* %8, i32 %9)
  %11 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %12 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %17 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %22 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %28 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %30 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %33 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i64 @amvdec_read_parser(%struct.amvdec_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
