; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_read_fcf_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_read_fcf_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fcf_record = type { i32 }

@LPFC_LINK_UP = common dso_local global i64 0, align 8
@FCF_DISCOVERY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"2767 Mailbox command READ_FCF_RECORD failed to retrieve a FCF record.\0A\00", align 1
@lpfc_fcf_record_fcf_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_read_fcf_rec(%struct.lpfc_hba* %0, i32* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fcf_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LPFC_LINK_UP, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FCF_DISCOVERY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %58

27:                                               ; preds = %18
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call %struct.fcf_record* @lpfc_sli4_fcf_rec_mbox_parse(%struct.lpfc_hba* %28, i32* %29, i32* %9)
  store %struct.fcf_record* %30, %struct.fcf_record** %5, align 8
  %31 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %32 = icmp ne %struct.fcf_record* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = load i32, i32* @KERN_INFO, align 4
  %36 = load i32, i32* @LOG_FIP, align 4
  %37 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %58

38:                                               ; preds = %27
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %41 = call i32 @lpfc_match_fcf_conn_list(%struct.lpfc_hba* %39, %struct.fcf_record* %40, i32* %6, i32* %7, i32* %10)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @lpfc_sli4_log_fcf_record_info(%struct.lpfc_hba* %42, %struct.fcf_record* %43, i32 %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %58

50:                                               ; preds = %38
  %51 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %52 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %53 = call i32 @bf_get(i32 %51, %struct.fcf_record* %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %57 = call i32 @lpfc_sli4_fcf_pri_list_add(%struct.lpfc_hba* %54, i32 %55, %struct.fcf_record* %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %50, %49, %33, %26, %17
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %59, i32* %60)
  ret void
}

declare dso_local %struct.fcf_record* @lpfc_sli4_fcf_rec_mbox_parse(%struct.lpfc_hba*, i32*, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_match_fcf_conn_list(%struct.lpfc_hba*, %struct.fcf_record*, i32*, i32*, i32*) #1

declare dso_local i32 @lpfc_sli4_log_fcf_record_info(%struct.lpfc_hba*, %struct.fcf_record*, i32, i32) #1

declare dso_local i32 @bf_get(i32, %struct.fcf_record*) #1

declare dso_local i32 @lpfc_sli4_fcf_pri_list_add(%struct.lpfc_hba*, i32, %struct.fcf_record*) #1

declare dso_local i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
