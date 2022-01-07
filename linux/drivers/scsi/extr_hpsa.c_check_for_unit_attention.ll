; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_check_for_unit_attention.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_check_for_unit_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.CommandList = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@UNIT_ATTENTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s: a state change detected, command retried\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: LUN failure detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: report LUN data changed\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: a power on or device reset detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%s: unit attention cleared by another initiator\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: unknown unit attention detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*)* @check_for_unit_attention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_unit_attention(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.CommandList*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.CommandList* %1, %struct.CommandList** %5, align 8
  %10 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %11 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 4, i32* %9, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %20 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %17
  %25 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %26 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @decode_sense_data(i32 %29, i32 %30, i64* %6, i64* %7, i64* %8)
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @UNIT_ATTENTION, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 255
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %24
  store i32 0, i32* %3, align 4
  br label %96

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  switch i64 %40, label %86 [
    i64 129, label %41
    i64 132, label %50
    i64 130, label %59
    i64 131, label %68
    i64 128, label %77
  ]

41:                                               ; preds = %39
  %42 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %43 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %47 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %95

50:                                               ; preds = %39
  %51 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %52 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %56 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_warn(i32* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %95

59:                                               ; preds = %39
  %60 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %61 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %65 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %95

68:                                               ; preds = %39
  %69 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %70 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %74 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_warn(i32* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %95

77:                                               ; preds = %39
  %78 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %79 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %83 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_warn(i32* %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  br label %95

86:                                               ; preds = %39
  %87 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %88 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %92 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_warn(i32* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %86, %77, %68, %59, %50, %41
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %38
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @decode_sense_data(i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
