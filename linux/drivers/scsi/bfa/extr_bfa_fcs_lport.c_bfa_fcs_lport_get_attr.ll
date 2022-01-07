; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { %struct.TYPE_6__*, %struct.bfa_fcs_lport_s*, %struct.TYPE_5__*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_lport_attr_s = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i64 }

@bfa_fcs_lport_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_loopback = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_auth_failed = common dso_local global i32 0, align 4
@BFA_FCS_FABRIC_IPADDR_SZ = common dso_local global i32 0, align 4
@BFA_PORT_TYPE_VPORT = common dso_local global i32 0, align 4
@BFA_PORT_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@BFA_LPORT_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_get_attr(%struct.bfa_fcs_lport_s* %0, %struct.bfa_lport_attr_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.bfa_lport_attr_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %3, align 8
  store %struct.bfa_lport_attr_s* %1, %struct.bfa_lport_attr_s** %4, align 8
  %5 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %6 = load i32, i32* @bfa_fcs_lport_sm_online, align 4
  %7 = call i8* @bfa_sm_cmp_state(%struct.bfa_fcs_lport_s* %5, i32 %6)
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %14 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %13, i32 0, i32 8
  store i64 %12, i64* %14, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %17 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %24, i32 0, i32 1
  %26 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %25, align 8
  %27 = icmp ne %struct.bfa_fcs_lport_s* %26, null
  br i1 %27, label %28, label %89

28:                                               ; preds = %18
  %29 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %29, i32 0, i32 1
  %31 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %30, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %36, i32 0, i32 1
  %38 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %37, align 8
  %39 = load i32, i32* @bfa_fcs_fabric_sm_loopback, align 4
  %40 = call i8* @bfa_sm_cmp_state(%struct.bfa_fcs_lport_s* %38, i32 %39)
  %41 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %43, i32 0, i32 1
  %45 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %44, align 8
  %46 = load i32, i32* @bfa_fcs_fabric_sm_auth_failed, align 4
  %47 = call i8* @bfa_sm_cmp_state(%struct.bfa_fcs_lport_s* %45, i32 %46)
  %48 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %49 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %51 = call i32 @bfa_fcs_lport_get_fabric_name(%struct.bfa_fcs_lport_s* %50)
  %52 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %53 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %55 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %58 = call i32 @bfa_fcs_lport_get_fabric_ipaddr(%struct.bfa_fcs_lport_s* %57)
  %59 = load i32, i32* @BFA_FCS_FABRIC_IPADDR_SZ, align 4
  %60 = call i32 @memcpy(i32 %56, i32 %58, i32 %59)
  %61 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %28
  %66 = load i32, i32* @BFA_PORT_TYPE_VPORT, align 4
  %67 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %68 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %77 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %88

78:                                               ; preds = %28
  %79 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %80 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %79, i32 0, i32 1
  %81 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %80, align 8
  %82 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %87 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %78, %65
  br label %96

89:                                               ; preds = %18
  %90 = load i32, i32* @BFA_PORT_TYPE_UNKNOWN, align 4
  %91 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %92 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @BFA_LPORT_UNINIT, align 4
  %94 = load %struct.bfa_lport_attr_s*, %struct.bfa_lport_attr_s** %4, align 8
  %95 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %89, %88
  ret void
}

declare dso_local i8* @bfa_sm_cmp_state(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_get_fabric_name(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bfa_fcs_lport_get_fabric_ipaddr(%struct.bfa_fcs_lport_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
