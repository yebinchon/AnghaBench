; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32, %struct.csio_ioreq* }
%struct.csio_ioreq = type { %struct.TYPE_2__, %struct.csio_rnode*, %struct.csio_lnode* }
%struct.TYPE_2__ = type { i8* }
%struct.csio_rnode = type { i32 }
%struct.fc_fdmi_hba_identifier = type { i32 }

@CSIO_LNF_FDMI_ENABLE = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@n_fdmi_err = common dso_local global i32 0, align 4
@FC_CT_HDR_LEN = common dso_local global i32 0, align 4
@FC_FST_MGMT = common dso_local global i32 0, align 4
@FC_FDMI_SUBTYPE = common dso_local global i32 0, align 4
@FC_FDMI_DHBA = common dso_local global i32 0, align 4
@csio_ln_fdmi_dhba_cbfn = common dso_local global i32 0, align 4
@FCOE_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to issue fdmi dhba req\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_ln_fdmi_start(%struct.csio_lnode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_lnode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.csio_ioreq*, align 8
  %7 = alloca %struct.csio_rnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fc_fdmi_hba_identifier*, align 8
  %10 = alloca i32, align 4
  store %struct.csio_lnode* %0, %struct.csio_lnode** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.csio_rnode*
  store %struct.csio_rnode* %12, %struct.csio_rnode** %7, align 8
  %13 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %14 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CSIO_LNF_FDMI_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EPROTONOSUPPORT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.csio_rnode*, %struct.csio_rnode** %7, align 8
  %24 = call i32 @csio_is_rnode_ready(%struct.csio_rnode* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %28 = load i32, i32* @n_fdmi_err, align 4
  %29 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %32 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %31, i32 0, i32 1
  %33 = load %struct.csio_ioreq*, %struct.csio_ioreq** %32, align 8
  store %struct.csio_ioreq* %33, %struct.csio_ioreq** %6, align 8
  %34 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %35 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %36 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %35, i32 0, i32 2
  store %struct.csio_lnode* %34, %struct.csio_lnode** %36, align 8
  %37 = load %struct.csio_rnode*, %struct.csio_rnode** %7, align 8
  %38 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %39 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %38, i32 0, i32 1
  store %struct.csio_rnode* %37, %struct.csio_rnode** %39, align 8
  %40 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %41 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @FC_CT_HDR_LEN, align 4
  %46 = call i32 @memset(i8* %44, i32 0, i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @FC_FST_MGMT, align 4
  %49 = load i32, i32* @FC_FDMI_SUBTYPE, align 4
  %50 = load i32, i32* @FC_FDMI_DHBA, align 4
  %51 = call i32 @csio_fill_ct_iu(i8* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @FC_CT_HDR_LEN, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @csio_ct_get_pld(i8* %53)
  %55 = inttoptr i64 %54 to %struct.fc_fdmi_hba_identifier*
  store %struct.fc_fdmi_hba_identifier* %55, %struct.fc_fdmi_hba_identifier** %9, align 8
  %56 = load %struct.fc_fdmi_hba_identifier*, %struct.fc_fdmi_hba_identifier** %9, align 8
  %57 = getelementptr inbounds %struct.fc_fdmi_hba_identifier, %struct.fc_fdmi_hba_identifier* %56, i32 0, i32 0
  %58 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %59 = call i32 @csio_ln_wwpn(%struct.csio_lnode* %58)
  %60 = call i32 @memcpy(i32* %57, i32 %59, i32 8)
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %66 = load i32, i32* @csio_ln_fdmi_dhba_cbfn, align 4
  %67 = load i32, i32* @FCOE_CT, align 4
  %68 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %69 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %68, i32 0, i32 0
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @csio_ln_mgmt_submit_req(%struct.csio_ioreq* %65, i32 %66, i32 %67, %struct.TYPE_2__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %30
  %74 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %75 = load i32, i32* @n_fdmi_err, align 4
  %76 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %74, i32 %75)
  %77 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %78 = call i32 @csio_ln_dbg(%struct.csio_lnode* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %73, %30
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %19
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @csio_is_rnode_ready(%struct.csio_rnode*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @csio_fill_ct_iu(i8*, i32, i32, i32) #1

declare dso_local i64 @csio_ct_get_pld(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @csio_ln_wwpn(%struct.csio_lnode*) #1

declare dso_local i64 @csio_ln_mgmt_submit_req(%struct.csio_ioreq*, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
