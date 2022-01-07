; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_post_newsess_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_post_newsess_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla_work_evt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32 }

@QLA_EVT_NEW_SESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_post_newsess_work(%struct.scsi_qla_host* %0, i32* %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_qla_host*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qla_work_evt*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %16 = load i32, i32* @QLA_EVT_NEW_SESS, align 4
  %17 = call %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %15, i32 %16)
  store %struct.qla_work_evt* %17, %struct.qla_work_evt** %14, align 8
  %18 = load %struct.qla_work_evt*, %struct.qla_work_evt** %14, align 8
  %19 = icmp ne %struct.qla_work_evt* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %21, i32* %7, align 4
  br label %62

22:                                               ; preds = %6
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qla_work_evt*, %struct.qla_work_evt** %14, align 8
  %26 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32 %24, i32* %28, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.qla_work_evt*, %struct.qla_work_evt** %14, align 8
  %31 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i8* %29, i8** %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.qla_work_evt*, %struct.qla_work_evt** %14, align 8
  %36 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %34, i32* %38, align 8
  %39 = load %struct.qla_work_evt*, %struct.qla_work_evt** %14, align 8
  %40 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* @WWN_SIZE, align 4
  %46 = call i32 @memcpy(i32 %43, i32* %44, i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %22
  %50 = load %struct.qla_work_evt*, %struct.qla_work_evt** %14, align 8
  %51 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @WWN_SIZE, align 4
  %57 = call i32 @memcpy(i32 %54, i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %22
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %60 = load %struct.qla_work_evt*, %struct.qla_work_evt** %14, align 8
  %61 = call i32 @qla2x00_post_work(%struct.scsi_qla_host* %59, %struct.qla_work_evt* %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %20
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qla2x00_post_work(%struct.scsi_qla_host*, %struct.qla_work_evt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
