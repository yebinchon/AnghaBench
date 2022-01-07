; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_split_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_split_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_cmd = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.scsi_sge* }
%struct.scsi_sge = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@QEDI_PAGE_SIZE = common dso_local global i32 0, align 4
@QEDI_BD_SPLIT_SZ = common dso_local global i32 0, align 4
@QEDI_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"split sge %d: addr=%llx, len=%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_cmd*, i32, i32, i32)* @qedi_split_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_split_bd(%struct.qedi_cmd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_sge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qedi_cmd* %0, %struct.qedi_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.qedi_cmd*, %struct.qedi_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.scsi_sge*, %struct.scsi_sge** %14, align 8
  store %struct.scsi_sge* %15, %struct.scsi_sge** %9, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %46, %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %96

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %22 = srem i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %28 = srem i32 %26, %27
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %10, align 4
  br label %41

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @QEDI_BD_SPLIT_SZ, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @QEDI_BD_SPLIT_SZ, align 4
  %38 = srem i32 %36, %37
  br label %39

39:                                               ; preds = %35, %34
  %40 = phi i32 [ 0, %34 ], [ %38, %35 ]
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %24
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @QEDI_BD_SPLIT_SZ, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.scsi_sge*, %struct.scsi_sge** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %48, i64 %52
  %54 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %47, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 32
  %58 = load %struct.scsi_sge*, %struct.scsi_sge** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %58, i64 %62
  %64 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %57, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.scsi_sge*, %struct.scsi_sge** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %68, i64 %72
  %74 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %73, i32 0, i32 0
  store i64 %67, i64* %74, align 8
  %75 = load %struct.qedi_cmd*, %struct.qedi_cmd** %5, align 8
  %76 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* @QEDI_LOG_IO, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @QEDI_INFO(i32* %80, i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %16

96:                                               ; preds = %16
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
