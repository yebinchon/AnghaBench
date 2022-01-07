; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_FINISH_IMAGE_COLORMAP_ACCESS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_FINISH_IMAGE_COLORMAP_ACCESS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@REG_2 = common dso_local global i32 0, align 4
@REG_1 = common dso_local global i32 0, align 4
@S9000_ID_ARTIST = common dso_local global i64 0, align 8
@CRT_ID_VISUALIZE_EG = common dso_local global i64 0, align 8
@REG_26 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*)* @FINISH_IMAGE_COLORMAP_ACCESS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FINISH_IMAGE_COLORMAP_ACCESS(%struct.stifb_info* %0) #0 {
  %2 = alloca %struct.stifb_info*, align 8
  store %struct.stifb_info* %0, %struct.stifb_info** %2, align 8
  %3 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %4 = load i32, i32* @REG_2, align 4
  %5 = call i32 @WRITE_WORD(i32 1024, %struct.stifb_info* %3, i32 %4)
  %6 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %7 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %14 = load i32, i32* @REG_1, align 4
  %15 = call i32 @WRITE_WORD(i32 -2097151744, %struct.stifb_info* %13, i32 %14)
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %18 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @S9000_ID_ARTIST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %24 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CRT_ID_VISUALIZE_EG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %16
  %29 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %30 = load i32, i32* @REG_26, align 4
  %31 = call i32 @WRITE_WORD(i32 -2147483392, %struct.stifb_info* %29, i32 %30)
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %34 = load i32, i32* @REG_1, align 4
  %35 = call i32 @WRITE_WORD(i32 -2147483392, %struct.stifb_info* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %12
  %38 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %39 = call i32 @SETUP_FB(%struct.stifb_info* %38)
  ret void
}

declare dso_local i32 @WRITE_WORD(i32, %struct.stifb_info*, i32) #1

declare dso_local i32 @SETUP_FB(%struct.stifb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
