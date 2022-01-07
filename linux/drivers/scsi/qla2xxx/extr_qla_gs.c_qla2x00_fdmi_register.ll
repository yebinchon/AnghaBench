; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA_ALREADY_REGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_fdmi_register(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %11 = call i64 @IS_QLA2100(%struct.qla_hw_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %15 = call i64 @IS_QLA2200(%struct.qla_hw_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %19 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13, %1
  %22 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %22, i32* %2, align 4
  br label %91

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @qla2x00_mgmt_svr_login(%struct.TYPE_9__* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %91

30:                                               ; preds = %23
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i32 @qla2x00_fdmiv2_rhba(%struct.TYPE_9__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @QLA_ALREADY_REGISTERED, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %60

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i32 @qla2x00_fdmi_dhba(%struct.TYPE_9__* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %60

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = call i32 @qla2x00_fdmiv2_rhba(%struct.TYPE_9__* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %60

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = call i32 @qla2x00_fdmiv2_rpa(%struct.TYPE_9__* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  br label %89

60:                                               ; preds = %58, %51, %45, %39
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = call i32 @qla2x00_fdmi_rhba(%struct.TYPE_9__* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @QLA_ALREADY_REGISTERED, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %91

71:                                               ; preds = %65
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = call i32 @qla2x00_fdmi_dhba(%struct.TYPE_9__* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %91

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = call i32 @qla2x00_fdmi_rhba(%struct.TYPE_9__* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %91

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %60
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = call i32 @qla2x00_fdmi_rpa(%struct.TYPE_9__* %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %59
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %83, %76, %69, %28, %21
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_mgmt_svr_login(%struct.TYPE_9__*) #1

declare dso_local i32 @qla2x00_fdmiv2_rhba(%struct.TYPE_9__*) #1

declare dso_local i32 @qla2x00_fdmi_dhba(%struct.TYPE_9__*) #1

declare dso_local i32 @qla2x00_fdmiv2_rpa(%struct.TYPE_9__*) #1

declare dso_local i32 @qla2x00_fdmi_rhba(%struct.TYPE_9__*) #1

declare dso_local i32 @qla2x00_fdmi_rpa(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
