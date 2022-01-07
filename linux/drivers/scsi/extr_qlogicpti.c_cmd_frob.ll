; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_cmd_frob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_cmd_frob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Command_Entry = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.scsi_cmnd = type { i64*, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.qlogicpti = type { i64*, i8** }

@ENTRY_COMMAND = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@CFLAG_ORDERED_TAG = common dso_local global i32 0, align 4
@CFLAG_SIMPLE_TAG = common dso_local global i32 0, align 4
@WRITE_6 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@WRITE_12 = common dso_local global i64 0, align 8
@CFLAG_WRITE = common dso_local global i32 0, align 4
@CFLAG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Command_Entry*, %struct.scsi_cmnd*, %struct.qlogicpti*)* @cmd_frob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_frob(%struct.Command_Entry* %0, %struct.scsi_cmnd* %1, %struct.qlogicpti* %2) #0 {
  %4 = alloca %struct.Command_Entry*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.qlogicpti*, align 8
  store %struct.Command_Entry* %0, %struct.Command_Entry** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.qlogicpti* %2, %struct.qlogicpti** %6, align 8
  %7 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %8 = call i32 @memset(%struct.Command_Entry* %7, i32 0, i32 40)
  %9 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %10 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @ENTRY_COMMAND, align 4
  %13 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %14 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %22 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %29 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %34 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %36 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %35, i32 0, i32 3
  store i32 0, i32* %36, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %3
  %44 = load %struct.qlogicpti*, %struct.qlogicpti** %6, align 8
  %45 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %46, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %43
  %56 = load i8*, i8** @jiffies, align 8
  %57 = load %struct.qlogicpti*, %struct.qlogicpti** %6, align 8
  %58 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8*, i8** %59, i64 %64
  store i8* %56, i8** %65, align 8
  br label %66

66:                                               ; preds = %55, %43
  %67 = load i8*, i8** @jiffies, align 8
  %68 = load %struct.qlogicpti*, %struct.qlogicpti** %6, align 8
  %69 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %68, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8*, i8** %70, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @HZ, align 4
  %79 = mul nsw i32 5, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %77, i64 %80
  %82 = call i64 @time_after(i8* %67, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %66
  %85 = load i32, i32* @CFLAG_ORDERED_TAG, align 4
  %86 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %87 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load i8*, i8** @jiffies, align 8
  %89 = load %struct.qlogicpti*, %struct.qlogicpti** %6, align 8
  %90 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 3
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8*, i8** %91, i64 %96
  store i8* %88, i8** %97, align 8
  br label %102

98:                                               ; preds = %66
  %99 = load i32, i32* @CFLAG_SIMPLE_TAG, align 4
  %100 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %101 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %84
  br label %103

103:                                              ; preds = %102, %3
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @WRITE_6, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %127, label %111

111:                                              ; preds = %103
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %113 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @WRITE_10, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @WRITE_12, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119, %111, %103
  %128 = load i32, i32* @CFLAG_WRITE, align 4
  %129 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %130 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %139

133:                                              ; preds = %119
  %134 = load i32, i32* @CFLAG_READ, align 4
  %135 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %136 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %127
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 2
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @HZ, align 4
  %146 = sdiv i32 %144, %145
  %147 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %148 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.Command_Entry*, %struct.Command_Entry** %4, align 8
  %150 = getelementptr inbounds %struct.Command_Entry, %struct.Command_Entry* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %153 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @memcpy(i32 %151, i64* %154, i32 %157)
  ret void
}

declare dso_local i32 @memset(%struct.Command_Entry*, i32, i32) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
