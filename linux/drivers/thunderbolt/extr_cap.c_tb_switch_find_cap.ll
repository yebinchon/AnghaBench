; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_cap.c_tb_switch_find_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_cap.c_tb_switch_find_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tb_cap_any = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@CAP_OFFSET_MAX = common dso_local global i32 0, align 4
@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, i32)* @tb_switch_find_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_switch_find_cap(%struct.tb_switch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tb_cap_any, align 4
  %8 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %39, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CAP_OFFSET_MAX, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %43

22:                                               ; preds = %20
  %23 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %24 = load i32, i32* @TB_CFG_SWITCH, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @tb_sw_read(%struct.tb_switch* %23, %struct.tb_cap_any* %7, i32 %24, i32 %25, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.tb_cap_any, %struct.tb_cap_any* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.tb_cap_any, %struct.tb_cap_any* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  br label %13

43:                                               ; preds = %20
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %37, %29
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @tb_sw_read(%struct.tb_switch*, %struct.tb_cap_any*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
