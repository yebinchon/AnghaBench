; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_rattlerSetupPlanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_rattlerSetupPlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CRX24_OVERLAY_PLANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*)* @rattlerSetupPlanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rattlerSetupPlanes(%struct.stifb_info* %0) #0 {
  %2 = alloca %struct.stifb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stifb_info* %0, %struct.stifb_info** %2, align 8
  %5 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %6 = call i32 @CRX24_SETUP_RAMDAC(%struct.stifb_info* %5)
  %7 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %8 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CRX24_OVERLAY_PLANES, align 4
  %11 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %12 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %14 = call i32 @SETUP_FB(%struct.stifb_info* %13)
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %17 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %21 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %18
  %27 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %28 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %33 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %31, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %30, %38
  %40 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %41 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %46 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %44, %49
  %51 = sdiv i32 %50, 8
  %52 = call i32 @fb_memset(i64 %39, i32 255, i32 %51)
  br label %53

53:                                               ; preds = %26
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %58 = call i32 @CRX24_SET_OVLY_MASK(%struct.stifb_info* %57)
  %59 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %60 = call i32 @SETUP_FB(%struct.stifb_info* %59)
  ret void
}

declare dso_local i32 @CRX24_SETUP_RAMDAC(%struct.stifb_info*) #1

declare dso_local i32 @SETUP_FB(%struct.stifb_info*) #1

declare dso_local i32 @fb_memset(i64, i32, i32) #1

declare dso_local i32 @CRX24_SET_OVLY_MASK(%struct.stifb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
