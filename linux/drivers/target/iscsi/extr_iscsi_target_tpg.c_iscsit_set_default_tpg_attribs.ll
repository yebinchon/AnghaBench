; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_set_default_tpg_attribs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_set_default_tpg_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_portal_group = type { %struct.iscsi_tpg_attrib }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TA_AUTHENTICATION = common dso_local global i32 0, align 4
@TA_LOGIN_TIMEOUT = common dso_local global i32 0, align 4
@TA_NETIF_TIMEOUT = common dso_local global i32 0, align 4
@TA_DEFAULT_CMDSN_DEPTH = common dso_local global i32 0, align 4
@TA_GENERATE_NODE_ACLS = common dso_local global i32 0, align 4
@TA_CACHE_DYNAMIC_ACLS = common dso_local global i32 0, align 4
@TA_DEMO_MODE_WRITE_PROTECT = common dso_local global i32 0, align 4
@TA_PROD_MODE_WRITE_PROTECT = common dso_local global i32 0, align 4
@TA_DEMO_MODE_DISCOVERY = common dso_local global i32 0, align 4
@TA_DEFAULT_ERL = common dso_local global i32 0, align 4
@TA_DEFAULT_T10_PI = common dso_local global i32 0, align 4
@TA_DEFAULT_FABRIC_PROT_TYPE = common dso_local global i32 0, align 4
@TA_DEFAULT_TPG_ENABLED_SENDTARGETS = common dso_local global i32 0, align 4
@TA_DEFAULT_LOGIN_KEYS_WORKAROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_portal_group*)* @iscsit_set_default_tpg_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_set_default_tpg_attribs(%struct.iscsi_portal_group* %0) #0 {
  %2 = alloca %struct.iscsi_portal_group*, align 8
  %3 = alloca %struct.iscsi_tpg_attrib*, align 8
  store %struct.iscsi_portal_group* %0, %struct.iscsi_portal_group** %2, align 8
  %4 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %4, i32 0, i32 0
  store %struct.iscsi_tpg_attrib* %5, %struct.iscsi_tpg_attrib** %3, align 8
  %6 = load i32, i32* @TA_AUTHENTICATION, align 4
  %7 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %7, i32 0, i32 13
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @TA_LOGIN_TIMEOUT, align 4
  %10 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @TA_NETIF_TIMEOUT, align 4
  %13 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @TA_DEFAULT_CMDSN_DEPTH, align 4
  %16 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @TA_GENERATE_NODE_ACLS, align 4
  %19 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @TA_CACHE_DYNAMIC_ACLS, align 4
  %22 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @TA_DEMO_MODE_WRITE_PROTECT, align 4
  %25 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @TA_PROD_MODE_WRITE_PROTECT, align 4
  %28 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %29 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @TA_DEMO_MODE_DISCOVERY, align 4
  %31 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %32 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @TA_DEFAULT_ERL, align 4
  %34 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @TA_DEFAULT_T10_PI, align 4
  %37 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %38 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @TA_DEFAULT_FABRIC_PROT_TYPE, align 4
  %40 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %41 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @TA_DEFAULT_TPG_ENABLED_SENDTARGETS, align 4
  %43 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %44 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @TA_DEFAULT_LOGIN_KEYS_WORKAROUND, align 4
  %46 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %3, align 8
  %47 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
