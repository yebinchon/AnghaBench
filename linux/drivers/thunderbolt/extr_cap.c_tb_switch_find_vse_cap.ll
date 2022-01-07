; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_cap.c_tb_switch_find_vse_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_cap.c_tb_switch_find_vse_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }
%struct.tb_cap_any = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@TB_SWITCH_CAP_VSE = common dso_local global i32 0, align 4
@VSE_CAP_OFFSET_MAX = common dso_local global i32 0, align 4
@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@CAP_OFFSET_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_switch_find_vse_cap(%struct.tb_switch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_cap_any, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %10 = load i32, i32* @TB_SWITCH_CAP_VSE, align 4
  %11 = call i32 @tb_switch_find_cap(%struct.tb_switch* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %71, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @VSE_CAP_OFFSET_MAX, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %72

26:                                               ; preds = %24
  %27 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %28 = load i32, i32* @TB_CFG_SWITCH, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @tb_sw_read(%struct.tb_switch* %27, %struct.tb_cap_any* %6, i32 %28, i32 %29, i32 2)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %75

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CAP_OFFSET_MAX, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tb_cap_any, %struct.tb_cap_any* %6, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %75

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.tb_cap_any, %struct.tb_cap_any* %6, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %71

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.tb_cap_any, %struct.tb_cap_any* %6, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %75

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.tb_cap_any, %struct.tb_cap_any* %6, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.tb_cap_any, %struct.tb_cap_any* %6, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %47
  br label %17

72:                                               ; preds = %24
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %64, %57, %45, %33, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @tb_switch_find_cap(%struct.tb_switch*, i32) #1

declare dso_local i32 @tb_sw_read(%struct.tb_switch*, %struct.tb_cap_any*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
