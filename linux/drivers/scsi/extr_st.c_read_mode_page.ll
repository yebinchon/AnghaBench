; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_read_mode_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_read_mode_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.st_request = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@MODE_SENSE = common dso_local global i8 0, align 1
@MODE_SENSE_OMIT_BDESCS = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32, i32)* @read_mode_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mode_page(%struct.scsi_tape* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_tape*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.st_request*, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %17 = call i32 @memset(i8* %15, i32 0, i32 %16)
  %18 = load i8, i8* @MODE_SENSE, align 1
  %19 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %18, i8* %19, align 16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i8, i8* @MODE_SENSE_OMIT_BDESCS, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %23, i8* %24, align 1
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %6, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 %27, i8* %28, align 2
  %29 = getelementptr inbounds i8, i8* %15, i64 4
  store i8 -1, i8* %29, align 4
  %30 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %31 = getelementptr inbounds i8, i8* %15, i64 4
  %32 = load i8, i8* %31, align 4
  %33 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %34 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.st_request* @st_do_scsi(i32* null, %struct.scsi_tape* %30, i8* %15, i8 zeroext %32, i32 %33, i32 %40, i32 0, i32 1)
  store %struct.st_request* %41, %struct.st_request** %10, align 8
  %42 = load %struct.st_request*, %struct.st_request** %10, align 8
  %43 = icmp eq %struct.st_request* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %25
  %45 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %58

50:                                               ; preds = %25
  %51 = load %struct.st_request*, %struct.st_request** %10, align 8
  %52 = call i32 @st_release_request(%struct.st_request* %51)
  %53 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %54 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %58

58:                                               ; preds = %50, %44
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.st_request* @st_do_scsi(i32*, %struct.scsi_tape*, i8*, i8 zeroext, i32, i32, i32, i32) #2

declare dso_local i32 @st_release_request(%struct.st_request*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
