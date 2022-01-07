; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_schedule_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_schedule_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"NIC Core reset is already active. Skip scheduling it again.\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown work-code=0x%x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_schedule_work(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %73 [
    i32 131, label %10
    i32 129, label %23
    i32 130, label %47
    i32 128, label %60
  ]

10:                                               ; preds = %2
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 5
  %21 = call i32 @queue_work(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %15, %10
  br label %78

23:                                               ; preds = %2
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %23
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 3
  %40 = call i32 @queue_work(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %34, %29
  br label %46

42:                                               ; preds = %23
  %43 = load i32, i32* @ql_dbg_p3p, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = call i32 @ql_dbg(i32 %43, %struct.TYPE_7__* %44, i32 45150, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %41
  br label %78

47:                                               ; preds = %2
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 2
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %52, %47
  br label %78

60:                                               ; preds = %2
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 0
  %71 = call i32 @queue_work(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %65, %60
  br label %78

73:                                               ; preds = %2
  %74 = load i32, i32* @ql_log_warn, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @ql_log(i32 %74, %struct.TYPE_7__* %75, i32 45151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %72, %59, %46, %22
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
