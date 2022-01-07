; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_signal_discovery_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_signal_discovery_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.nvme_fc_lport = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nvme_fc_rport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FCNVME_TRADDR_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FC_EVENT=nvmediscovery\00", align 1
@FC_PORT_ROLE_NVME_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"NVMEFC_HOST_TRADDR=nn-0x%016llx:pn-0x%016llx\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"NVMEFC_TRADDR=nn-0x%016llx:pn-0x%016llx\00", align 1
@fc_udev_device = common dso_local global %struct.TYPE_6__* null, align 8
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_lport*, %struct.nvme_fc_rport*)* @nvme_fc_signal_discovery_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_signal_discovery_scan(%struct.nvme_fc_lport* %0, %struct.nvme_fc_rport* %1) #0 {
  %3 = alloca %struct.nvme_fc_lport*, align 8
  %4 = alloca %struct.nvme_fc_rport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8*], align 16
  %9 = alloca i32, align 4
  store %struct.nvme_fc_lport* %0, %struct.nvme_fc_lport** %3, align 8
  store %struct.nvme_fc_rport* %1, %struct.nvme_fc_rport** %4, align 8
  %10 = load i32, i32* @FCNVME_TRADDR_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @FCNVME_TRADDR_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* %13, i8** %18, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %16, i8** %19, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* null, i8** %20, align 8
  %21 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FC_PORT_ROLE_NVME_DISCOVERY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %55

29:                                               ; preds = %2
  %30 = trunc i64 %11 to i32
  %31 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snprintf(i8* %13, i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38)
  %40 = trunc i64 %15 to i32
  %41 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %4, align 8
  %42 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %4, align 8
  %46 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snprintf(i8* %16, i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fc_udev_device, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* @KOBJ_CHANGE, align 4
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %54 = call i32 @kobject_uevent_env(i32* %51, i32 %52, i8** %53)
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %29, %28
  %56 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %9, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
