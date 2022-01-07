; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_display_intel_branding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_display_intel_branding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"scsi host %d: %s\0A\00", align 1
@MEGARAID_INTEL_RS3DC080_BRANDING = common dso_local global i32 0, align 4
@MEGARAID_INTEL_RS3DC040_BRANDING = common dso_local global i32 0, align 4
@MEGARAID_INTEL_RS3SC008_BRANDING = common dso_local global i32 0, align 4
@MEGARAID_INTEL_RS3MC044_BRANDING = common dso_local global i32 0, align 4
@MEGARAID_INTEL_RS3WC080_BRANDING = common dso_local global i32 0, align 4
@MEGARAID_INTEL_RS3WC040_BRANDING = common dso_local global i32 0, align 4
@MEGARAID_INTEL_RMS3BC160_BRANDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_display_intel_branding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_display_intel_branding(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %3 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %4 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %126

11:                                               ; preds = %1
  %12 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %13 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %125 [
    i32 128, label %17
    i32 129, label %73
    i32 131, label %105
    i32 130, label %105
  ]

17:                                               ; preds = %11
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %71 [
    i32 136, label %23
    i32 137, label %35
    i32 134, label %47
    i32 135, label %59
  ]

23:                                               ; preds = %17
  %24 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %25 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %29 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MEGARAID_INTEL_RS3DC080_BRANDING, align 4
  %34 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %72

35:                                               ; preds = %17
  %36 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %37 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %41 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MEGARAID_INTEL_RS3DC040_BRANDING, align 4
  %46 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %72

47:                                               ; preds = %17
  %48 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %49 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %53 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MEGARAID_INTEL_RS3SC008_BRANDING, align 4
  %58 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  br label %72

59:                                               ; preds = %17
  %60 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %61 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %65 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MEGARAID_INTEL_RS3MC044_BRANDING, align 4
  %70 = call i32 @dev_info(i32* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  br label %72

71:                                               ; preds = %17
  br label %72

72:                                               ; preds = %71, %59, %47, %35, %23
  br label %126

73:                                               ; preds = %11
  %74 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %75 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %103 [
    i32 132, label %79
    i32 133, label %91
  ]

79:                                               ; preds = %73
  %80 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %81 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %85 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MEGARAID_INTEL_RS3WC080_BRANDING, align 4
  %90 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89)
  br label %104

91:                                               ; preds = %73
  %92 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %93 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %97 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MEGARAID_INTEL_RS3WC040_BRANDING, align 4
  %102 = call i32 @dev_info(i32* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101)
  br label %104

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %103, %91, %79
  br label %126

105:                                              ; preds = %11, %11
  %106 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %107 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %123 [
    i32 138, label %111
  ]

111:                                              ; preds = %105
  %112 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %113 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %117 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MEGARAID_INTEL_RMS3BC160_BRANDING, align 4
  %122 = call i32 @dev_info(i32* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121)
  br label %124

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %111
  br label %126

125:                                              ; preds = %11
  br label %126

126:                                              ; preds = %10, %125, %124, %104, %72
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
