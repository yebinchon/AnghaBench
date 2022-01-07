; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyber2000fb_enable_extregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyber2000fb_enable_extregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfb_info = type { i32 }

@EXT_FUNC_CTL = common dso_local global i32 0, align 4
@EXT_FUNC_CTL_EXTREGENBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cyber2000fb_enable_extregs(%struct.cfb_info* %0) #0 {
  %2 = alloca %struct.cfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.cfb_info* %0, %struct.cfb_info** %2, align 8
  %4 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %9 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @EXT_FUNC_CTL, align 4
  %14 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %15 = call i32 @cyber2000_grphr(i32 %13, %struct.cfb_info* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @EXT_FUNC_CTL_EXTREGENBL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @EXT_FUNC_CTL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %22 = call i32 @cyber2000_grphw(i32 %19, i32 %20, %struct.cfb_info* %21)
  br label %23

23:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @cyber2000_grphr(i32, %struct.cfb_info*) #1

declare dso_local i32 @cyber2000_grphw(i32, i32, %struct.cfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
