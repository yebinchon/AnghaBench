; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_issue_devman_upiu_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_issue_devman_upiu_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_4__*, %struct.ufshcd_lrb* }
%struct.TYPE_6__ = type { i32, i32, %struct.completion* }
%struct.completion = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ufshcd_lrb = type { i32, i32, %struct.utp_upiu_req*, %struct.utp_upiu_req*, i32, i64, i32*, i64, i32* }
%struct.utp_upiu_req = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@UTP_CMD_TYPE_DEV_MANAGE = common dso_local global i32 0, align 4
@UTP_CMD_TYPE_UFS_STORAGE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@UPIU_QUERY_OPCODE_WRITE_DESC = common dso_local global i32 0, align 4
@QUERY_REQ_TIMEOUT = common dso_local global i32 0, align 4
@UPIU_QUERY_OPCODE_READ_DESC = common dso_local global i32 0, align 4
@MASK_QUERY_DATA_SEG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rsp size is bigger than buffer\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, %struct.utp_upiu_req*, %struct.utp_upiu_req*, %struct.utp_upiu_req*, i32*, i32, i32)* @ufshcd_issue_devman_upiu_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_issue_devman_upiu_cmd(%struct.ufs_hba* %0, %struct.utp_upiu_req* %1, %struct.utp_upiu_req* %2, %struct.utp_upiu_req* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ufs_hba*, align 8
  %9 = alloca %struct.utp_upiu_req*, align 8
  %10 = alloca %struct.utp_upiu_req*, align 8
  %11 = alloca %struct.utp_upiu_req*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ufshcd_lrb*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.completion, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.utp_upiu_req*, align 8
  %22 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %8, align 8
  store %struct.utp_upiu_req* %1, %struct.utp_upiu_req** %9, align 8
  store %struct.utp_upiu_req* %2, %struct.utp_upiu_req** %10, align 8
  store %struct.utp_upiu_req* %3, %struct.utp_upiu_req** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 1
  %25 = call i32 @down_read(i32* %24)
  %26 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %27 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %31 = call i32 @ufshcd_get_dev_cmd_tag(%struct.ufs_hba* %30, i32* %17)
  %32 = call i32 @wait_event(i32 %29, i32 %31)
  %33 = call i32 @init_completion(%struct.completion* %18)
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %35 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %34, i32 0, i32 5
  %36 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %35, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %36, i64 %38
  store %struct.ufshcd_lrb* %39, %struct.ufshcd_lrb** %15, align 8
  %40 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %41 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @WARN_ON(i32* %42)
  %44 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %45 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %44, i32 0, i32 8
  store i32* null, i32** %45, align 8
  %46 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %47 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %49 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %48, i32 0, i32 6
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %52 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %54 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %56 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %59 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %62 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %68 [
    i32 129, label %64
    i32 128, label %64
  ]

64:                                               ; preds = %7, %7
  %65 = load i32, i32* @UTP_CMD_TYPE_DEV_MANAGE, align 4
  %66 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %67 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  br label %72

68:                                               ; preds = %7
  %69 = load i32, i32* @UTP_CMD_TYPE_UFS_STORAGE, align 4
  %70 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %71 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @cpu_to_be32(i32 %73)
  %75 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %9, align 8
  %76 = getelementptr inbounds %struct.utp_upiu_req, %struct.utp_upiu_req* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 4
  %80 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %81 = load i32, i32* @DMA_NONE, align 4
  %82 = call i32 @ufshcd_prepare_req_desc_hdr(%struct.ufshcd_lrb* %80, i32* %20, i32 %81)
  %83 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %84 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %83, i32 0, i32 3
  %85 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %84, align 8
  %86 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %9, align 8
  %87 = call i32 @memcpy(%struct.utp_upiu_req* %85, %struct.utp_upiu_req* %86, i32 8)
  %88 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %11, align 8
  %89 = icmp ne %struct.utp_upiu_req* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %72
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @UPIU_QUERY_OPCODE_WRITE_DESC, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %96 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %95, i32 0, i32 3
  %97 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %96, align 8
  %98 = getelementptr inbounds %struct.utp_upiu_req, %struct.utp_upiu_req* %97, i64 1
  %99 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %11, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(%struct.utp_upiu_req* %98, %struct.utp_upiu_req* %99, i32 %101)
  %103 = load i32*, i32** %12, align 8
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %94, %90, %72
  %105 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %106 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %105, i32 0, i32 2
  %107 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %106, align 8
  %108 = call i32 @memset(%struct.utp_upiu_req* %107, i32 0, i32 4)
  %109 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %110 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store %struct.completion* %18, %struct.completion** %111, align 8
  %112 = call i32 (...) @wmb()
  %113 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %114 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %113, i32 0, i32 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @spin_lock_irqsave(i32 %117, i64 %118)
  %120 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @ufshcd_send_command(%struct.ufs_hba* %120, i32 %121)
  %123 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %124 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %123, i32 0, i32 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %19, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32 %127, i64 %128)
  %130 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %131 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %132 = load i32, i32* @QUERY_REQ_TIMEOUT, align 4
  %133 = call i32 @ufshcd_wait_for_dev_cmd(%struct.ufs_hba* %130, %struct.ufshcd_lrb* %131, i32 %132)
  %134 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %10, align 8
  %135 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %136 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %135, i32 0, i32 2
  %137 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %136, align 8
  %138 = call i32 @memcpy(%struct.utp_upiu_req* %134, %struct.utp_upiu_req* %137, i32 8)
  %139 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %11, align 8
  %140 = icmp ne %struct.utp_upiu_req* %139, null
  br i1 %140, label %141, label %179

