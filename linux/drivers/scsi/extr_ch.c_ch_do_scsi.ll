; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_do_scsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_do_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.scsi_sense_hdr = type { i32 }

@INITIALIZE_ELEMENT_STATUS = common dso_local global i8 0, align 1
@timeout_init = common dso_local global i32 0, align 4
@timeout_move = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i8*, i32, i32)* @ch_do_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_do_scsi(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @INITIALIZE_ELEMENT_STATUS, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @timeout_init, align 4
  br label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @timeout_move, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %69, %29
  store i32 0, i32* %13, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* @MAX_RETRIES, align 4
  %43 = call i32 @scsi_execute_req(i32 %34, i8* %35, i32 %36, i8* %37, i32 %38, %struct.scsi_sense_hdr* %17, i32 %41, i32 %42, i32* null)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i64 @driver_byte(i32 %44)
  %46 = load i64, i64* @DRIVER_SENSE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %31
  %49 = load i64, i64* @debug, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @scsi_print_sense_hdr(i32 %54, i32 %57, %struct.scsi_sense_hdr* %17)
  br label %59

59:                                               ; preds = %51, %48
  %60 = call i32 @ch_find_errno(%struct.scsi_sense_hdr* %17)
  store i32 %60, i32* %13, align 4
  %61 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %17, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %71 [
    i32 128, label %63
  ]

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = icmp slt i32 %66, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %31

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %59, %70
  br label %72

72:                                               ; preds = %71, %31
  %73 = load i32, i32* %13, align 4
  ret i32 %73
}

declare dso_local i32 @scsi_execute_req(i32, i8*, i32, i8*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i32 @scsi_print_sense_hdr(i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @ch_find_errno(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
