; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_get_bb_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_get_bb_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.nvm_geo, %struct.request_queue* }
%struct.nvm_geo = type { i32, i32 }
%struct.request_queue = type { %struct.nvme_ns* }
%struct.nvme_ns = type { %struct.TYPE_3__*, %struct.nvme_ctrl* }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_ctrl = type { i32, i32 }
%struct.ppa_addr = type { i32 }
%struct.nvme_nvm_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.nvme_nvm_bb_tbl = type { i8*, i32, i32, i32 }
%struct.nvme_command = type { i32 }

@nvme_nvm_admin_get_bb_tbl = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"get bad block table failed (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"bbt format mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"bbt version not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"bbt unsuspected blocks returned (%u!=%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, i32, i32*)* @nvme_nvm_get_bb_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_nvm_get_bb_tbl(%struct.nvm_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ppa_addr, align 4
  %6 = alloca %struct.nvm_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.nvm_geo*, align 8
  %10 = alloca %struct.nvme_ns*, align 8
  %11 = alloca %struct.nvme_ctrl*, align 8
  %12 = alloca %struct.nvme_nvm_command, align 4
  %13 = alloca %struct.nvme_nvm_bb_tbl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  store i32 %1, i32* %17, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %19 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %18, i32 0, i32 1
  %20 = load %struct.request_queue*, %struct.request_queue** %19, align 8
  store %struct.request_queue* %20, %struct.request_queue** %8, align 8
  %21 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %22 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %21, i32 0, i32 0
  store %struct.nvm_geo* %22, %struct.nvm_geo** %9, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = load %struct.nvme_ns*, %struct.nvme_ns** %24, align 8
  store %struct.nvme_ns* %25, %struct.nvme_ns** %10, align 8
  %26 = load %struct.nvme_ns*, %struct.nvme_ns** %10, align 8
  %27 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %26, i32 0, i32 1
  %28 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %27, align 8
  store %struct.nvme_ctrl* %28, %struct.nvme_ctrl** %11, align 8
  %29 = bitcast %struct.nvme_nvm_command* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 12, i1 false)
  %30 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %31 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %34 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 24, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %41 = load i32, i32* @nvme_nvm_admin_get_bb_tbl, align 4
  %42 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %12, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nvme_ns*, %struct.nvme_ns** %10, align 8
  %45 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %12, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cpu_to_le64(i32 %53)
  %55 = getelementptr inbounds %struct.nvme_nvm_command, %struct.nvme_nvm_command* %12, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.nvme_nvm_bb_tbl* @kzalloc(i32 %57, i32 %58)
  store %struct.nvme_nvm_bb_tbl* %59, %struct.nvme_nvm_bb_tbl** %13, align 8
  %60 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %61 = icmp ne %struct.nvme_nvm_bb_tbl* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %3
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %171

65:                                               ; preds = %3
  %66 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %11, align 8
  %67 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %struct.nvme_nvm_command* %12 to %struct.nvme_command*
  %70 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @nvme_submit_sync_cmd(i32 %68, %struct.nvme_command* %69, %struct.nvme_nvm_bb_tbl* %70, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %11, align 8
  %77 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %16, align 4
  br label %167

83:                                               ; preds = %65
  %84 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %85 = getelementptr inbounds %struct.nvme_nvm_bb_tbl, %struct.nvme_nvm_bb_tbl* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 66
  br i1 %90, label %115, label %91

91:                                               ; preds = %83
  %92 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %93 = getelementptr inbounds %struct.nvme_nvm_bb_tbl, %struct.nvme_nvm_bb_tbl* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 66
  br i1 %98, label %115, label %99

99:                                               ; preds = %91
  %100 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %101 = getelementptr inbounds %struct.nvme_nvm_bb_tbl, %struct.nvme_nvm_bb_tbl* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 76
  br i1 %106, label %115, label %107

107:                                              ; preds = %99
  %108 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %109 = getelementptr inbounds %struct.nvme_nvm_bb_tbl, %struct.nvme_nvm_bb_tbl* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 84
  br i1 %114, label %115, label %122

115:                                              ; preds = %107, %99, %91, %83
  %116 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %11, align 8
  %117 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_err(i32 %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %16, align 4
  br label %167

122:                                              ; preds = %107
  %123 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %124 = getelementptr inbounds %struct.nvme_nvm_bb_tbl, %struct.nvme_nvm_bb_tbl* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @le16_to_cpu(i32 %125)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %16, align 4
  %131 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %11, align 8
  %132 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @dev_err(i32 %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %167

135:                                              ; preds = %122
  %136 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %137 = getelementptr inbounds %struct.nvme_nvm_bb_tbl, %struct.nvme_nvm_bb_tbl* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le32_to_cpu(i32 %138)
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %135
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %16, align 4
  %145 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %11, align 8
  %146 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %149 = getelementptr inbounds %struct.nvme_nvm_bb_tbl, %struct.nvme_nvm_bb_tbl* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le32_to_cpu(i32 %150)
  %152 = load i32, i32* %14, align 4
  %153 = call i32 (i32, i8*, ...) @dev_err(i32 %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %151, i32 %152)
  br label %167

154:                                              ; preds = %135
  %155 = load i32*, i32** %7, align 8
  %156 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %157 = getelementptr inbounds %struct.nvme_nvm_bb_tbl, %struct.nvme_nvm_bb_tbl* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %160 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %163 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %161, %164
  %166 = call i32 @memcpy(i32* %155, i32 %158, i32 %165)
  br label %167

167:                                              ; preds = %154, %142, %128, %115, %75
  %168 = load %struct.nvme_nvm_bb_tbl*, %struct.nvme_nvm_bb_tbl** %13, align 8
  %169 = call i32 @kfree(%struct.nvme_nvm_bb_tbl* %168)
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %167, %62
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local %struct.nvme_nvm_bb_tbl* @kzalloc(i32, i32) #2

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, %struct.nvme_nvm_bb_tbl*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @kfree(%struct.nvme_nvm_bb_tbl*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
