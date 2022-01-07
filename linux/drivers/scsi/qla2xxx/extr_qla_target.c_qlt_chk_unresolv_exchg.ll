; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_chk_unresolv_exchg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_chk_unresolv_exchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_2__*, %struct.qla_qpair* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*, i32)* }
%struct.qla_qpair = type { i64, i64, i32 }
%struct.abts_resp_from_24xx_fw = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to send ABTS Respond. Dumping firmware.\0A\00", align 1
@ql_dbg_tgt_mgt = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.qla_qpair*, %struct.abts_resp_from_24xx_fw*)* @qlt_chk_unresolv_exchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_chk_unresolv_exchg(%struct.scsi_qla_host* %0, %struct.qla_qpair* %1, %struct.abts_resp_from_24xx_fw* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.qla_qpair*, align 8
  %6 = alloca %struct.abts_resp_from_24xx_fw*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.qla_qpair* %1, %struct.qla_qpair** %5, align 8
  store %struct.abts_resp_from_24xx_fw* %2, %struct.abts_resp_from_24xx_fw** %6, align 8
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 1
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %13 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.abts_resp_from_24xx_fw*, %struct.abts_resp_from_24xx_fw** %6, align 8
  %16 = getelementptr inbounds %struct.abts_resp_from_24xx_fw, %struct.abts_resp_from_24xx_fw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %3
  %20 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %21 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @jiffies, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %19
  %26 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %27 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %31 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 5
  br i1 %33, label %34, label %76

34:                                               ; preds = %25
  %35 = load i32, i32* @EIO, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %37 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* @ql_log_warn, align 4
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %40 = call i32 @ql_log(i32 %38, %struct.scsi_qla_host* %39, i32 65535, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* @ql_dbg_tgt_mgt, align 8
  %42 = load i64, i64* @ql_dbg_buffer, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %45 = load %struct.abts_resp_from_24xx_fw*, %struct.abts_resp_from_24xx_fw** %6, align 8
  %46 = bitcast %struct.abts_resp_from_24xx_fw* %45 to i32*
  %47 = call i32 @ql_dump_buffer(i64 %43, %struct.scsi_qla_host* %44, i32 65535, i32* %46, i32 8)
  %48 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 1
  %51 = load %struct.qla_qpair*, %struct.qla_qpair** %50, align 8
  %52 = icmp eq %struct.qla_qpair* %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %34
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.scsi_qla_host*, i32)*, i32 (%struct.scsi_qla_host*, i32)** %57, align 8
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %60 = call i32 %58(%struct.scsi_qla_host* %59, i32 1)
  br label %69

61:                                               ; preds = %34
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %63 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.scsi_qla_host*, i32)*, i32 (%struct.scsi_qla_host*, i32)** %65, align 8
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %68 = call i32 %66(%struct.scsi_qla_host* %67, i32 0)
  br label %69

69:                                               ; preds = %61, %53
  %70 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %71, i32 0, i32 0
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %75 = call i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host* %74)
  br label %76

76:                                               ; preds = %69, %25
  br label %95

77:                                               ; preds = %19, %3
  %78 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %79 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @jiffies, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.abts_resp_from_24xx_fw*, %struct.abts_resp_from_24xx_fw** %6, align 8
  %85 = getelementptr inbounds %struct.abts_resp_from_24xx_fw, %struct.abts_resp_from_24xx_fw* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %88 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %90 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  %91 = load i64, i64* @jiffies, align 8
  %92 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %93 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %83, %77
  br label %95

95:                                               ; preds = %94, %76
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.scsi_qla_host*, i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
