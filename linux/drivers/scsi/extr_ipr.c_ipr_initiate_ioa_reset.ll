; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_initiate_ioa_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_initiate_ioa_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i64, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i64, i32*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IPR_INIT_HRRQ = common dso_local global i64 0, align 8
@GET_DUMP = common dso_local global i64 0, align 8
@WAIT_FOR_DUMP = common dso_local global i64 0, align 8
@READ_DUMP = common dso_local global i64 0, align 8
@ABORT_DUMP = common dso_local global i64 0, align 8
@IPR_NUM_RESET_RELOAD_RETRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"IOA taken offline - error recovery failed\0A\00", align 1
@IPR_SHUTDOWN_NONE = common dso_local global i32 0, align 4
@ipr_reset_shutdown_ioa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, i32)* @ipr_initiate_ioa_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %0, i32 %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %7 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %131

15:                                               ; preds = %2
  %16 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %17 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GET_DUMP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @WAIT_FOR_DUMP, align 8
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %41

30:                                               ; preds = %20
  %31 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %32 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @READ_DUMP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* @ABORT_DUMP, align 8
  %38 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %39 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40, %26
  br label %42

42:                                               ; preds = %41, %15
  %43 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %44 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* @IPR_NUM_RESET_RELOAD_RETRIES, align 8
  %48 = icmp sge i64 %45, %47
  br i1 %48, label %49, label %126

49:                                               ; preds = %42
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 10
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %56 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %87, %49
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %60 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %57
  %64 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %65 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %64, i32 0, i32 5
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %73 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  %79 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %80 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %79, i32 0, i32 5
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = call i32 @spin_unlock(i32* %85)
  br label %87

87:                                               ; preds = %63
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %57

90:                                               ; preds = %57
  %91 = call i32 (...) @wmb()
  %92 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %93 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %98 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %97, i32 0, i32 8
  store i32* null, i32** %98, align 8
  %99 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %100 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %99, i32 0, i32 7
  store i64 0, i64* %100, align 8
  %101 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %102 = call i32 @ipr_fail_all_ops(%struct.ipr_ioa_cfg* %101)
  %103 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %104 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %103, i32 0, i32 6
  %105 = call i32 @wake_up_all(i32* %104)
  %106 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %107 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %106, i32 0, i32 5
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %96
  %115 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %116 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %115, i32 0, i32 3
  store i32 1, i32* %116, align 8
  %117 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %118 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %117, i32 0, i32 4
  %119 = call i32 @schedule_work(i32* %118)
  br label %120

120:                                              ; preds = %114, %96
  br label %131

121:                                              ; preds = %90
  %122 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %123 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %122, i32 0, i32 2
  store i32 1, i32* %123, align 4
  %124 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %42
  %127 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %128 = load i32, i32* @ipr_reset_shutdown_ioa, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @_ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %120, %14
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ipr_fail_all_ops(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @_ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
