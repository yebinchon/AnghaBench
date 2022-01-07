; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_cfg_post_extnts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_cfg_post_extnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_NEMBED = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_ALLOC_RSRC_EXTENT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"2982 Allocated DMA memory size (x%x) is less than the requested DMA memory size (x%x)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32, i32, i32*, i32*)* @lpfc_sli4_cfg_post_extnts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_cfg_post_extnts(%struct.lpfc_hba* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %13, align 4
  store i32 -4, i32* %14, align 4
  %21 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %29, 4
  %31 = add i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @LPFC_SLI4_MBX_NEMBED, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %5
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_COMMON, align 4
  %39 = load i32, i32* @LPFC_MBOX_OPCODE_ALLOC_RSRC_EXTENT, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %36, i32* %37, i32 %38, i32 %39, i32 %40, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load i32, i32* @LOG_INIT, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %98

56:                                               ; preds = %35
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lpfc_sli4_mbox_rsrc_extent(%struct.lpfc_hba* %57, i32* %58, i32 %59, i32 %60, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %98

70:                                               ; preds = %56
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* @MBX_POLL, align 4
  %80 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %77, i32* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  br label %89

81:                                               ; preds = %70
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %82, i32* %83)
  store i32 %84, i32* %16, align 4
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %85, i32* %86, i32 %87)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %81, %76
  %90 = load i32, i32* %12, align 4
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %67, %47
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lpfc_sli4_mbox_rsrc_extent(%struct.lpfc_hba*, i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, i32*, i32) #1

declare dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba*, i32*) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
