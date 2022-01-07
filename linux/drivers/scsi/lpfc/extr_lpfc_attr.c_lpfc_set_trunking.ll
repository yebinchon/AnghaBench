; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_set_trunking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_set_trunking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"0070 Set trunk mode with val %ld \00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_FCOE = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FCOE_FC_SET_TRUNK_MODE = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@lpfc_mbx_set_trunk_mode = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"0071 Set trunk mode failed with status: %d\00", align 1
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i8*)* @lpfc_set_trunking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_set_trunking(%struct.lpfc_hba* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store i64 0, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 0, i64* %7)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %100

26:                                               ; preds = %14
  br label %37

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i64 0, i64* %7, align 8
  br label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %100

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i64, i64* %7, align 8
  switch i64 %38, label %42 [
    i64 0, label %39
    i64 2, label %40
    i64 4, label %41
  ]

39:                                               ; preds = %37
  store i64 0, i64* %7, align 8
  br label %45

40:                                               ; preds = %37
  store i64 1, i64* %7, align 8
  br label %45

41:                                               ; preds = %37
  store i64 2, i64* %7, align 8
  br label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %100

45:                                               ; preds = %41, %40, %39
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* @LOG_MBOX, align 4
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.TYPE_12__* @mempool_alloc(i32 %54, i32 %55)
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %6, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %100

62:                                               ; preds = %45
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_FCOE, align 4
  %66 = load i32, i32* @LPFC_MBOX_OPCODE_FCOE_FC_SET_TRUNK_MODE, align 4
  %67 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %68 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %63, %struct.TYPE_12__* %64, i32 %65, i32 %66, i32 12, i32 %67)
  %69 = load i32, i32* @lpfc_mbx_set_trunk_mode, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @bf_set(i32 %69, i32* %74, i64 %75)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = load i32, i32* @MBX_POLL, align 4
  %80 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %77, %struct.TYPE_12__* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %62
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %85 = load i32, i32* @KERN_ERR, align 4
  %86 = load i32, i32* @LOG_MBOX, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %62
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @MBX_TIMEOUT, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mempool_free(%struct.TYPE_12__* %94, i32 %97)
  br label %99

99:                                               ; preds = %93, %89
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %59, %42, %33, %24
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @bf_set(i32, i32*, i64) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
