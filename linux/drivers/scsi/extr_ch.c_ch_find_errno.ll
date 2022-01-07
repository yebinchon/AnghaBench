; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_find_errno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_find_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64 }
%struct.scsi_sense_hdr = type { i64, i64, i64 }

@ch_err = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_sense_hdr*)* @ch_find_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_find_errno(%struct.scsi_sense_hdr* %0) #0 {
  %2 = alloca %struct.scsi_sense_hdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.scsi_sense_hdr* %0, %struct.scsi_sense_hdr** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %2, align 8
  %6 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %68

8:                                                ; preds = %1
  %9 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %64, %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ch_err, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ch_err, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %22
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ch_err, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %33
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ch_err, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %2, align 8
  %52 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ch_err, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %44, %33, %22
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %14

67:                                               ; preds = %55, %14
  br label %68

68:                                               ; preds = %67, %8, %1
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
