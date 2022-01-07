; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_prep_ecwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_prep_ecwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.TYPE_4__, i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fw_fcoe_els_ct_wr = type { i32, i8*, i32, i32, i8*, i32, i32, i32, i64, i64, i8*, i8*, i8* }

@FW_FCOE_ELS_CT_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_ioreq*, i32, i32, i8*, i32, i32, i32, i8**)* @csio_ln_prep_ecwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_ln_prep_ecwr(%struct.csio_ioreq* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca %struct.csio_ioreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca %struct.fw_fcoe_els_ct_wr*, align 8
  %18 = alloca i32, align 4
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8** %7, i8*** %16, align 8
  %19 = load i8**, i8*** %16, align 8
  %20 = bitcast i8** %19 to %struct.fw_fcoe_els_ct_wr*
  store %struct.fw_fcoe_els_ct_wr* %20, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %21 = load i32, i32* @FW_FCOE_ELS_CT_WR, align 4
  %22 = call i32 @FW_WR_OP_V(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @FW_FCOE_ELS_CT_WR_IMMDLEN(i32 %23)
  %25 = or i32 %22, %24
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %28 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %27, i32 0, i32 12
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @DIV_ROUND_UP(i32 %29, i32 16)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @FW_WR_FLOWID_V(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @FW_WR_LEN16_V(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %38 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %41 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %43 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %42, i32 0, i32 9
  store i64 0, i64* %43, align 8
  %44 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %45 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  %46 = load %struct.csio_ioreq*, %struct.csio_ioreq** %9, align 8
  %47 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %50 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.csio_ioreq*, %struct.csio_ioreq** %9, align 8
  %52 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.csio_ioreq*, %struct.csio_ioreq** %9, align 8
  %57 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @csio_q_physiqid(i32 %55, i32 %58)
  %60 = call i32 @cpu_to_be16(i32 %59)
  %61 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %62 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = call i32 @FW_FCOE_ELS_CT_WR_SP(i32 1)
  %64 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %65 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.csio_ioreq*, %struct.csio_ioreq** %9, align 8
  %67 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %71 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @htonl(i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %75 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @PORT_ID_PTR(i32 %77)
  %79 = call i32 @memcpy(i32 %76, i32 %78, i32 3)
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @htonl(i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %83 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @PORT_ID_PTR(i32 %85)
  %87 = call i32 @memcpy(i32 %84, i32 %86, i32 3)
  %88 = load %struct.csio_ioreq*, %struct.csio_ioreq** %9, align 8
  %89 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @cpu_to_be32(i32 %91)
  %93 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %94 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.csio_ioreq*, %struct.csio_ioreq** %9, align 8
  %96 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cpu_to_be64(i32 %98)
  %100 = load %struct.fw_fcoe_els_ct_wr*, %struct.fw_fcoe_els_ct_wr** %17, align 8
  %101 = getelementptr inbounds %struct.fw_fcoe_els_ct_wr, %struct.fw_fcoe_els_ct_wr* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_FCOE_ELS_CT_WR_IMMDLEN(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @FW_WR_FLOWID_V(i32) #1

declare dso_local i32 @FW_WR_LEN16_V(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @csio_q_physiqid(i32, i32) #1

declare dso_local i32 @FW_FCOE_ELS_CT_WR_SP(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @PORT_ID_PTR(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
