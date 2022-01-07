; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qlogicpti_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qlogicpti_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64, i64, i32 }
%struct.qlogicpti = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MBOX_SET_TARGET_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @qlogicpti_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlogicpti_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.qlogicpti*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.qlogicpti* @shost_priv(i32 %8)
  store %struct.qlogicpti* %9, %struct.qlogicpti** %3, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %19 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 16
  store i32 %26, i32* %24, align 4
  br label %42

27:                                               ; preds = %1
  %28 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %29 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %36 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %27, %17
  %43 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %49 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 32
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %47, %42
  %58 = load i32, i32* @MBOX_SET_TARGET_PARAMS, align 4
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 %58, i32* %59, align 16
  %60 = load i32, i32* %4, align 4
  %61 = shl i32 %60, 8
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %64 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 %71, i32* %72, align 8
  %73 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %74 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 16
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %57
  %84 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %85 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 8
  %93 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %94 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %92, %100
  %102 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 %101, i32* %102, align 4
  br label %105

103:                                              ; preds = %57
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %83
  %106 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %108 = call i32 @qlogicpti_mbox_command(%struct.qlogicpti* %106, i32* %107, i32 0)
  ret i32 0
}

declare dso_local %struct.qlogicpti* @shost_priv(i32) #1

declare dso_local i32 @qlogicpti_mbox_command(%struct.qlogicpti*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
