; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_dump_wdg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_dump_wdg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_block = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%pUL:\0A\00", align 1
@ACPI_WMI_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"\09notify_id: 0x%02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\09object_id: %2pE\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\09instance_count: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\09flags: %#x\00", align 1
@ACPI_WMI_EXPENSIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c" ACPI_WMI_EXPENSIVE\00", align 1
@ACPI_WMI_METHOD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c" ACPI_WMI_METHOD\00", align 1
@ACPI_WMI_STRING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c" ACPI_WMI_STRING\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" ACPI_WMI_EVENT\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.guid_block*)* @wmi_dump_wdg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmi_dump_wdg(%struct.guid_block* %0) #0 {
  %2 = alloca %struct.guid_block*, align 8
  store %struct.guid_block* %0, %struct.guid_block** %2, align 8
  %3 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %4 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %8 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ACPI_WMI_EVENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %15 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %20 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %25 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %29 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %33 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %23
  %37 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %38 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ACPI_WMI_EXPENSIVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %36
  %46 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %47 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ACPI_WMI_METHOD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %45
  %55 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %56 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ACPI_WMI_STRING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %54
  %64 = load %struct.guid_block*, %struct.guid_block** %2, align 8
  %65 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ACPI_WMI_EVENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %63
  br label %73

73:                                               ; preds = %72, %23
  %74 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
