; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.nvram }
%struct.nvram = type { i32, %struct.TYPE_14__*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Using defaults for NVRAM: \0A\00", align 1
@MAX_BUSES = common dso_local global i32 0, align 4
@MAX_TARGETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla1280_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla1280_set_defaults(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca %struct.nvram*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %6, i32 0, i32 0
  store %struct.nvram* %7, %struct.nvram** %3, align 8
  %8 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.nvram*, %struct.nvram** %3, align 8
  %10 = call i32 @memset(%struct.nvram* %9, i32 0, i32 48)
  %11 = load %struct.nvram*, %struct.nvram** %3, align 8
  %12 = getelementptr inbounds %struct.nvram, %struct.nvram* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.nvram*, %struct.nvram** %3, align 8
  %16 = getelementptr inbounds %struct.nvram, %struct.nvram* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.nvram*, %struct.nvram** %3, align 8
  %20 = getelementptr inbounds %struct.nvram, %struct.nvram* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 3, i32* %21, align 8
  %22 = load %struct.nvram*, %struct.nvram** %3, align 8
  %23 = getelementptr inbounds %struct.nvram, %struct.nvram* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32 3, i32* %24, align 4
  %25 = load %struct.nvram*, %struct.nvram** %3, align 8
  %26 = getelementptr inbounds %struct.nvram, %struct.nvram* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load %struct.nvram*, %struct.nvram** %3, align 8
  %29 = getelementptr inbounds %struct.nvram, %struct.nvram* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %32 = call i64 @IS_ISP1040(%struct.scsi_qla_host* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.nvram*, %struct.nvram** %3, align 8
  %36 = getelementptr inbounds %struct.nvram, %struct.nvram* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, 3
  store i32 %39, i32* %37, align 4
  br label %46

40:                                               ; preds = %1
  %41 = load %struct.nvram*, %struct.nvram** %3, align 8
  %42 = getelementptr inbounds %struct.nvram, %struct.nvram* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 4
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %48 = call i64 @IS_ISP1x160(%struct.scsi_qla_host* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.nvram*, %struct.nvram** %3, align 8
  %52 = getelementptr inbounds %struct.nvram, %struct.nvram* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %46
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %153, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @MAX_BUSES, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %156

58:                                               ; preds = %54
  %59 = load %struct.nvram*, %struct.nvram** %3, align 8
  %60 = getelementptr inbounds %struct.nvram, %struct.nvram* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 7, i32* %66, align 4
  %67 = load %struct.nvram*, %struct.nvram** %3, align 8
  %68 = getelementptr inbounds %struct.nvram, %struct.nvram* %67, i32 0, i32 1
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.nvram*, %struct.nvram** %3, align 8
  %76 = getelementptr inbounds %struct.nvram, %struct.nvram* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.nvram*, %struct.nvram** %3, align 8
  %84 = getelementptr inbounds %struct.nvram, %struct.nvram* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 250, i32* %89, align 4
  %90 = load %struct.nvram*, %struct.nvram** %3, align 8
  %91 = getelementptr inbounds %struct.nvram, %struct.nvram* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i32 32, i32* %96, align 4
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %98 = call i64 @IS_ISP1040(%struct.scsi_qla_host* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %58
  %101 = load %struct.nvram*, %struct.nvram** %3, align 8
  %102 = getelementptr inbounds %struct.nvram, %struct.nvram* %101, i32 0, i32 1
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  store i32 3, i32* %107, align 4
  %108 = load %struct.nvram*, %struct.nvram** %3, align 8
  %109 = getelementptr inbounds %struct.nvram, %struct.nvram* %108, i32 0, i32 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  store i32 6, i32* %115, align 4
  %116 = load %struct.nvram*, %struct.nvram** %3, align 8
  %117 = getelementptr inbounds %struct.nvram, %struct.nvram* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  store i32 1, i32* %122, align 4
  br label %139

123:                                              ; preds = %58
  %124 = load %struct.nvram*, %struct.nvram** %3, align 8
  %125 = getelementptr inbounds %struct.nvram, %struct.nvram* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  store i32 5, i32* %130, align 4
  %131 = load %struct.nvram*, %struct.nvram** %3, align 8
  %132 = getelementptr inbounds %struct.nvram, %struct.nvram* %131, i32 0, i32 1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  store i32 8, i32* %138, align 4
  br label %139

139:                                              ; preds = %123, %100
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %149, %139
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @MAX_TARGETS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @qla1280_set_target_defaults(%struct.scsi_qla_host* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %140

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %54

156:                                              ; preds = %54
  ret void
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @memset(%struct.nvram*, i32, i32) #1

declare dso_local i64 @IS_ISP1040(%struct.scsi_qla_host*) #1

declare dso_local i64 @IS_ISP1x160(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla1280_set_target_defaults(%struct.scsi_qla_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
