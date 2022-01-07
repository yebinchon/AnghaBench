; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i8**, i8** }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"0475 Not configured for supporting MSI-X cfg_use_msi: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"0476 HBA not supporting SLI-3 or later SLI Revision: 0x%x\0A\00", align 1
@HA_R0ATT = common dso_local global i32 0, align 4
@HA_R1ATT = common dso_local global i32 0, align 4
@HA_R2ATT = common dso_local global i32 0, align 4
@HA_ERATT = common dso_local global i32 0, align 4
@HA_LATT = common dso_local global i32 0, align 4
@HA_MBATT = common dso_local global i32 0, align 4
@HA_R0_POS = common dso_local global i64 0, align 8
@HA_R1_POS = common dso_local global i64 0, align 8
@MBX_CONFIG_MSI = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_config_msi(%struct.lpfc_hba* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca [2 x i8*], align 16
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load i32, i32* @LOG_INIT, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %124

25:                                               ; preds = %2
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load i32, i32* @LOG_INIT, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %124

40:                                               ; preds = %25
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = call i32 @memset(%struct.TYPE_12__* %41, i32 0, i32 32)
  %43 = load i32, i32* @HA_R0ATT, align 4
  %44 = load i32, i32* @HA_R1ATT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @HA_R2ATT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @HA_ERATT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @HA_LATT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @HA_MBATT, align 4
  %53 = or i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %55, i8** %56, align 16
  %57 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* null, i8** %57, align 8
  %58 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %59 = load i8*, i8** %58, align 16
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  store i8* %59, i8** %65, align 8
  %66 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* %67, i8** %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @HA_R0_POS, align 8
  %80 = xor i64 %79, 3
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 1, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @HA_R1_POS, align 8
  %88 = xor i64 %87, 3
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 1, i32* %89, align 4
  %90 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %91 = load i8*, i8** %90, align 16
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  store i8* %91, i8** %97, align 8
  %98 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* %99, i8** %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  store i8* null, i8** %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  store i8* null, i8** %117, align 8
  %118 = load i32, i32* @MBX_CONFIG_MSI, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @OWN_HOST, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %40, %30, %15
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
