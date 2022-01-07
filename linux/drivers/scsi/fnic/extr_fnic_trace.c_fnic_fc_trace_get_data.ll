; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_trace.c_fnic_fc_trace_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_trace.c_fnic_fc_trace_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64* }
%struct.TYPE_5__ = type { i64 }
%struct.fc_trace_hdr = type { i32 }

@fnic_fc_trace_lock = common dso_local global i32 0, align 4
@fc_trace_entries = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"fnic: Buffer is empty\0A\00", align 1
@fnic_fc_trace_max_pages = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Time Stamp (UTC)\09\09Host No:   F Type:  len:     FCoE_FRAME:\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"fnic: Rd data is NULL\0A\00", align 1
@FC_TRC_SIZE_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@fc_trace_max_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_fc_trace_get_data(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fc_trace_hdr*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @fnic_fc_trace_lock, i64 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fc_trace_entries, i32 0, i32 0), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fc_trace_entries, i32 0, i32 1), align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @fnic_fc_trace_lock, i64 %19)
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %137

22:                                               ; preds = %2
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fc_trace_entries, i32 0, i32 1), align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fc_trace_entries, i32 0, i32 0), align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i32, i32* @fnic_fc_trace_max_pages, align 4
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = mul nsw i32 %34, %35
  %37 = mul nsw i32 %36, 3
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i64 (i64, i32, i8*, ...) @snprintf(i64 %33, i32 %39, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %27, %22
  br label %46

46:                                               ; preds = %132, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %133

50:                                               ; preds = %46
  %51 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fc_trace_entries, i32 0, i32 2), align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.fc_trace_hdr*
  store %struct.fc_trace_hdr* %56, %struct.fc_trace_hdr** %11, align 8
  %57 = load %struct.fc_trace_hdr*, %struct.fc_trace_hdr** %11, align 8
  %58 = icmp ne %struct.fc_trace_hdr* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* @fnic_fc_trace_lock, i64 %61)
  store i32 0, i32* %3, align 4
  br label %137

63:                                               ; preds = %50
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.fc_trace_hdr*, %struct.fc_trace_hdr** %11, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @copy_and_format_trace_data(%struct.fc_trace_hdr* %67, %struct.TYPE_5__* %68, i32* %9, i32 %69)
  br label %124

71:                                               ; preds = %63
  %72 = load %struct.fc_trace_hdr*, %struct.fc_trace_hdr** %11, align 8
  %73 = bitcast %struct.fc_trace_hdr* %72 to i8*
  store i8* %73, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %103, %71
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @FC_TRC_SIZE_BYTES, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i32, i32* @fnic_fc_trace_max_pages, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = mul nsw i32 %85, %86
  %88 = mul nsw i32 %87, 3
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = and i32 %96, 255
  %98 = call i64 (i64, i32, i8*, ...) @snprintf(i64 %84, i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %78
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %74

106:                                              ; preds = %74
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = load i32, i32* @fnic_fc_trace_max_pages, align 4
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = mul nsw i32 %113, %114
  %116 = mul nsw i32 %115, 3
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call i64 (i64, i32, i8*, ...) @snprintf(i64 %112, i32 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %106, %66
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @fc_trace_max_entries, align 4
  %129 = sub nsw i32 %128, 1
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %131, %124
  br label %46

133:                                              ; preds = %46
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* @fnic_fc_trace_lock, i64 %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %59, %18
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @snprintf(i64, i32, i8*, ...) #1

declare dso_local i32 @copy_and_format_trace_data(%struct.fc_trace_hdr*, %struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
