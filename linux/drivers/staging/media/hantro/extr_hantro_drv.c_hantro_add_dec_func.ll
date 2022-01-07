; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_add_dec_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_add_dec_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MEDIA_ENT_F_PROC_VIDEO_DECODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hantro_dev*)* @hantro_add_dec_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hantro_add_dec_func(%struct.hantro_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hantro_dev*, align 8
  store %struct.hantro_dev* %0, %struct.hantro_dev** %3, align 8
  %4 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %5 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %13 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_DECODER, align 4
  %14 = call i32 @hantro_add_func(%struct.hantro_dev* %12, i32 %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @hantro_add_func(%struct.hantro_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
