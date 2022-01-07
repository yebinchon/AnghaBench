; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_cross_eof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_cross_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.st_request = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@SPACE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [28 x i8] c"Stepping over filemark %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"backward\00", align 1
@DMA_NONE = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Stepping over filemark %s failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32)* @cross_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cross_eof(%struct.scsi_tape* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_tape*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_request*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8, i8* @SPACE, align 1
  %15 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %14, i8* %15, align 16
  %16 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 1, i8* %16, align 1
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 0, i8* %21, align 2
  %22 = getelementptr inbounds i8, i8* %13, i64 4
  store i8 1, i8* %22, align 4
  br label %27

23:                                               ; preds = %2
  %24 = getelementptr inbounds i8, i8* %13, i64 4
  store i8 -1, i8* %24, align 4
  %25 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 -1, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 -1, i8* %26, align 2
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds i8, i8* %13, i64 5
  store i8 0, i8* %28, align 1
  %29 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @DEBC_printk(%struct.scsi_tape* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %36 = load i32, i32* @DMA_NONE, align 4
  %37 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAX_RETRIES, align 4
  %45 = call %struct.st_request* @st_do_scsi(i32* null, %struct.scsi_tape* %35, i8* %13, i32 0, i32 %36, i32 %43, i32 %44, i32 1)
  store %struct.st_request* %45, %struct.st_request** %6, align 8
  %46 = load %struct.st_request*, %struct.st_request** %6, align 8
  %47 = icmp ne %struct.st_request* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %27
  %49 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %78

54:                                               ; preds = %27
  %55 = load %struct.st_request*, %struct.st_request** %6, align 8
  %56 = call i32 @st_release_request(%struct.st_request* %55)
  store %struct.st_request* null, %struct.st_request** %6, align 8
  %57 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %58 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i32, i32* @KERN_ERR, align 4
  %66 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %71 = call i32 @st_printk(i32 %65, %struct.scsi_tape* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %64, %54
  %73 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %72, %48
  %79 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEBC_printk(%struct.scsi_tape*, i8*, i8*) #2

declare dso_local %struct.st_request* @st_do_scsi(i32*, %struct.scsi_tape*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @st_release_request(%struct.st_request*) #2

declare dso_local i32 @st_printk(i32, %struct.scsi_tape*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
