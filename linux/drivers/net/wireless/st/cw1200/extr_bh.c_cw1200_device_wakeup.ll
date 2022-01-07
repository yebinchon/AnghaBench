; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_device_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_device_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"[BH] Device wakeup.\0A\00", align 1
@ST90TDS_TSET_GEN_R_W_REG_ID = common dso_local global i32 0, align 4
@ST90TDS_CONTROL_REG_ID = common dso_local global i32 0, align 4
@ST90TDS_CONT_WUP_BIT = common dso_local global i32 0, align 4
@ST90TDS_CONT_RDY_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"[BH] Device awake.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*)* @cw1200_device_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_device_wakeup(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %8 = load i32, i32* @ST90TDS_TSET_GEN_R_W_REG_ID, align 4
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cw1200_dpll_from_clk(i32 %11)
  %13 = call i32 @cw1200_reg_write_32(%struct.cw1200_common* %7, i32 %8, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %21 = load i32, i32* @ST90TDS_CONTROL_REG_ID, align 4
  %22 = load i32, i32* @ST90TDS_CONT_WUP_BIT, align 4
  %23 = call i32 @cw1200_reg_write_16(%struct.cw1200_common* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %45

29:                                               ; preds = %19
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %31 = call i32 @cw1200_bh_read_ctrl_reg(%struct.cw1200_common* %30, i32* %4)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ST90TDS_CONT_RDY_BIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %45

44:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %42, %35, %27, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @cw1200_reg_write_32(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @cw1200_dpll_from_clk(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cw1200_reg_write_16(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @cw1200_bh_read_ctrl_reg(%struct.cw1200_common*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
