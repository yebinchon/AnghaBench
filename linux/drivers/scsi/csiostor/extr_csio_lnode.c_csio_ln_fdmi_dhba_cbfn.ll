; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_dhba_cbfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_dhba_cbfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_ioreq = type { %struct.TYPE_2__, i32, i32, %struct.csio_lnode* }
%struct.TYPE_2__ = type { i8* }
%struct.csio_lnode = type { i32 }
%struct.fc_fdmi_port_name = type { i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WR error:%x in processing fdmi dhba cmd\0A\00", align 1
@n_fdmi_err = common dso_local global i32 0, align 4
@FC_FS_ACC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"fdmi dhba cmd rejected reason %x expl %x\0A\00", align 1
@FC_CT_HDR_LEN = common dso_local global i32 0, align 4
@FC_FST_MGMT = common dso_local global i32 0, align 4
@FC_FDMI_SUBTYPE = common dso_local global i32 0, align 4
@FC_FDMI_DPRT = common dso_local global i32 0, align 4
@csio_ln_fdmi_dprt_cbfn = common dso_local global i32 0, align 4
@FCOE_CT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to issue fdmi dprt req\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_ioreq*)* @csio_ln_fdmi_dhba_cbfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_ln_fdmi_dhba_cbfn(%struct.csio_hw* %0, %struct.csio_ioreq* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_ioreq*, align 8
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_fdmi_port_name*, align 8
  %8 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store %struct.csio_ioreq* %1, %struct.csio_ioreq** %4, align 8
  %9 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %10 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %9, i32 0, i32 3
  %11 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  store %struct.csio_lnode* %11, %struct.csio_lnode** %5, align 8
  %12 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %13 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FW_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %19 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %20 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.csio_lnode*, i8*, ...) @csio_ln_dbg(%struct.csio_lnode* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %24 = load i32, i32* @n_fdmi_err, align 4
  %25 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %23, i32 %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %28 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @csio_is_rnode_ready(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %34 = load i32, i32* @n_fdmi_err, align 4
  %35 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %33, i32 %34)
  br label %96

36:                                               ; preds = %26
  %37 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %38 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @csio_ct_rsp(i8* %41)
  %43 = call i64 @ntohs(i32 %42)
  %44 = load i64, i64* @FC_FS_ACC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @csio_ct_reason(i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @csio_ct_expl(i8* %50)
  %52 = call i32 (%struct.csio_lnode*, i8*, ...) @csio_ln_dbg(%struct.csio_lnode* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %46, %36
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @FC_CT_HDR_LEN, align 4
  %56 = call i32 @memset(i8* %54, i32 0, i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @FC_FST_MGMT, align 4
  %59 = load i32, i32* @FC_FDMI_SUBTYPE, align 4
  %60 = load i32, i32* @FC_FDMI_DPRT, align 4
  %61 = call i32 @csio_fill_ct_iu(i8* %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @FC_CT_HDR_LEN, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @csio_ct_get_pld(i8* %63)
  %65 = inttoptr i64 %64 to %struct.fc_fdmi_port_name*
  store %struct.fc_fdmi_port_name* %65, %struct.fc_fdmi_port_name** %7, align 8
  %66 = load %struct.fc_fdmi_port_name*, %struct.fc_fdmi_port_name** %7, align 8
  %67 = getelementptr inbounds %struct.fc_fdmi_port_name, %struct.fc_fdmi_port_name* %66, i32 0, i32 0
  %68 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %69 = call i32 @csio_ln_wwpn(%struct.csio_lnode* %68)
  %70 = call i32 @memcpy(i32* %67, i32 %69, i32 8)
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %76 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %75, i32 0, i32 0
  %77 = call i32 @spin_lock_irq(i32* %76)
  %78 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %79 = load i32, i32* @csio_ln_fdmi_dprt_cbfn, align 4
  %80 = load i32, i32* @FCOE_CT, align 4
  %81 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %82 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %81, i32 0, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @csio_ln_mgmt_submit_req(%struct.csio_ioreq* %78, i32 %79, i32 %80, %struct.TYPE_2__* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %53
  %87 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %88 = load i32, i32* @n_fdmi_err, align 4
  %89 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %87, i32 %88)
  %90 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %91 = call i32 (%struct.csio_lnode*, i8*, ...) @csio_ln_dbg(%struct.csio_lnode* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %86, %53
  %93 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %94 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_irq(i32* %94)
  br label %96

96:                                               ; preds = %92, %32
  ret void
}

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, ...) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i32 @csio_is_rnode_ready(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @csio_ct_rsp(i8*) #1

declare dso_local i32 @csio_ct_reason(i8*) #1

declare dso_local i32 @csio_ct_expl(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @csio_fill_ct_iu(i8*, i32, i32, i32) #1

declare dso_local i64 @csio_ct_get_pld(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @csio_ln_wwpn(%struct.csio_lnode*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @csio_ln_mgmt_submit_req(%struct.csio_ioreq*, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
