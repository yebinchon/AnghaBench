; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_remove_cdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_remove_cdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { %struct.st_modedef*, %struct.TYPE_4__* }
%struct.st_modedef = type { i64*, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"tape\00", align 1
@ST_NBR_MODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_tape*)* @remove_cdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_cdevs(%struct.scsi_tape* %0) #0 {
  %2 = alloca %struct.scsi_tape*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_modedef*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %2, align 8
  %6 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @sysfs_remove_link(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %67, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ST_NBR_MODES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %17, i32 0, i32 0
  %19 = load %struct.st_modedef*, %struct.st_modedef** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %19, i64 %21
  store %struct.st_modedef* %22, %struct.st_modedef** %5, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %63, %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  %27 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %28 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %37 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @cdev_del(i64 %42)
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %46 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load %struct.st_modedef*, %struct.st_modedef** %5, align 8
  %55 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @device_unregister(i64 %60)
  br label %62

62:                                               ; preds = %53, %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %23

66:                                               ; preds = %23
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %12

70:                                               ; preds = %12
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @cdev_del(i64) #1

declare dso_local i32 @device_unregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
