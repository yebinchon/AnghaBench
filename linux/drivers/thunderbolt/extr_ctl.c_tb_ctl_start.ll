; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"control channel starting...\0A\00", align 1
@TB_CTL_RX_PKG_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_ctl_start(%struct.tb_ctl* %0) #0 {
  %2 = alloca %struct.tb_ctl*, align 8
  %3 = alloca i32, align 4
  store %struct.tb_ctl* %0, %struct.tb_ctl** %2, align 8
  %4 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %5 = call i32 @tb_ctl_dbg(%struct.tb_ctl* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %7 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @tb_ring_start(i32 %8)
  %10 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %11 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @tb_ring_start(i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TB_CTL_RX_PKG_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %20 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tb_ctl_rx_submit(i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %32 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  ret void
}

declare dso_local i32 @tb_ctl_dbg(%struct.tb_ctl*, i8*) #1

declare dso_local i32 @tb_ring_start(i32) #1

declare dso_local i32 @tb_ctl_rx_submit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
