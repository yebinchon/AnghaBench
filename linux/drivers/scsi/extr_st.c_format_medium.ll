; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_format_medium.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_format_medium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.st_request = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@FORMAT_UNIT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [23 x i8] c"Sending FORMAT MEDIUM\0A\00", align 1
@DMA_NONE = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32)* @format_medium to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_medium(%struct.scsi_tape* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_tape*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.st_request*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %18 = call i32 @memset(i8* %16, i32 0, i32 %17)
  %19 = load i8, i8* @FORMAT_UNIT, align 1
  %20 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 %19, i8* %20, align 16
  %21 = load i32, i32* %4, align 4
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 %22, i8* %23, align 2
  %24 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = getelementptr inbounds i8, i8* %16, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, 1
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 1
  %34 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %28, %2
  %42 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %43 = call i32 @DEBC_printk(%struct.scsi_tape* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %45 = load i32, i32* @DMA_NONE, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MAX_RETRIES, align 4
  %48 = call %struct.st_request* @st_do_scsi(i32* null, %struct.scsi_tape* %44, i8* %16, i32 0, i32 %45, i32 %46, i32 %47, i32 1)
  store %struct.st_request* %48, %struct.st_request** %9, align 8
  %49 = load %struct.st_request*, %struct.st_request** %9, align 8
  %50 = icmp ne %struct.st_request* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %41
  %52 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %41
  %58 = load i32, i32* %5, align 4
  %59 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @DEBC_printk(%struct.scsi_tape*, i8*) #2

declare dso_local %struct.st_request* @st_do_scsi(i32*, %struct.scsi_tape*, i8*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
