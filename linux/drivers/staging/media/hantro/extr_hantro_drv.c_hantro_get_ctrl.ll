; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { i32 }
%struct.v4l2_ctrl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hantro_get_ctrl(%struct.hantro_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32* %7, i32 %8)
  store %struct.v4l2_ctrl* %9, %struct.v4l2_ctrl** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %11 = icmp ne %struct.v4l2_ctrl* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i8* [ %16, %12 ], [ null, %17 ]
  ret i8* %19
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
