; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_leave_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_leave_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_fsm = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@B_SE0_SRP = common dso_local global i32 0, align 4
@B_ASE0_BRST = common dso_local global i32 0, align 4
@A_WAIT_VRISE = common dso_local global i32 0, align 4
@A_WAIT_BCON = common dso_local global i32 0, align 4
@A_WAIT_ENUM = common dso_local global i32 0, align 4
@A_AIDL_BDIS = common dso_local global i32 0, align 4
@A_BIDL_ADIS = common dso_local global i32 0, align 4
@A_WAIT_VFALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otg_fsm*, i32)* @otg_leave_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otg_leave_state(%struct.otg_fsm* %0, i32 %1) #0 {
  %3 = alloca %struct.otg_fsm*, align 8
  %4 = alloca i32, align 4
  store %struct.otg_fsm* %0, %struct.otg_fsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %100 [
    i32 131, label %6
    i32 129, label %16
    i32 130, label %21
    i32 128, label %36
    i32 132, label %42
    i32 139, label %43
    i32 133, label %46
    i32 135, label %52
    i32 140, label %58
    i32 137, label %62
    i32 138, label %70
    i32 134, label %90
    i32 136, label %99
  ]

6:                                                ; preds = %2
  %7 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %8 = load i32, i32* @B_SE0_SRP, align 4
  %9 = call i32 @otg_del_timer(%struct.otg_fsm* %7, i32 %8)
  %10 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %11 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %10, i32 0, i32 12
  store i32 0, i32* %11, align 8
  %12 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %13 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %12, i32 0, i32 11
  store i32 0, i32* %13, align 4
  %14 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %15 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %14, i32 0, i32 7
  store i32 0, i32* %15, align 4
  br label %101

16:                                               ; preds = %2
  %17 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %18 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %17, i32 0, i32 10
  store i32 0, i32* %18, align 8
  %19 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %20 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %19, i32 0, i32 9
  store i32 0, i32* %20, align 4
  br label %101

21:                                               ; preds = %2
  %22 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %23 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %30 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %21
  br label %101

36:                                               ; preds = %2
  %37 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %38 = load i32, i32* @B_ASE0_BRST, align 4
  %39 = call i32 @otg_del_timer(%struct.otg_fsm* %37, i32 %38)
  %40 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %41 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %40, i32 0, i32 8
  store i32 0, i32* %41, align 8
  br label %101

42:                                               ; preds = %2
  br label %101

43:                                               ; preds = %2
  %44 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %45 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %44, i32 0, i32 7
  store i32 0, i32* %45, align 4
  br label %101

46:                                               ; preds = %2
  %47 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %48 = load i32, i32* @A_WAIT_VRISE, align 4
  %49 = call i32 @otg_del_timer(%struct.otg_fsm* %47, i32 %48)
  %50 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %51 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %50, i32 0, i32 6
  store i32 0, i32* %51, align 8
  br label %101

52:                                               ; preds = %2
  %53 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %54 = load i32, i32* @A_WAIT_BCON, align 4
  %55 = call i32 @otg_del_timer(%struct.otg_fsm* %53, i32 %54)
  %56 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %57 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %56, i32 0, i32 5
  store i32 0, i32* %57, align 4
  br label %101

58:                                               ; preds = %2
  %59 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %60 = load i32, i32* @A_WAIT_ENUM, align 4
  %61 = call i32 @otg_del_timer(%struct.otg_fsm* %59, i32 %60)
  br label %101

62:                                               ; preds = %2
  %63 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %64 = load i32, i32* @A_AIDL_BDIS, align 4
  %65 = call i32 @otg_del_timer(%struct.otg_fsm* %63, i32 %64)
  %66 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %67 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %66, i32 0, i32 4
  store i32 0, i32* %67, align 8
  %68 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %69 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  br label %101

70:                                               ; preds = %2
  %71 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %72 = load i32, i32* @A_BIDL_ADIS, align 4
  %73 = call i32 @otg_del_timer(%struct.otg_fsm* %71, i32 %72)
  %74 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %75 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %77 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = icmp ne %struct.TYPE_3__* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %84 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %70
  br label %101

90:                                               ; preds = %2
  %91 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %92 = load i32, i32* @A_WAIT_VFALL, align 4
  %93 = call i32 @otg_del_timer(%struct.otg_fsm* %91, i32 %92)
  %94 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %95 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %97 = load i32, i32* @A_WAIT_VRISE, align 4
  %98 = call i32 @otg_del_timer(%struct.otg_fsm* %96, i32 %97)
  br label %101

99:                                               ; preds = %2
  br label %101

100:                                              ; preds = %2
  br label %101

101:                                              ; preds = %100, %99, %90, %89, %62, %58, %52, %46, %43, %42, %36, %35, %16, %6
  ret void
}

declare dso_local i32 @otg_del_timer(%struct.otg_fsm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
