; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_netdev_features_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_netdev_features_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.net_device = type { i32, i64, i64 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_FCOE_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Supports FCCRC offload\0A\00", align 1
@NETIF_F_FSO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Supports LSO for max len 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Supports LRO for max xid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.net_device*)* @fcoe_netdev_features_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_netdev_features_change(%struct.fc_lport* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %6 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %5, i32 0, i32 4
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NETIF_F_SG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %19 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NETIF_F_FCOE_CRC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %35

32:                                               ; preds = %20
  %33 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %34 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NETIF_F_FSO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %44 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %49 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %48, i32 0, i32 6
  store i64 %47, i64* %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %52 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  br label %60

55:                                               ; preds = %35
  %56 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %57 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %59 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %42
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %67 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %72 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %71, i32 0, i32 5
  store i64 %70, i64* %72, align 8
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %75 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (%struct.net_device*, i8*, ...) @FCOE_NETDEV_DBG(%struct.net_device* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  br label %83

78:                                               ; preds = %60
  %79 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %80 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %79, i32 0, i32 3
  store i32 0, i32* %80, align 4
  %81 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %82 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %65
  %84 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %85 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %84, i32 0, i32 4
  %86 = call i32 @mutex_unlock(i32* %85)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FCOE_NETDEV_DBG(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
