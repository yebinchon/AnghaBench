; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_test_unit_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_test_unit_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64 }
%struct.scsi_sense_hdr = type { i64 }

@TEST_UNIT_READY = common dso_local global i8 0, align 1
@DMA_NONE = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_test_unit_ready(%struct.scsi_device* %0, i32 %1, i32 %2, %struct.scsi_sense_hdr* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_sense_hdr*, align 8
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.scsi_sense_hdr* %3, %struct.scsi_sense_hdr** %8, align 8
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %12 = load i8, i8* @TEST_UNIT_READY, align 1
  store i8 %12, i8* %11, align 1
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %57, %4
  %19 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %21 = load i32, i32* @DMA_NONE, align 4
  %22 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @scsi_execute_req(%struct.scsi_device* %19, i8* %20, i32 %21, i32* null, i32 0, %struct.scsi_sense_hdr* %22, i32 %23, i32 1, i32* null)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %18
  %30 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %31 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %35 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UNIT_ATTENTION, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %33, %29, %18
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %45 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %49 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UNIT_ATTENTION, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %53, %47, %43
  %58 = phi i1 [ false, %47 ], [ false, %43 ], [ %56, %53 ]
  br i1 %58, label %18, label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i32*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
