; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_build_b_ref_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_build_b_ref_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_h264_reflist_builder = type { i32, i32 }

@b0_ref_list_cmp = common dso_local global i32 0, align 4
@b1_ref_list_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_h264_reflist_builder*, i32*, i32*)* @build_b_ref_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_b_ref_lists(%struct.hantro_h264_reflist_builder* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hantro_h264_reflist_builder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.hantro_h264_reflist_builder* %0, %struct.hantro_h264_reflist_builder** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %9 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @memcpy(i32* %7, i32 %10, i32 4)
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %14 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @b0_ref_list_cmp, align 4
  %17 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %18 = call i32 @sort_r(i32* %12, i32 %15, i32 4, i32 %16, i32* null, %struct.hantro_h264_reflist_builder* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %21 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32* %19, i32 %22, i32 4)
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %26 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @b1_ref_list_cmp, align 4
  %29 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %30 = call i32 @sort_r(i32* %24, i32 %27, i32 4, i32 %28, i32* null, %struct.hantro_h264_reflist_builder* %29)
  %31 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %32 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %51

35:                                               ; preds = %3
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %39 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcmp(i32* %36, i32* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @swap(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %35, %3
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sort_r(i32*, i32, i32, i32, i32*, %struct.hantro_h264_reflist_builder*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
