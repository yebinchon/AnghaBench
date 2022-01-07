; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_mgmt_wr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_mgmt_wr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mgmtm = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.csio_ioreq = type { i32 (%struct.csio_hw.0*, %struct.csio_ioreq*)*, %struct.TYPE_3__, i32 }
%struct.csio_hw.0 = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.fw_fcoe_els_ct_wr = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"Invalid ELS CT WR length recvd, len:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Error- Invalid IO handle recv in WR. handle: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i8*, i32)* @csio_ln_mgmt_wr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_ln_mgmt_wr_handler(%struct.csio_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csio_mgmtm*, align 8
  %8 = alloca %struct.csio_ioreq*, align 8
  %9 = alloca %struct.fw_fcoe_els_ct_wr*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %11 = call %struct.csio_mgmtm* @csio_hw_to_mgmtm(%struct.csio_hw* %10)
  store %struct.csio_mgmtm* %11, %struct.csio_mgmtm** %7, align 8
  store %struct.csio_ioreq* null, %struct.csio_ioreq** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.fw_fcoe_els_ct_wr*
  store %struct.fw_fcoe_els_ct_wr* %13, %struct.fw_fcoe_els_ct_wr** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %7, align 8
  %19 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i8*, ...) @csio_err(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %7, align 8
  %24 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %85

28:                                               ; preds = %3
  %29 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %9, align 8
  %30 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.csio_ioreq*
  store %struct.csio_ioreq* %32, %struct.csio_ioreq** %8, align 8
  %33 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %9, align 8
  %34 = call i32 @csio_wr_status(%struct.fw_fcoe_els_ct_wr* %33)
  %35 = load %struct.csio_ioreq*, %struct.csio_ioreq** %8, align 8
  %36 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %38 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %7, align 8
  %41 = load %struct.csio_ioreq*, %struct.csio_ioreq** %8, align 8
  %42 = call i64 @csio_mgmt_req_lookup(%struct.csio_mgmtm* %40, %struct.csio_ioreq* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %28
  %45 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %7, align 8
  %46 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.csio_ioreq*, %struct.csio_ioreq** %8, align 8
  %49 = call i32 (i32, i8*, ...) @csio_err(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), %struct.csio_ioreq* %48)
  %50 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %7, align 8
  %51 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %56 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_irq(i32* %56)
  br label %85

58:                                               ; preds = %28
  %59 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %60 = call %struct.csio_mgmtm* @csio_hw_to_mgmtm(%struct.csio_hw* %59)
  store %struct.csio_mgmtm* %60, %struct.csio_mgmtm** %7, align 8
  %61 = load %struct.csio_ioreq*, %struct.csio_ioreq** %8, align 8
  %62 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @list_del_init(i32* %63)
  %65 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %7, align 8
  %66 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %71 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load %struct.csio_ioreq*, %struct.csio_ioreq** %8, align 8
  %74 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %73, i32 0, i32 0
  %75 = load i32 (%struct.csio_hw.0*, %struct.csio_ioreq*)*, i32 (%struct.csio_hw.0*, %struct.csio_ioreq*)** %74, align 8
  %76 = icmp ne i32 (%struct.csio_hw.0*, %struct.csio_ioreq*)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %58
  %78 = load %struct.csio_ioreq*, %struct.csio_ioreq** %8, align 8
  %79 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %78, i32 0, i32 0
  %80 = load i32 (%struct.csio_hw.0*, %struct.csio_ioreq*)*, i32 (%struct.csio_hw.0*, %struct.csio_ioreq*)** %79, align 8
  %81 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %82 = bitcast %struct.csio_hw* %81 to %struct.csio_hw.0*
  %83 = load %struct.csio_ioreq*, %struct.csio_ioreq** %8, align 8
  %84 = call i32 %80(%struct.csio_hw.0* %82, %struct.csio_ioreq* %83)
  br label %85

85:                                               ; preds = %17, %44, %77, %58
  ret void
}

declare dso_local %struct.csio_mgmtm* @csio_hw_to_mgmtm(%struct.csio_hw*) #1

declare dso_local i32 @csio_err(i32, i8*, ...) #1

declare dso_local i32 @csio_wr_status(%struct.fw_fcoe_els_ct_wr*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @csio_mgmt_req_lookup(%struct.csio_mgmtm*, %struct.csio_ioreq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
