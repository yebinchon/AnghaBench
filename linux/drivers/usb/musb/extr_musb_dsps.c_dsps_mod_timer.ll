; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_mod_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_mod_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsps_glue = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.musb = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsps_glue*, i32)* @dsps_mod_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsps_mod_timer(%struct.dsps_glue* %0, i32 %1) #0 {
  %3 = alloca %struct.dsps_glue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.musb*, align 8
  %6 = alloca i32, align 4
  store %struct.dsps_glue* %0, %struct.dsps_glue** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dsps_glue*, %struct.dsps_glue** %3, align 8
  %8 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.musb* @platform_get_drvdata(i32 %9)
  store %struct.musb* %10, %struct.musb** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.dsps_glue*, %struct.dsps_glue** %3, align 8
  %15 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @msecs_to_jiffies(i32 %18)
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @msecs_to_jiffies(i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.musb*, %struct.musb** %5, align 8
  %25 = getelementptr inbounds %struct.musb, %struct.musb* %24, i32 0, i32 0
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @mod_timer(i32* %25, i64 %29)
  ret void
}

declare dso_local %struct.musb* @platform_get_drvdata(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
