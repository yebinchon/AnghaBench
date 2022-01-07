; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_plug_events_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_plug_events_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, i32)* @tb_plug_events_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_plug_events_active(%struct.tb_switch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %9 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %16 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 255, i32* %17, align 4
  %18 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %19 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %20 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %19, i32 0, i32 1
  %21 = bitcast %struct.TYPE_2__* %20 to i32*
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* @TB_CFG_SWITCH, align 4
  %24 = call i32 @tb_sw_write(%struct.tb_switch* %18, i32* %22, i32 %23, i32 4, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %67

29:                                               ; preds = %14
  %30 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %31 = load i32, i32* @TB_CFG_SWITCH, align 4
  %32 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %33 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @tb_sw_read(%struct.tb_switch* %30, i32* %6, i32 %31, i32 %35, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %67

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, -125
  store i32 %46, i32* %6, align 4
  %47 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %48 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %52 [
    i32 129, label %51
    i32 130, label %51
    i32 128, label %51
  ]

51:                                               ; preds = %44, %44, %44
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %51
  br label %59

56:                                               ; preds = %41
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, 124
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %55
  %60 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %61 = load i32, i32* @TB_CFG_SWITCH, align 4
  %62 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %63 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @tb_sw_write(%struct.tb_switch* %60, i32* %6, i32 %61, i32 %65, i32 1)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %39, %27, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @tb_sw_write(%struct.tb_switch*, i32*, i32, i32, i32) #1

declare dso_local i32 @tb_sw_read(%struct.tb_switch*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
