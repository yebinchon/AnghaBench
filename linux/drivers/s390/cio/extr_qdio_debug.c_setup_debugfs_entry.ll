; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_debug.c_setup_debugfs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_debug.c_setup_debugfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@QDIO_DEBUGFS_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@qstat_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @setup_debugfs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_debugfs_entry(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %5 = load i32, i32* @QDIO_DEBUGFS_NAME_LEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i32, i32* @QDIO_DEBUGFS_NAME_LEN, align 4
  %10 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %11 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %16 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %17 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @snprintf(i8* %8, i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18)
  %20 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %21 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %26 = call i32* @debugfs_create_file(i8* %8, i32 292, i32 %24, %struct.qdio_q* %25, i32* @qstat_fops)
  %27 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %28 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %30 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @IS_ERR(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %36 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %1
  %38 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32* @debugfs_create_file(i8*, i32, i32, %struct.qdio_q*, i32*) #2

declare dso_local i64 @IS_ERR(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