141:                                              ; preds = %104
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @UPIU_QUERY_OPCODE_READ_DESC, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %179

145:                                              ; preds = %141
  %146 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %147 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %146, i32 0, i32 2
  %148 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %147, align 8
  %149 = getelementptr inbounds %struct.utp_upiu_req, %struct.utp_upiu_req* %148, i64 8
  store %struct.utp_upiu_req* %149, %struct.utp_upiu_req** %21, align 8
  %150 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %15, align 8
  %151 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %150, i32 0, i32 2
  %152 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %151, align 8
  %153 = getelementptr inbounds %struct.utp_upiu_req, %struct.utp_upiu_req* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @be32_to_cpu(i32 %155)
  %157 = load i32, i32* @MASK_QUERY_DATA_SEG_LEN, align 4
  %158 = and i32 %156, %157
  store i32 %158, i32* %22, align 4
  %159 = load i32*, i32** %12, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %22, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %145
  %164 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %11, align 8
  %165 = load %struct.utp_upiu_req*, %struct.utp_upiu_req** %21, align 8
  %166 = load i32, i32* %22, align 4
  %167 = call i32 @memcpy(%struct.utp_upiu_req* %164, %struct.utp_upiu_req* %165, i32 %166)
  %168 = load i32, i32* %22, align 4
  %169 = load i32*, i32** %12, align 8
  store i32 %168, i32* %169, align 4
  br label %178

170:                                              ; preds = %145
  %171 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %172 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @dev_warn(i32 %173, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %175 = load i32*, i32** %12, align 8
  store i32 0, i32* %175, align 4
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %16, align 4
  br label %178

178:                                              ; preds = %170, %163
  br label %179

179:                                              ; preds = %178, %141, %104
  %180 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @ufshcd_put_dev_cmd_tag(%struct.ufs_hba* %180, i32 %181)
  %183 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %184 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = call i32 @wake_up(i32* %185)
  %187 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %188 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %187, i32 0, i32 1
  %189 = call i32 @up_read(i32* %188)
  %190 = load i32, i32* %16, align 4
  ret i32 %190
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @ufshcd_get_dev_cmd_tag(%struct.ufs_hba*, i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ufshcd_prepare_req_desc_hdr(%struct.ufshcd_lrb*, i32*, i32) #1

declare dso_local i32 @memcpy(%struct.utp_upiu_req*, %struct.utp_upiu_req*, i32) #1

declare dso_local i32 @memset(%struct.utp_upiu_req*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ufshcd_send_command(%struct.ufs_hba*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ufshcd_wait_for_dev_cmd(%struct.ufs_hba*, %struct.ufshcd_lrb*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @ufshcd_put_dev_cmd_tag(%struct.ufs_hba*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
