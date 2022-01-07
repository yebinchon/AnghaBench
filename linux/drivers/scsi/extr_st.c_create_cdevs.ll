; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_create_cdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_create_cdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ST_NBR_MODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tape\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*)* @create_cdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_cdevs(%struct.scsi_tape* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_tape*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ST_NBR_MODES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @create_one_cdev(%struct.scsi_tape* %11, i32 %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %10
  %19 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @create_one_cdev(%struct.scsi_tape* %19, i32 %20, i32 1)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %41, i64 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @sysfs_create_link(i32* %35, i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %30, %24, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @create_one_cdev(%struct.scsi_tape*, i32, i32) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
