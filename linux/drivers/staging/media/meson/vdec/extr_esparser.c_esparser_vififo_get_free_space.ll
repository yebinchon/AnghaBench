; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_vififo_get_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_vififo_get_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i64, %struct.amvdec_core*, %struct.TYPE_2__* }
%struct.amvdec_core = type { i32 }
%struct.TYPE_2__ = type { %struct.amvdec_ops* }
%struct.amvdec_ops = type { {}* }

@PARSER_VIDEO_HOLE = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"VIFIFO usage (%u) > VIFIFO size (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.amvdec_session*)* @esparser_vififo_get_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @esparser_vififo_get_free_space(%struct.amvdec_session* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.amvdec_session*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.amvdec_ops*, align 8
  %6 = alloca %struct.amvdec_core*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %3, align 8
  %7 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %8 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.amvdec_ops*, %struct.amvdec_ops** %10, align 8
  store %struct.amvdec_ops* %11, %struct.amvdec_ops** %5, align 8
  %12 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %13 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %12, i32 0, i32 1
  %14 = load %struct.amvdec_core*, %struct.amvdec_core** %13, align 8
  store %struct.amvdec_core* %14, %struct.amvdec_core** %6, align 8
  %15 = load %struct.amvdec_ops*, %struct.amvdec_ops** %5, align 8
  %16 = getelementptr inbounds %struct.amvdec_ops, %struct.amvdec_ops* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i64 (%struct.amvdec_session*)**
  %18 = load i64 (%struct.amvdec_session*)*, i64 (%struct.amvdec_session*)** %17, align 8
  %19 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %20 = call i64 %18(%struct.amvdec_session* %19)
  store i64 %20, i64* %4, align 8
  %21 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %22 = load i32, i32* @PARSER_VIDEO_HOLE, align 4
  %23 = call i64 @amvdec_read_parser(%struct.amvdec_core* %21, i32 %22)
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load i32, i32* @SZ_1K, align 4
  %27 = mul nsw i32 6, %26
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %33 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %1
  %37 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %38 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %37, i32 0, i32 1
  %39 = load %struct.amvdec_core*, %struct.amvdec_core** %38, align 8
  %40 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %44 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45)
  store i64 0, i64* %2, align 8
  br label %53

47:                                               ; preds = %1
  %48 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %49 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = sub nsw i64 %50, %51
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %47, %36
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i64 @amvdec_read_parser(%struct.amvdec_core*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
