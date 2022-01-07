; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_set_dumb_panel_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_set_dumb_panel_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.pxa168fb_info* }
%struct.TYPE_2__ = type { i32 }
%struct.pxa168fb_info = type { i64, i64, i32 }
%struct.pxa168fb_mach_info = type { i32, i32, i32, i64, i64, i64, i64 }

@LCD_SPU_DUMB_CTRL = common dso_local global i64 0, align 8
@FB_SYNC_COMP_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @set_dumb_panel_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dumb_panel_control(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pxa168fb_info*, align 8
  %4 = alloca %struct.pxa168fb_mach_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %7, align 8
  store %struct.pxa168fb_info* %8, %struct.pxa168fb_info** %3, align 8
  %9 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pxa168fb_mach_info* @dev_get_platdata(i32 %11)
  store %struct.pxa168fb_mach_info* %12, %struct.pxa168fb_mach_info** %4, align 8
  %13 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = and i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %27 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 7, %24 ], [ %28, %25 ]
  %31 = shl i32 %30, 28
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %35 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 20
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %41 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 12
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %47 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 128, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %55 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 64, i32 0
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FB_SYNC_COMP_HIGH_ACT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 32, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %74 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 16, i32 0
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 8
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 0, i32 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %104 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 2, i32 0
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %113 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  ret void
}

declare dso_local %struct.pxa168fb_mach_info* @dev_get_platdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
