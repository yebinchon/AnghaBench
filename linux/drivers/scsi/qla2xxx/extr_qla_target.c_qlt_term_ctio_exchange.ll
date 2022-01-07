; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_term_ctio_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_term_ctio_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_qpair = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }
%struct.qla_tgt_cmd = type { %struct.TYPE_7__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ctio7_from_24xx = type { i32 }

@ql_dbg_tgt_dif = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Term DIF cmd: lba[0x%llx|%lld] len[0x%x] se_cmd=%p tag[%x] op %#x/%s\00", align 1
@OF_TERM_EXCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_qpair*, i8*, %struct.qla_tgt_cmd*, i32)* @qlt_term_ctio_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_term_ctio_exchange(%struct.qla_qpair* %0, i8* %1, %struct.qla_tgt_cmd* %2, i32 %3) #0 {
  %5 = alloca %struct.qla_qpair*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qla_tgt_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_qla_host*, align 8
  %11 = alloca %struct.ctio7_from_24xx*, align 8
  store %struct.qla_qpair* %0, %struct.qla_qpair** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.qla_tgt_cmd* %2, %struct.qla_tgt_cmd** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %13 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %12, i32 0, i32 0
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  store %struct.scsi_qla_host* %14, %struct.scsi_qla_host** %10, align 8
  %15 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %4
  %21 = load i32, i32* @ql_dbg_tgt_dif, align 4
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %23 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %32, i32 0, i32 1
  %34 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @prot_op_str(i32 %47)
  %49 = call i32 @ql_dbg(i32 %21, %struct.scsi_qla_host* %22, i32 57363, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, %struct.TYPE_8__* %33, i32 %39, i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %20, %4
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = bitcast i8* %54 to %struct.ctio7_from_24xx*
  store %struct.ctio7_from_24xx* %55, %struct.ctio7_from_24xx** %11, align 8
  %56 = load %struct.ctio7_from_24xx*, %struct.ctio7_from_24xx** %11, align 8
  %57 = getelementptr inbounds %struct.ctio7_from_24xx, %struct.ctio7_from_24xx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OF_TERM_EXCH, align 4
  %60 = call i32 @cpu_to_le16(i32 %59)
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %9, align 4
  br label %66

65:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %53
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %71 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %72 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %72, i32 0, i32 0
  %74 = call i32 @qlt_send_term_exchange(%struct.qla_qpair* %70, %struct.qla_tgt_cmd* %71, %struct.TYPE_7__* %73, i32 1, i32 0)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @prot_op_str(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qlt_send_term_exchange(%struct.qla_qpair*, %struct.qla_tgt_cmd*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
