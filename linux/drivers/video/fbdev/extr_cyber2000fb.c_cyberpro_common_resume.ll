; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyberpro_common_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyberpro_common_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfb_info = type { i32, i32, i32 }

@EXT_MEM_CTL1 = common dso_local global i32 0, align 4
@EXT_MEM_CTL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfb_info*)* @cyberpro_common_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyberpro_common_resume(%struct.cfb_info* %0) #0 {
  %2 = alloca %struct.cfb_info*, align 8
  store %struct.cfb_info* %0, %struct.cfb_info** %2, align 8
  %3 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %4 = call i32 @cyberpro_init_hw(%struct.cfb_info* %3)
  %5 = load i32, i32* @EXT_MEM_CTL1, align 4
  %6 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %7 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %10 = call i32 @cyber2000_grphw(i32 %5, i32 %8, %struct.cfb_info* %9)
  %11 = load i32, i32* @EXT_MEM_CTL2, align 4
  %12 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %13 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %16 = call i32 @cyber2000_grphw(i32 %11, i32 %14, %struct.cfb_info* %15)
  %17 = load %struct.cfb_info*, %struct.cfb_info** %2, align 8
  %18 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %17, i32 0, i32 0
  %19 = call i32 @cyber2000fb_set_par(i32* %18)
  ret void
}

declare dso_local i32 @cyberpro_init_hw(%struct.cfb_info*) #1

declare dso_local i32 @cyber2000_grphw(i32, i32, %struct.cfb_info*) #1

declare dso_local i32 @cyber2000fb_set_par(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
