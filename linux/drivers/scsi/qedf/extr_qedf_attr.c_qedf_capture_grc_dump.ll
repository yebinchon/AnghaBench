; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_attr.c_qedf_capture_grc_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_attr.c_qedf_capture_grc_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.qedf_ctx = type { %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@QEDF_GRCDUMP_CAPTURE = common dso_local global i32 0, align 4
@QEDF_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"GRC Dump already captured.\0A\00", align 1
@qed_ops = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"GRC Dump captured.\0A\00", align 1
@QEDF_UEVENT_CODE_GRCDUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_capture_grc_dump(%struct.qedf_ctx* %0) #0 {
  %2 = alloca %struct.qedf_ctx*, align 8
  %3 = alloca %struct.qedf_ctx*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %2, align 8
  %4 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %5 = call i64 @qedf_is_vport(%struct.qedf_ctx* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %9 = call %struct.qedf_ctx* @qedf_get_base_qedf(%struct.qedf_ctx* %8)
  store %struct.qedf_ctx* %9, %struct.qedf_ctx** %3, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  store %struct.qedf_ctx* %11, %struct.qedf_ctx** %3, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = load i32, i32* @QEDF_GRCDUMP_CAPTURE, align 4
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* @QEDF_LOG_INFO, align 4
  %22 = call i32 @QEDF_INFO(i32* %20, i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %49

23:                                               ; preds = %12
  %24 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qed_ops, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %30, i32 0, i32 4
  %32 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %32, i32 0, i32 3
  %34 = call i32 @qedf_get_grc_dump(i32 %26, i32 %29, i32* %31, i32* %33)
  %35 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %35, i32 0, i32 2
  %37 = call i32 @QEDF_ERR(i32* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @QEDF_GRCDUMP_CAPTURE, align 4
  %39 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %39, i32 0, i32 1
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @QEDF_UEVENT_CODE_GRCDUMP, align 4
  %48 = call i32 @qedf_uevent_emit(i32 %46, i32 %47, i32* null)
  br label %49

49:                                               ; preds = %23, %18
  ret void
}

declare dso_local i64 @qedf_is_vport(%struct.qedf_ctx*) #1

declare dso_local %struct.qedf_ctx* @qedf_get_base_qedf(%struct.qedf_ctx*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i32 @qedf_get_grc_dump(i32, i32, i32*, i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qedf_uevent_emit(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
