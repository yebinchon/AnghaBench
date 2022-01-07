; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_dump_sense_dbf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_dump_sense_dbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.irb = type { i32 }

@DBF_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: %016llx %08x : %016llx %016llx %016llx %016llx\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: %016llx %08x : %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"NO VALID SENSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.irb*, i8*)* @dasd_eckd_dump_sense_dbf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_dump_sense_dbf(%struct.dasd_device* %0, %struct.irb* %1, i8* %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.irb* %1, %struct.irb** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.irb*, %struct.irb** %5, align 8
  %10 = call i64 @dasd_get_sense(%struct.irb* %9)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load %struct.irb*, %struct.irb** %5, align 8
  %13 = getelementptr inbounds %struct.irb, %struct.irb* %12, i32 0, i32 0
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = load i32, i32* @DBF_EMERG, align 4
  %18 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, %struct.dasd_device*, i8*, i8*, i32, i32, i8*, ...) @DBF_DEV_EVENT(i32 %17, %struct.dasd_device* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %21, i32 %24, i8* %29, i32 %32, i32 %35, i32 %38)
  br label %50

40:                                               ; preds = %3
  %41 = load i32, i32* @DBF_EMERG, align 4
  %42 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, %struct.dasd_device*, i8*, i8*, i32, i32, i8*, ...) @DBF_DEV_EVENT(i32 %41, %struct.dasd_device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %45, i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %40, %16
  ret void
}

declare dso_local i64 @dasd_get_sense(%struct.irb*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
