; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_build_p_ref_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_build_p_ref_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_h264_reflist_builder = type { i32, i32 }

@p_ref_list_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_h264_reflist_builder*, i32*)* @build_p_ref_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_p_ref_list(%struct.hantro_h264_reflist_builder* %0, i32* %1) #0 {
  %3 = alloca %struct.hantro_h264_reflist_builder*, align 8
  %4 = alloca i32*, align 8
  store %struct.hantro_h264_reflist_builder* %0, %struct.hantro_h264_reflist_builder** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %3, align 8
  %7 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @memcpy(i32* %5, i32 %8, i32 4)
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %3, align 8
  %12 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @p_ref_list_cmp, align 4
  %15 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %3, align 8
  %16 = call i32 @sort_r(i32* %10, i32 %13, i32 4, i32 %14, i32* null, %struct.hantro_h264_reflist_builder* %15)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sort_r(i32*, i32, i32, i32, i32*, %struct.hantro_h264_reflist_builder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
