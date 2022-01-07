; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_issue_lip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_issue_lip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32 }

@MBXERR_ERROR = common dso_local global i32 0, align 4
@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@LINK_DISABLED = common dso_local global i32 0, align 4
@LPFC_BLOCK_MGMT_IO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MBX_DOWN_LINK = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBXERR_LINK_DOWN = common dso_local global i64 0, align 8
@MBXERR_SEC_NO_PERMISSION = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"2859 SLI authentication is required for INIT_LINK but has not done yet\0A\00", align 1
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @lpfc_issue_lip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_lip(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %4, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 1
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  store %struct.lpfc_hba* %14, %struct.lpfc_hba** %5, align 8
  %15 = load i32, i32* @MBXERR_ERROR, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LINK_DISABLED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LPFC_BLOCK_MGMT_IO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29, %22, %1
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %147

40:                                               ; preds = %29
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.TYPE_12__* @mempool_alloc(i32 %43, i32 %44)
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %6, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %147

51:                                               ; preds = %40
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = bitcast %struct.TYPE_12__* %52 to i8*
  %54 = call i32 @memset(i8* %53, i32 0, i32 16)
  %55 = load i32, i32* @MBX_DOWN_LINK, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @OWN_HOST, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 8
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %68 = mul nsw i32 %67, 2
  %69 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %65, %struct.TYPE_12__* %66, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @MBX_SUCCESS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %51
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MBXERR_LINK_DOWN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %127

88:                                               ; preds = %80, %73
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = bitcast %struct.TYPE_12__* %89 to i8*
  %91 = call i32 @memset(i8* %90, i32 0, i32 16)
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @lpfc_init_link(%struct.lpfc_hba* %92, %struct.TYPE_12__* %93, i32 %96, i32 %99)
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 2
  %107 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %101, %struct.TYPE_12__* %102, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @MBX_SUCCESS, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %88
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MBXERR_SEC_NO_PERMISSION, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %121 = load i32, i32* @KERN_ERR, align 4
  %122 = load i32, i32* @LOG_MBOX, align 4
  %123 = load i32, i32* @LOG_SLI, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %120, i32 %121, i32 %124, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %119, %111, %88
  br label %127

127:                                              ; preds = %126, %80, %51
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %129 = call i32 @lpfc_set_loopback_flag(%struct.lpfc_hba* %128)
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @MBX_TIMEOUT, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @mempool_free(%struct.TYPE_12__* %134, i32 %137)
  br label %139

139:                                              ; preds = %133, %127
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @MBXERR_ERROR, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %143, %48, %37
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_12__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lpfc_init_link(%struct.lpfc_hba*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_set_loopback_flag(%struct.lpfc_hba*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
