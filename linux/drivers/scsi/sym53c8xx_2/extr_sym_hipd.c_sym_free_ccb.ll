; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_free_ccb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_free_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32, %struct.sym_ccb*, i32, i32, %struct.sym_tcb* }
%struct.sym_tcb = type { %struct.sym_ccb* }
%struct.sym_ccb = type { i64, i64, i64, i64, i32, i32, i32, i32*, i32 }
%struct.sym_lcb = type { i64*, i64, i64, i64, i32, i32, %struct.TYPE_2__, i8**, i32* }
%struct.TYPE_2__ = type { i8*, i8* }

@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ccb @%p freeing tag %d.\0A\00", align 1
@NO_TAG = common dso_local global i64 0, align 8
@SYM_CONF_MAX_TASK = common dso_local global i64 0, align 8
@resel_bad_lun = common dso_local global i32 0, align 4
@HS_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_free_ccb(%struct.sym_hcb* %0, %struct.sym_ccb* %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_ccb*, align 8
  %5 = alloca %struct.sym_tcb*, align 8
  %6 = alloca %struct.sym_lcb*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %4, align 8
  %7 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %8 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %7, i32 0, i32 5
  %9 = load %struct.sym_tcb*, %struct.sym_tcb** %8, align 8
  %10 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %11 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %9, i64 %12
  store %struct.sym_tcb* %13, %struct.sym_tcb** %5, align 8
  %14 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %15 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %16 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %14, i32 %17)
  store %struct.sym_lcb* %18, %struct.sym_lcb** %6, align 8
  %19 = load i32, i32* @DEBUG_FLAGS, align 4
  %20 = load i32, i32* @DEBUG_TAGS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %25 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %28 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %29 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @sym_print_addr(i32* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.sym_ccb* %27, i64 %30)
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %34 = icmp ne %struct.sym_lcb* %33, null
  br i1 %34, label %35, label %108

35:                                               ; preds = %32
  %36 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %37 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NO_TAG, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %35
  %42 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %43 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %46 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %49 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  store i64 %44, i64* %51, align 8
  %52 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %53 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* @SYM_CONF_MAX_TASK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %60 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %41
  %62 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %63 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_scr(i32 %64)
  %66 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %67 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %66, i32 0, i32 7
  %68 = load i8**, i8*** %67, align 8
  %69 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %70 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  store i8* %65, i8** %72, align 8
  %73 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %74 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  br label %89

77:                                               ; preds = %35
  %78 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %79 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cpu_to_scr(i32 %80)
  %82 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %83 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %86 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %77, %61
  %90 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %91 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %96 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %101 = load i32, i32* @resel_bad_lun, align 4
  %102 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %100, i32 %101)
  %103 = call i8* @cpu_to_scr(i32 %102)
  %104 = load %struct.sym_lcb*, %struct.sym_lcb** %6, align 8
  %105 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  br label %107

107:                                              ; preds = %99, %94, %89
  br label %108

108:                                              ; preds = %107, %32
  %109 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %110 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %111 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %110, i32 0, i32 0
  %112 = load %struct.sym_ccb*, %struct.sym_ccb** %111, align 8
  %113 = icmp eq %struct.sym_ccb* %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %116 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %115, i32 0, i32 0
  store %struct.sym_ccb* null, %struct.sym_ccb** %116, align 8
  br label %117

117:                                              ; preds = %114, %108
  %118 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %119 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %118, i32 0, i32 7
  store i32* null, i32** %119, align 8
  %120 = load i32, i32* @HS_IDLE, align 4
  %121 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %122 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  %123 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %124 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %123, i32 0, i32 5
  %125 = call i32 @sym_remque(i32* %124)
  %126 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %127 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %126, i32 0, i32 5
  %128 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %129 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %128, i32 0, i32 1
  %130 = call i32 @sym_insque_head(i32* %127, i32* %129)
  ret void
}

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i32) #1

declare dso_local i32 @sym_print_addr(i32*, i8*, %struct.sym_ccb*, i64) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_remque(i32*) #1

declare dso_local i32 @sym_insque_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
