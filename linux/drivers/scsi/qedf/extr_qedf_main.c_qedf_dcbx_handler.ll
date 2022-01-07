; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_dcbx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_dcbx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dcbx_get = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qedf_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"DCBx event valid=%d enabled=%d fcoe prio=%d.\0A\00", align 1
@QEDF_DCBX_DONE = common dso_local global i64 0, align 8
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DCBX already set on link up.\0A\00", align 1
@qedf_default_prio = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"FIP/FCoE prio %d out of range, setting to %d.\0A\00", align 1
@QEDF_DEFAULT_PRIO = common dso_local global i32 0, align 4
@QEDF_LINK_UP = common dso_local global i64 0, align 8
@qedf_dcbx_no_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_dcbx_get*, i32)* @qedf_dcbx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_dcbx_handler(i8* %0, %struct.qed_dcbx_get* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_dcbx_get*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedf_ctx*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.qed_dcbx_get* %1, %struct.qed_dcbx_get** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qedf_ctx*
  store %struct.qedf_ctx* %10, %struct.qedf_ctx** %7, align 8
  %11 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %11, i32 0, i32 6
  %13 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %5, align 8
  %14 = getelementptr inbounds %struct.qed_dcbx_get, %struct.qed_dcbx_get* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %5, align 8
  %18 = getelementptr inbounds %struct.qed_dcbx_get, %struct.qed_dcbx_get* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %5, align 8
  %22 = getelementptr inbounds %struct.qed_dcbx_get, %struct.qed_dcbx_get* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @QEDF_ERR(i32* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %25)
  %27 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %5, align 8
  %28 = getelementptr inbounds %struct.qed_dcbx_get, %struct.qed_dcbx_get* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %116

32:                                               ; preds = %3
  %33 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %5, align 8
  %34 = getelementptr inbounds %struct.qed_dcbx_get, %struct.qed_dcbx_get* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %116

38:                                               ; preds = %32
  %39 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %39, i32 0, i32 7
  %41 = call i64 @atomic_read(i32* %40)
  %42 = load i64, i64* @QEDF_DCBX_DONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %45, i32 0, i32 6
  %47 = load i32, i32* @QEDF_LOG_DISC, align 4
  %48 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %46, i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %116

49:                                               ; preds = %38
  %50 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %50, i32 0, i32 7
  %52 = load i64, i64* @QEDF_DCBX_DONE, align 8
  %53 = call i32 @atomic_set(i32* %51, i64 %52)
  %54 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %5, align 8
  %55 = getelementptr inbounds %struct.qed_dcbx_get, %struct.qed_dcbx_get* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @qedf_default_prio, align 4
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load i32, i32* @qedf_default_prio, align 4
  %63 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %83

65:                                               ; preds = %49
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 7
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %70 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %69, i32 0, i32 6
  %71 = load i32, i32* @QEDF_LOG_DISC, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @QEDF_DEFAULT_PRIO, align 4
  %74 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %70, i32 %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* @QEDF_DEFAULT_PRIO, align 4
  %76 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %77 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %82

78:                                               ; preds = %65
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %68
  br label %83

83:                                               ; preds = %82, %61
  %84 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %84, i32 0, i32 5
  %86 = call i64 @atomic_read(i32* %85)
  %87 = load i64, i64* @QEDF_LINK_UP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %83
  %90 = load i32, i32* @qedf_dcbx_no_wait, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %115, label %92

92:                                               ; preds = %89
  %93 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %94 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %93, i32 0, i32 1
  %95 = call i64 @atomic_read(i32* %94)
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %99 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %102 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %101, i32 0, i32 4
  %103 = call i32 @queue_delayed_work(i32 %100, i32* %102, i32 0)
  br label %111

104:                                              ; preds = %92
  %105 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %106 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %109 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %108, i32 0, i32 2
  %110 = call i32 @queue_delayed_work(i32 %107, i32* %109, i32 0)
  br label %111

111:                                              ; preds = %104, %97
  %112 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %113 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %112, i32 0, i32 1
  %114 = call i32 @atomic_set(i32* %113, i64 0)
  br label %115

115:                                              ; preds = %111, %89, %83
  br label %116

116:                                              ; preds = %44, %115, %32, %3
  ret void
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
