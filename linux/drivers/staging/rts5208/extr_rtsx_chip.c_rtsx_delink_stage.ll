; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_delink_stage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_delink_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Try to do force delink\0A\00", align 1
@CHANGE_LINK_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @rtsx_delink_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_delink_stage(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %18 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 9
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %28 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21, %16, %11, %1
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %33 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %120

34:                                               ; preds = %26
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %36 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %41 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %46 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ true, %39 ], [ %48, %44 ]
  br label %51

51:                                               ; preds = %49, %34
  %52 = phi i1 [ false, %34 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %55 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %59 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %64 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %5, align 4
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %68 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  br label %120

73:                                               ; preds = %51
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %75 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @rtsx_delink_stage1(%struct.rtsx_chip* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %73
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %86 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %84
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %92 = call i32 @rtsx_dev(%struct.rtsx_chip* %91)
  %93 = call i32 @dev_dbg(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %98 = call i32 @rtsx_exit_L1(%struct.rtsx_chip* %97)
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %101 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %106 = call i64 @CHECK_PID(%struct.rtsx_chip* %105, i32 21000)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %110 = call i32 @rtsx_set_phy_reg_bit(%struct.rtsx_chip* %109, i32 28, i32 2)
  br label %111

111:                                              ; preds = %108, %104, %99
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %113 = load i32, i32* @CHANGE_LINK_STATE, align 4
  %114 = call i32 @rtsx_write_register(%struct.rtsx_chip* %112, i32 %113, i32 10, i32 10)
  br label %115

115:                                              ; preds = %111, %84
  %116 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %117 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %115, %72, %31
  ret void
}

declare dso_local i32 @rtsx_delink_stage1(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_L1(%struct.rtsx_chip*) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_set_phy_reg_bit(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
