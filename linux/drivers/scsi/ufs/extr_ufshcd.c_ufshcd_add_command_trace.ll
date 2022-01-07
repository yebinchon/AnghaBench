; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_add_command_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_add_command_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, %struct.ufshcd_lrb* }
%struct.ufshcd_lrb = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@READ_10 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@REG_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@REG_UTP_TRANSFER_REQ_DOOR_BELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, i32, i8*)* @ufshcd_add_command_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_add_command_trace(%struct.ufs_hba* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ufshcd_lrb*, align 8
  %12 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %14 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %13, i32 0, i32 1
  %15 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %15, i64 %17
  store %struct.ufshcd_lrb* %18, %struct.ufshcd_lrb** %11, align 8
  store i32 -1, i32* %12, align 4
  %19 = call i32 (...) @trace_ufshcd_command_enabled()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %3
  %22 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %11, align 8
  %23 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @ufshcd_add_cmd_upiu_trace(%struct.ufs_hba* %27, i32 %28, i8* %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %110

32:                                               ; preds = %3
  %33 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %11, align 8
  %34 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %91

37:                                               ; preds = %32
  %38 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @ufshcd_add_cmd_upiu_trace(%struct.ufs_hba* %38, i32 %39, i8* %40)
  %42 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %11, align 8
  %43 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @READ_10, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %37
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @WRITE_10, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %51, %37
  %56 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %11, align 8
  %57 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = icmp ne %struct.TYPE_9__* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %55
  %63 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %11, align 8
  %64 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %11, align 8
  %73 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %71, %62, %55
  %83 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %11, align 8
  %84 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @be32_to_cpu(i32 %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %82, %51
  br label %91

91:                                               ; preds = %90, %32
  %92 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %93 = load i32, i32* @REG_INTERRUPT_STATUS, align 4
  %94 = call i32 @ufshcd_readl(%struct.ufs_hba* %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %96 = load i32, i32* @REG_UTP_TRANSFER_REQ_DOOR_BELL, align 4
  %97 = call i32 @ufshcd_readl(%struct.ufs_hba* %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %99 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dev_name(i32 %100)
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @trace_ufshcd_command(i32 %101, i8* %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i64 %108)
  br label %110

110:                                              ; preds = %91, %31
  ret void
}

declare dso_local i32 @trace_ufshcd_command_enabled(...) #1

declare dso_local i32 @ufshcd_add_cmd_upiu_trace(%struct.ufs_hba*, i32, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ufshcd_readl(%struct.ufs_hba*, i32) #1

declare dso_local i32 @trace_ufshcd_command(i32, i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
