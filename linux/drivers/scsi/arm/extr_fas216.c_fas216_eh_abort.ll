; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_eh_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_eh_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"abort command\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"abort %p success\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"abort %p failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fas216_eh_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %3, align 8
  %13 = load i32, i32* @FAILED, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i32 @fas216_checkmagic(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @KERN_WARNING, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %23 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %21, %struct.scsi_cmnd* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @print_debug_list()
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i32 @fas216_dumpstate(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %29 = call i32 @fas216_find_command(%struct.TYPE_11__* %27, %struct.scsi_cmnd* %28)
  switch i32 %29, label %37 [
    i32 128, label %30
    i32 129, label %36
    i32 130, label %38
  ]

30:                                               ; preds = %1
  %31 = load i32, i32* @KERN_WARNING, align 4
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %34 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %31, %struct.scsi_cmnd* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %33)
  %35 = load i32, i32* @SUCCESS, align 4
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %1, %36
  br label %38

38:                                               ; preds = %1, %37
  %39 = load i32, i32* @KERN_WARNING, align 4
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %42 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %39, %struct.scsi_cmnd* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %41)
  br label %43

43:                                               ; preds = %38, %30
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @fas216_checkmagic(%struct.TYPE_11__*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, ...) #1

declare dso_local i32 @print_debug_list(...) #1

declare dso_local i32 @fas216_dumpstate(%struct.TYPE_11__*) #1

declare dso_local i32 @fas216_find_command(%struct.TYPE_11__*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
