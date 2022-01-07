; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_protocol_tlv_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_protocol_tlv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, %struct.qed_iscsi_stats*)* }
%struct.qed_iscsi_stats = type { i32, i32, i32, i32 }
%struct.qed_mfw_tlv_iscsi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvm_iscsi_block = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qedi_ctx = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not allocate memory for fw_iscsi_stats.\0A\00", align 1
@qedi_ops = common dso_local global %struct.TYPE_4__* null, align 8
@NVM_ISCSI_CFG_GEN_CHAP_ENABLED = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_GEN_CHAP_MUTUAL_ENABLED = common dso_local global i32 0, align 4
@QEDI_SQ_SIZE = common dso_local global i32 0, align 4
@QEDI_CQ_SIZE = common dso_local global i32 0, align 4
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Boot target not set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @qedi_get_protocol_tlv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_get_protocol_tlv_data(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_mfw_tlv_iscsi*, align 8
  %6 = alloca %struct.qed_iscsi_stats*, align 8
  %7 = alloca %struct.nvm_iscsi_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qedi_ctx*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.qed_mfw_tlv_iscsi*
  store %struct.qed_mfw_tlv_iscsi* %13, %struct.qed_mfw_tlv_iscsi** %5, align 8
  store %struct.nvm_iscsi_block* null, %struct.nvm_iscsi_block** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.qedi_ctx*
  store %struct.qedi_ctx* %15, %struct.qedi_ctx** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.qed_iscsi_stats* @kmalloc(i32 16, i32 %16)
  store %struct.qed_iscsi_stats* %17, %struct.qed_iscsi_stats** %6, align 8
  %18 = load %struct.qed_iscsi_stats*, %struct.qed_iscsi_stats** %6, align 8
  %19 = icmp ne %struct.qed_iscsi_stats* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %22 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %21, i32 0, i32 0
  %23 = call i32 @QEDI_ERR(i32* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %149

24:                                               ; preds = %2
  %25 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedi_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.qed_iscsi_stats*)*, i32 (i32, %struct.qed_iscsi_stats*)** %29, align 8
  %31 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qed_iscsi_stats*, %struct.qed_iscsi_stats** %6, align 8
  %35 = call i32 %30(i32 %33, %struct.qed_iscsi_stats* %34)
  %36 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %37 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %36, i32 0, i32 2
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %40 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.qed_iscsi_stats*, %struct.qed_iscsi_stats** %6, align 8
  %42 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %45 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %44, i32 0, i32 15
  store i32 %43, i32* %45, align 4
  %46 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %47 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.qed_iscsi_stats*, %struct.qed_iscsi_stats** %6, align 8
  %49 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %52 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %51, i32 0, i32 14
  store i32 %50, i32* %52, align 4
  %53 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %54 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %53, i32 0, i32 2
  store i32 1, i32* %54, align 4
  %55 = load %struct.qed_iscsi_stats*, %struct.qed_iscsi_stats** %6, align 8
  %56 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %59 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 4
  %60 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %61 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load %struct.qed_iscsi_stats*, %struct.qed_iscsi_stats** %6, align 8
  %63 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %66 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 4
  %67 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %68 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %67, i32 0, i32 4
  store i32 1, i32* %68, align 4
  %69 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %70 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %73 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 4
  %74 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %75 = call %struct.nvm_iscsi_block* @qedi_get_nvram_block(%struct.qedi_ctx* %74)
  store %struct.nvm_iscsi_block* %75, %struct.nvm_iscsi_block** %7, align 8
  %76 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %77 = icmp ne %struct.nvm_iscsi_block* %76, null
  br i1 %77, label %78, label %146

78:                                               ; preds = %24
  %79 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %80 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NVM_ISCSI_CFG_GEN_CHAP_ENABLED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %8, align 4
  %89 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %90 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NVM_ISCSI_CFG_GEN_CHAP_MUTUAL_ENABLED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %78
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %101, %78
  %105 = phi i1 [ true, %78 ], [ %103, %101 ]
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  %108 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %109 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %111 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %110, i32 0, i32 6
  store i32 1, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %116 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %115, i32 0, i32 6
  store i32 2, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %104
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %122 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %121, i32 0, i32 6
  store i32 3, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %125 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %124, i32 0, i32 7
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* @QEDI_SQ_SIZE, align 4
  %127 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %128 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 4
  %129 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %130 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %129, i32 0, i32 8
  store i32 1, i32* %130, align 4
  %131 = load i32, i32* @QEDI_CQ_SIZE, align 4
  %132 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %133 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  %134 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %135 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %5, align 8
  %136 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %137 = call i32 @qedi_find_boot_info(%struct.qedi_ctx* %134, %struct.qed_mfw_tlv_iscsi* %135, %struct.nvm_iscsi_block* %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %123
  %141 = load %struct.qedi_ctx*, %struct.qedi_ctx** %10, align 8
  %142 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %141, i32 0, i32 0
  %143 = load i32, i32* @QEDI_LOG_INFO, align 4
  %144 = call i32 @QEDI_INFO(i32* %142, i32 %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %145

145:                                              ; preds = %140, %123
  br label %146

146:                                              ; preds = %145, %24
  %147 = load %struct.qed_iscsi_stats*, %struct.qed_iscsi_stats** %6, align 8
  %148 = call i32 @kfree(%struct.qed_iscsi_stats* %147)
  br label %149

149:                                              ; preds = %146, %20
  ret void
}

declare dso_local %struct.qed_iscsi_stats* @kmalloc(i32, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.nvm_iscsi_block* @qedi_get_nvram_block(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_find_boot_info(%struct.qedi_ctx*, %struct.qed_mfw_tlv_iscsi*, %struct.nvm_iscsi_block*) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.qed_iscsi_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
