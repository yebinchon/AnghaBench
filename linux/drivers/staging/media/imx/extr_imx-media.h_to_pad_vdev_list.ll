; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media.h_to_pad_vdev_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media.h_to_pad_vdev_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.v4l2_subdev = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.v4l2_subdev*, i32)* @to_pad_vdev_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @to_pad_vdev_list(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %6, i32 0, i32 0
  %8 = load %struct.list_head*, %struct.list_head** %7, align 8
  store %struct.list_head* %8, %struct.list_head** %5, align 8
  %9 = load %struct.list_head*, %struct.list_head** %5, align 8
  %10 = icmp ne %struct.list_head* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %12, i64 %14
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi %struct.list_head* [ %15, %11 ], [ null, %16 ]
  ret %struct.list_head* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
