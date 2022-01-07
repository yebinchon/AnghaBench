; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_dump_sense_dbf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_dump_sense_dbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.irb = type { i32 }

@DBF_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: %s %02x%02x%02x %016llx %016llx %016llx %016llx\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"SORRY - NO VALID SENSE AVAILABLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.irb*, i8*)* @dasd_fba_dump_sense_dbf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_fba_dump_sense_dbf(%struct.dasd_device* %0, %struct.irb* %1, i8* %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.irb* %1, %struct.irb** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.irb*, %struct.irb** %5, align 8
  %9 = call i64 @dasd_get_sense(%struct.irb* %8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load i32, i32* @DBF_EMERG, align 4
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.irb*, %struct.irb** %5, align 8
  %18 = getelementptr inbounds %struct.irb, %struct.irb* %17, i32 0, i32 0
  %19 = call i64 @scsw_is_tm(i32* %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %23 = load %struct.irb*, %struct.irb** %5, align 8
  %24 = getelementptr inbounds %struct.irb, %struct.irb* %23, i32 0, i32 0
  %25 = call i32 @scsw_cc(i32* %24)
  %26 = load %struct.irb*, %struct.irb** %5, align 8
  %27 = getelementptr inbounds %struct.irb, %struct.irb* %26, i32 0, i32 0
  %28 = call i32 @scsw_cstat(i32* %27)
  %29 = load %struct.irb*, %struct.irb** %5, align 8
  %30 = getelementptr inbounds %struct.irb, %struct.irb* %29, i32 0, i32 0
  %31 = call i32 @scsw_dstat(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %14, %struct.dasd_device* %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43)
  br label %49

45:                                               ; preds = %3
  %46 = load i32, i32* @DBF_EMERG, align 4
  %47 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %48 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %46, %struct.dasd_device* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %13
  ret void
}

declare dso_local i64 @dasd_get_sense(%struct.irb*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*, ...) #1

declare dso_local i64 @scsw_is_tm(i32*) #1

declare dso_local i32 @scsw_cc(i32*) #1

declare dso_local i32 @scsw_cstat(i32*) #1

declare dso_local i32 @scsw_dstat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
