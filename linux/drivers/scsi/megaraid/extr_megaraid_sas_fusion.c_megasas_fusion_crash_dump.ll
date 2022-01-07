; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_fusion_crash_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_fusion_crash_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, i64, i64, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.megasas_instance*)* }

@.str = private unnamed_addr constant [98 x i8] c"earlier crash dump is not yet copied by application, ignoring this crash dump and initiating OCR\0A\00", align 1
@MFI_STATE_CRASH_DUMP_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Number of host crash buffers allocated: %d\0A\00", align 1
@MEGASAS_WATCHDOG_WAIT_COUNT = common dso_local global i32 0, align 4
@MFI_STATE_DMADONE = common dso_local global i32 0, align 4
@MEGASAS_WAIT_FOR_NEXT_DMA_MSECS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Driver is done copying the buffer: %d\0A\00", align 1
@CRASH_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Crash Dump is available,number of copied buffers: %d\0A\00", align 1
@AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_fusion_crash_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_fusion_crash_dump(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %7 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %6, i32 0, i32 7
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %9, align 8
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = call i32 %10(%struct.megasas_instance* %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %14 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %1
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %24 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %23, i32 0, i32 6
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_info(i32* %26, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @MFI_STATE_CRASH_DUMP_DONE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @writel(i32 %31, i32* %35)
  %37 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %38 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @readl(i32* %40)
  br label %188

42:                                               ; preds = %17
  %43 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %44 = call i32 @megasas_alloc_host_crash_buffer(%struct.megasas_instance* %43)
  %45 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %46 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %45, i32 0, i32 6
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %50 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32*, i8*, ...) @dev_info(i32* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %42, %1
  br label %54

54:                                               ; preds = %124, %70, %53
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @MFI_STATE_CRASH_DUMP_DONE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MEGASAS_WATCHDOG_WAIT_COUNT, align 4
  %62 = icmp slt i32 %60, %61
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i1 [ false, %54 ], [ %62, %59 ]
  br i1 %64, label %65, label %145

65:                                               ; preds = %63
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @MFI_STATE_DMADONE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @MEGASAS_WAIT_FOR_NEXT_DMA_MSECS, align 4
  %74 = call i32 @msleep(i32 %73)
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %76 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %75, i32 0, i32 7
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %78, align 8
  %80 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %81 = call i32 %79(%struct.megasas_instance* %80)
  store i32 %81, i32* %3, align 4
  br label %54

82:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  %83 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %84 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %87 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp uge i64 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %82
  %91 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %92 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %91, i32 0, i32 6
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %96 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i32*, i8*, ...) @dev_info(i32* %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @MFI_STATE_CRASH_DUMP_DONE, align 4
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %145

102:                                              ; preds = %82
  %103 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %104 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %103, i32 0, i32 9
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %107 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %112 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CRASH_DMA_BUF_SIZE, align 4
  %115 = call i32 @memcpy(i32 %110, i32 %113, i32 %114)
  %116 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %117 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load i32, i32* @MFI_STATE_DMADONE, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %3, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %102
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %127 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %126, i32 0, i32 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = call i32 @writel(i32 %125, i32* %129)
  %131 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %132 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %131, i32 0, i32 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = call i32 @readl(i32* %134)
  %136 = load i32, i32* @MEGASAS_WAIT_FOR_NEXT_DMA_MSECS, align 4
  %137 = call i32 @msleep(i32 %136)
  %138 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %139 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %138, i32 0, i32 7
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %141, align 8
  %143 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %144 = call i32 %142(%struct.megasas_instance* %143)
  store i32 %144, i32* %3, align 4
  br label %54

145:                                              ; preds = %90, %63
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @MFI_STATE_CRASH_DUMP_DONE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %188

150:                                              ; preds = %145
  %151 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %152 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %151, i32 0, i32 6
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %156 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (i32*, i8*, ...) @dev_info(i32* %154, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %157)
  %159 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %160 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %163 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load i32, i32* @AVAILABLE, align 4
  %165 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %166 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  %167 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %168 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %167, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = load i32, i32* %3, align 4
  %170 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %171 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %170, i32 0, i32 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = call i32 @writel(i32 %169, i32* %173)
  %175 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %176 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %175, i32 0, i32 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = call i32 @readl(i32* %178)
  %180 = load i32, i32* %4, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %150
  %183 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %184 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @megasas_reset_fusion(i32 %185, i32 0)
  br label %187

187:                                              ; preds = %182, %150
  br label %188

188:                                              ; preds = %22, %187, %145
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @megasas_alloc_host_crash_buffer(%struct.megasas_instance*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @megasas_reset_fusion(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
