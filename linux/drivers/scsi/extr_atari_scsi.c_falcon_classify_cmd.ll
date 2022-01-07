; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_falcon_classify_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atari_scsi.c_falcon_classify_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@READ_DEFECT_DATA = common dso_local global i8 0, align 1
@READ_LONG = common dso_local global i8 0, align 1
@READ_BUFFER = common dso_local global i8 0, align 1
@CMD_SURELY_BYTE_MODE = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i8 0, align 1
@READ_10 = common dso_local global i8 0, align 1
@READ_REVERSE = common dso_local global i8 0, align 1
@RECOVER_BUFFERED_DATA = common dso_local global i8 0, align 1
@TYPE_TAPE = common dso_local global i64 0, align 8
@CMD_SURELY_BLOCK_MODE = common dso_local global i32 0, align 4
@CMD_MODE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @falcon_classify_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_classify_cmd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i8, align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %4, align 1
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @READ_DEFECT_DATA, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @READ_LONG, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @READ_BUFFER, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %15, %1
  %28 = load i32, i32* @CMD_SURELY_BYTE_MODE, align 4
  store i32 %28, i32* %2, align 4
  br label %80

29:                                               ; preds = %21
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @READ_6, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %57, label %35

35:                                               ; preds = %29
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @READ_10, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %35
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 168
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* %4, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @READ_REVERSE, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i8, i8* %4, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @RECOVER_BUFFERED_DATA, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51, %45, %41, %35, %29
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TYPE_TAPE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @CMD_SURELY_BYTE_MODE, align 4
  store i32 %75, i32* %2, align 4
  br label %80

76:                                               ; preds = %65, %57
  %77 = load i32, i32* @CMD_SURELY_BLOCK_MODE, align 4
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %51
  %79 = load i32, i32* @CMD_MODE_UNKNOWN, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %76, %74, %27
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
