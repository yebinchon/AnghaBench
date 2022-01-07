; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }

@hdmi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @hdmi_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_dump_regs(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %3 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 0))
  %4 = call i64 (...) @hdmi_runtime_get()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 0))
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %10 = call i32 @hdmi_wp_dump(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 4), %struct.seq_file* %9)
  %11 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %12 = call i32 @hdmi_pll_dump(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 3), %struct.seq_file* %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %14 = call i32 @hdmi_phy_dump(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 2), %struct.seq_file* %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %16 = call i32 @hdmi4_core_dump(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 1), %struct.seq_file* %15)
  %17 = call i32 (...) @hdmi_runtime_put()
  %18 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 0))
  br label %19

19:                                               ; preds = %8, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @hdmi_runtime_get(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hdmi_wp_dump(i32*, %struct.seq_file*) #1

declare dso_local i32 @hdmi_pll_dump(i32*, %struct.seq_file*) #1

declare dso_local i32 @hdmi_phy_dump(i32*, %struct.seq_file*) #1

declare dso_local i32 @hdmi4_core_dump(i32*, %struct.seq_file*) #1

declare dso_local i32 @hdmi_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
