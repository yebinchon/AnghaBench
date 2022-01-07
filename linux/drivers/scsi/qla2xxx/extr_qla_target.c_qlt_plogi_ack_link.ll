; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_plogi_ack_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_plogi_ack_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qlt_plogi_ack_t = type { %struct.fc_port*, i32, %struct.imm_ntfy_from_isp }
%struct.imm_ntfy_from_isp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.fc_port = type { i32, %struct.qlt_plogi_ack_t**, i32 }

@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"Linking sess %p [%d] wwn %8phC with PLOGI ACK to wwn %8phC s_id %02x:%02x:%02x, ref=%d pla %p link %d\0A\00", align 1
@QLT_PLOGI_LINK_CONFLICT = common dso_local global i32 0, align 4
@QLT_PLOGI_LINK_SAME_WWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlt_plogi_ack_link(%struct.scsi_qla_host* %0, %struct.qlt_plogi_ack_t* %1, %struct.fc_port* %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.qlt_plogi_ack_t*, align 8
  %7 = alloca %struct.fc_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.imm_ntfy_from_isp*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.qlt_plogi_ack_t* %1, %struct.qlt_plogi_ack_t** %6, align 8
  store %struct.fc_port* %2, %struct.fc_port** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %6, align 8
  %11 = getelementptr inbounds %struct.qlt_plogi_ack_t, %struct.qlt_plogi_ack_t* %10, i32 0, i32 2
  store %struct.imm_ntfy_from_isp* %11, %struct.imm_ntfy_from_isp** %9, align 8
  %12 = load %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %6, align 8
  %13 = getelementptr inbounds %struct.qlt_plogi_ack_t, %struct.qlt_plogi_ack_t* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %18 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %21 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %9, align 8
  %24 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %9, align 8
  %29 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %9, align 8
  %36 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %9, align 8
  %43 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %6, align 8
  %50 = getelementptr inbounds %struct.qlt_plogi_ack_t, %struct.qlt_plogi_ack_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ql_dbg(i32 %16, %struct.scsi_qla_host* %17, i32 61591, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), %struct.fc_port* %18, i32 %19, i32 %22, i32 %27, i32 %34, i32 %41, i32 %48, i32 %51, %struct.qlt_plogi_ack_t* %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @QLT_PLOGI_LINK_CONFLICT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %4
  %59 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %60 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %67 [
    i32 129, label %62
    i32 128, label %62
  ]

62:                                               ; preds = %58, %58
  %63 = load %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %6, align 8
  %64 = getelementptr inbounds %struct.qlt_plogi_ack_t, %struct.qlt_plogi_ack_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  br label %104

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %4
  %70 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %71 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %70, i32 0, i32 1
  %72 = load %struct.qlt_plogi_ack_t**, %struct.qlt_plogi_ack_t*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %72, i64 %74
  %76 = load %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %75, align 8
  %77 = icmp ne %struct.qlt_plogi_ack_t* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %80 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %81 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %80, i32 0, i32 1
  %82 = load %struct.qlt_plogi_ack_t**, %struct.qlt_plogi_ack_t*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %82, i64 %84
  %86 = load %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %85, align 8
  %87 = call i32 @qlt_plogi_ack_unref(%struct.scsi_qla_host* %79, %struct.qlt_plogi_ack_t* %86)
  br label %88

88:                                               ; preds = %78, %69
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @QLT_PLOGI_LINK_SAME_WWN, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %94 = load %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %6, align 8
  %95 = getelementptr inbounds %struct.qlt_plogi_ack_t, %struct.qlt_plogi_ack_t* %94, i32 0, i32 0
  store %struct.fc_port* %93, %struct.fc_port** %95, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %6, align 8
  %98 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %99 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %98, i32 0, i32 1
  %100 = load %struct.qlt_plogi_ack_t**, %struct.qlt_plogi_ack_t*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.qlt_plogi_ack_t*, %struct.qlt_plogi_ack_t** %100, i64 %102
  store %struct.qlt_plogi_ack_t* %97, %struct.qlt_plogi_ack_t** %103, align 8
  br label %104

104:                                              ; preds = %96, %62
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, %struct.fc_port*, i32, i32, i32, i32, i32, i32, i32, %struct.qlt_plogi_ack_t*, i32) #1

declare dso_local i32 @qlt_plogi_ack_unref(%struct.scsi_qla_host*, %struct.qlt_plogi_ack_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
