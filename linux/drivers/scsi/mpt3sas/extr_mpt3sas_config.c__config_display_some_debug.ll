; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c__config_display_some_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c__config_display_some_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MPT_DEBUG_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"io_unit\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ioc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bios\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"raid_volume\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"manufacturing\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"physdisk\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"sas_io_unit\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"sas_expander\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"sas_device\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sas_phy\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"enclosure\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"raid_config\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"driver_mapping\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"sas_port\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"ext_manufacturing\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"pcie_io_unit\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"pcie_switch\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"pcie_device\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"pcie_link\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"%s: %s(%d), action(%d), form(0x%08x), smid(%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\09iocstatus(0x%04x), loginfo(0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i32, i8*, %struct.TYPE_8__*)* @_config_display_some_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_config_display_some_debug(%struct.MPT3SAS_ADAPTER* %0, i32 %1, i8* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %12 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MPT_DEBUG_CONFIG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %102

18:                                               ; preds = %4
  %19 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_7__* @mpt3sas_base_get_msg_frame(%struct.MPT3SAS_ADAPTER* %19, i32 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MPI2_CONFIG_PAGETYPE_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %53 [
    i32 131, label %28
    i32 132, label %29
    i32 134, label %30
    i32 128, label %31
    i32 130, label %32
    i32 129, label %33
    i32 133, label %34
  ]

28:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %53

29:                                               ; preds = %18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %53

30:                                               ; preds = %18
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %53

31:                                               ; preds = %18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %53

32:                                               ; preds = %18
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %53

33:                                               ; preds = %18
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %53

34:                                               ; preds = %18
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %52 [
    i32 137, label %38
    i32 138, label %39
    i32 139, label %40
    i32 136, label %41
    i32 145, label %42
    i32 147, label %43
    i32 140, label %44
    i32 148, label %45
    i32 135, label %46
    i32 146, label %47
    i32 143, label %48
    i32 141, label %49
    i32 144, label %50
    i32 142, label %51
  ]

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %52

39:                                               ; preds = %34
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %52

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %52

41:                                               ; preds = %34
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %52

42:                                               ; preds = %34
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %52

43:                                               ; preds = %34
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %52

44:                                               ; preds = %34
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %52

45:                                               ; preds = %34
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %52

46:                                               ; preds = %34
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %10, align 8
  br label %52

47:                                               ; preds = %34
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  br label %52

48:                                               ; preds = %34
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %10, align 8
  br label %52

49:                                               ; preds = %34
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8** %10, align 8
  br label %52

50:                                               ; preds = %34
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8** %10, align 8
  br label %52

51:                                               ; preds = %34
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %10, align 8
  br label %52

52:                                               ; preds = %34, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38
  br label %53

53:                                               ; preds = %18, %52, %33, %32, %31, %30, %29, %28
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  br label %102

57:                                               ; preds = %53
  %58 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @le32_to_cpu(i64 %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, i8*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0), i8* %59, i8* %60, i32 %64, i32 %67, i32 %71, i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %57
  br label %102

77:                                               ; preds = %57
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82, %77
  %88 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @le16_to_cpu(i64 %91)
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @le32_to_cpu(i64 %97)
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, i8*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8* %94, i8* %100)
  br label %102

102:                                              ; preds = %17, %56, %76, %87, %82
  ret void
}

declare dso_local %struct.TYPE_7__* @mpt3sas_base_get_msg_frame(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
