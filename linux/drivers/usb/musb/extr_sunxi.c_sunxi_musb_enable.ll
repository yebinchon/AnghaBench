; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sunxi_glue = type { i32, i32, %struct.musb* }

@SUNXI_MUSB_FL_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*)* @sunxi_musb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_musb_enable(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca %struct.sunxi_glue*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %4 = load %struct.musb*, %struct.musb** %2, align 8
  %5 = getelementptr inbounds %struct.musb, %struct.musb* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sunxi_glue* @dev_get_drvdata(i32 %8)
  store %struct.sunxi_glue* %9, %struct.sunxi_glue** %3, align 8
  %10 = load %struct.musb*, %struct.musb** %2, align 8
  %11 = load %struct.sunxi_glue*, %struct.sunxi_glue** %3, align 8
  %12 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %11, i32 0, i32 2
  store %struct.musb* %10, %struct.musb** %12, align 8
  %13 = load i32, i32* @SUNXI_MUSB_FL_ENABLED, align 4
  %14 = load %struct.sunxi_glue*, %struct.sunxi_glue** %3, align 8
  %15 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %14, i32 0, i32 1
  %16 = call i64 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.sunxi_glue*, %struct.sunxi_glue** %3, align 8
  %21 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %20, i32 0, i32 0
  %22 = call i32 @schedule_work(i32* %21)
  br label %23

23:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.sunxi_glue* @dev_get_drvdata(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
