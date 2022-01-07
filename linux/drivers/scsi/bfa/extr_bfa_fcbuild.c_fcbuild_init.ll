; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fcbuild_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fcbuild_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i8*, i8*, i32, i8* }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i32, i8* }
%struct.TYPE_18__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i32, i8* }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__, i8*, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, i8* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, i8*, i8*, i8*, i32, i32 }

@FC_RTG_EXT_LINK = common dso_local global i8* null, align 8
@fc_els_req_tmpl = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@FC_CAT_LD_REQUEST = common dso_local global i32 0, align 4
@FC_TYPE_ELS = common dso_local global i8* null, align 8
@FCTL_SEQ_INI = common dso_local global i32 0, align 4
@FCTL_FS_EXCH = common dso_local global i32 0, align 4
@FCTL_END_SEQ = common dso_local global i32 0, align 4
@FCTL_SI_XFER = common dso_local global i32 0, align 4
@FC_RXID_ANY = common dso_local global i8* null, align 8
@fc_els_rsp_tmpl = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@FC_CAT_LD_REPLY = common dso_local global i32 0, align 4
@FCTL_EC_RESP = common dso_local global i32 0, align 4
@FCTL_LS_EXCH = common dso_local global i32 0, align 4
@FC_RTG_BASIC_LINK = common dso_local global i8* null, align 8
@fc_bls_req_tmpl = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@FC_TYPE_BLS = common dso_local global i8* null, align 8
@fc_bls_rsp_tmpl = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@FC_CAT_BA_ACC = common dso_local global i32 0, align 4
@ba_acc_tmpl = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@FC_PH_VER_PH_3 = common dso_local global i32 0, align 4
@plogi_tmpl = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@FC_PH_VER_4_3 = common dso_local global i32 0, align 4
@FC_ELS_PRLI = common dso_local global i32 0, align 4
@prli_tmpl = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@FC_TYPE_FCP = common dso_local global i8* null, align 8
@FC_ELS_RRQ = common dso_local global i32 0, align 4
@rrq_tmpl = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@FC_RTG_FC4_DEV_DATA = common dso_local global i32 0, align 4
@fcp_fchs_tmpl = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@FC_CAT_UNSOLICIT_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcbuild_init() #0 {
  %1 = load i8*, i8** @FC_RTG_EXT_LINK, align 8
  store i8* %1, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fc_els_req_tmpl, i32 0, i32 4), align 8
  %2 = load i32, i32* @FC_CAT_LD_REQUEST, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fc_els_req_tmpl, i32 0, i32 3), align 8
  %3 = load i8*, i8** @FC_TYPE_ELS, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fc_els_req_tmpl, i32 0, i32 2), align 8
  %4 = load i32, i32* @FCTL_SEQ_INI, align 4
  %5 = load i32, i32* @FCTL_FS_EXCH, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @FCTL_END_SEQ, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @FCTL_SI_XFER, align 4
  %10 = or i32 %8, %9
  %11 = call i8* @bfa_hton3b(i32 %10)
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fc_els_req_tmpl, i32 0, i32 1), align 8
  %12 = load i8*, i8** @FC_RXID_ANY, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fc_els_req_tmpl, i32 0, i32 0), align 8
  %13 = load i8*, i8** @FC_RTG_EXT_LINK, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fc_els_rsp_tmpl, i32 0, i32 4), align 8
  %14 = load i32, i32* @FC_CAT_LD_REPLY, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fc_els_rsp_tmpl, i32 0, i32 3), align 8
  %15 = load i8*, i8** @FC_TYPE_ELS, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fc_els_rsp_tmpl, i32 0, i32 2), align 8
  %16 = load i32, i32* @FCTL_EC_RESP, align 4
  %17 = load i32, i32* @FCTL_SEQ_INI, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FCTL_LS_EXCH, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FCTL_END_SEQ, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FCTL_SI_XFER, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @bfa_hton3b(i32 %24)
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fc_els_rsp_tmpl, i32 0, i32 1), align 8
  %26 = load i8*, i8** @FC_RXID_ANY, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fc_els_rsp_tmpl, i32 0, i32 0), align 8
  %27 = load i8*, i8** @FC_RTG_BASIC_LINK, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fc_bls_req_tmpl, i32 0, i32 3), align 8
  %28 = load i8*, i8** @FC_TYPE_BLS, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fc_bls_req_tmpl, i32 0, i32 2), align 8
  %29 = load i32, i32* @FCTL_END_SEQ, align 4
  %30 = load i32, i32* @FCTL_SI_XFER, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @bfa_hton3b(i32 %31)
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fc_bls_req_tmpl, i32 0, i32 1), align 8
  %33 = load i8*, i8** @FC_RXID_ANY, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @fc_bls_req_tmpl, i32 0, i32 0), align 8
  %34 = load i8*, i8** @FC_RTG_BASIC_LINK, align 8
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fc_bls_rsp_tmpl, i32 0, i32 4), align 8
  %35 = load i32, i32* @FC_CAT_BA_ACC, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fc_bls_rsp_tmpl, i32 0, i32 3), align 8
  %36 = load i8*, i8** @FC_TYPE_BLS, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fc_bls_rsp_tmpl, i32 0, i32 2), align 8
  %37 = load i32, i32* @FCTL_EC_RESP, align 4
  %38 = load i32, i32* @FCTL_SEQ_INI, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FCTL_LS_EXCH, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FCTL_END_SEQ, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FCTL_SI_XFER, align 4
  %45 = or i32 %43, %44
  %46 = call i8* @bfa_hton3b(i32 %45)
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fc_bls_rsp_tmpl, i32 0, i32 1), align 8
  %47 = load i8*, i8** @FC_RXID_ANY, align 8
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fc_bls_rsp_tmpl, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ba_acc_tmpl, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ba_acc_tmpl, i32 0, i32 1), align 8
  store i32 65535, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ba_acc_tmpl, i32 0, i32 0), align 8
  %48 = load i32, i32* @FC_PH_VER_PH_3, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 1, i32 7), align 4
  %49 = load i32, i32* @FC_PH_VER_4_3, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 1, i32 6), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 1, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 1, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 1, i32 2), align 8
  %50 = call i8* @cpu_to_be16(i32 255)
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 1, i32 5), align 8
  %51 = call i8* @cpu_to_be16(i32 2)
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 1, i32 4), align 8
  %52 = call i32 @cpu_to_be32(i32 2000)
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 1, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 0, i32 1), align 4
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @plogi_tmpl, i32 0, i32 0, i32 3), align 4
  %53 = load i32, i32* @FC_ELS_PRLI, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @prli_tmpl, i32 0, i32 3), align 8
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @prli_tmpl, i32 0, i32 0), align 8
  %54 = call i8* @cpu_to_be16(i32 20)
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @prli_tmpl, i32 0, i32 2), align 8
  %55 = load i8*, i8** @FC_TYPE_FCP, align 8
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @prli_tmpl, i32 0, i32 1, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @prli_tmpl, i32 0, i32 1, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @prli_tmpl, i32 0, i32 1, i32 1, i32 0), align 4
  %56 = load i32, i32* @FC_ELS_RRQ, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @rrq_tmpl, i32 0, i32 0, i32 0), align 4
  %57 = load i32, i32* @FC_RTG_FC4_DEV_DATA, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @fcp_fchs_tmpl, i32 0, i32 5), align 4
  %58 = load i32, i32* @FC_CAT_UNSOLICIT_CMD, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @fcp_fchs_tmpl, i32 0, i32 4), align 8
  %59 = load i8*, i8** @FC_TYPE_FCP, align 8
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @fcp_fchs_tmpl, i32 0, i32 3), align 8
  %60 = load i32, i32* @FCTL_FS_EXCH, align 4
  %61 = load i32, i32* @FCTL_END_SEQ, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FCTL_SI_XFER, align 4
  %64 = or i32 %62, %63
  %65 = call i8* @bfa_hton3b(i32 %64)
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @fcp_fchs_tmpl, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @fcp_fchs_tmpl, i32 0, i32 0), align 8
  %66 = load i8*, i8** @FC_RXID_ANY, align 8
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @fcp_fchs_tmpl, i32 0, i32 1), align 8
  ret void
}

declare dso_local i8* @bfa_hton3b(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
