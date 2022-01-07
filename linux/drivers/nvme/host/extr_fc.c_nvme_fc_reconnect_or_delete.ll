; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_reconnect_or_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_reconnect_or_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.TYPE_5__, i32, i32, %struct.nvme_fc_rport* }
%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.nvme_fc_rport = type { i64, %struct.nvme_fc_remote_port }
%struct.nvme_fc_remote_port = type { i64, i32 }

@HZ = common dso_local global i64 0, align 8
@NVME_CTRL_CONNECTING = common dso_local global i64 0, align 8
@FC_OBJSTATE_ONLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"NVME-FC{%d}: reset: Reconnect attempt failed (%d)\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"NVME-FC{%d}: Reconnect attempt in %ld seconds\0A\00", align 1
@nvme_wq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"NVME-FC{%d}: Max reconnect attempts (%d) reached.\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"NVME-FC{%d}: dev_loss_tmo (%d) expired while waiting for remoteport connectivity.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_ctrl*, i32)* @nvme_fc_reconnect_or_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_reconnect_or_delete(%struct.nvme_fc_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_fc_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_fc_rport*, align 8
  %6 = alloca %struct.nvme_fc_remote_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %9, i32 0, i32 3
  %11 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %10, align 8
  store %struct.nvme_fc_rport* %11, %struct.nvme_fc_rport** %5, align 8
  %12 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %12, i32 0, i32 1
  store %struct.nvme_fc_remote_port* %13, %struct.nvme_fc_remote_port** %6, align 8
  %14 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HZ, align 8
  %21 = mul i64 %19, %20
  store i64 %21, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %22 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NVME_CTRL_CONNECTING, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %139

29:                                               ; preds = %2
  %30 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %31 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FC_OBJSTATE_ONLINE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @dev_info(i32 %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %44)
  br label %55

46:                                               ; preds = %29
  %47 = load i64, i64* @jiffies, align 8
  %48 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %49 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @time_after_eq(i64 %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %46
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %103

58:                                               ; preds = %55
  %59 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %59, i32 0, i32 0
  %61 = call i64 @nvmf_should_reconnect(%struct.TYPE_5__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %58
  %64 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %65 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FC_OBJSTATE_ONLINE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %71 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %75 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @HZ, align 8
  %79 = udiv i64 %77, %78
  %80 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %76, i64 %79)
  br label %97

81:                                               ; preds = %63
  %82 = load i64, i64* @jiffies, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %86 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @time_after(i64 %84, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %5, align 8
  %92 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @jiffies, align 8
  %95 = sub i64 %93, %94
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %90, %81
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32, i32* @nvme_wq, align 4
  %99 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %100 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %99, i32 0, i32 2
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @queue_delayed_work(i32 %98, i32* %100, i64 %101)
  br label %139

103:                                              ; preds = %58, %55
  %104 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %105 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @FC_OBJSTATE_ONLINE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %111 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %115 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %118 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_warn(i32 %113, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %120)
  br label %134

122:                                              ; preds = %103
  %123 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %124 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %128 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %131 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_warn(i32 %126, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %122, %109
  %135 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %136 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %135, i32 0, i32 0
  %137 = call i32 @nvme_delete_ctrl(%struct.TYPE_5__* %136)
  %138 = call i32 @WARN_ON(i32 %137)
  br label %139

139:                                              ; preds = %28, %134, %97
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i64 @nvmf_should_reconnect(%struct.TYPE_5__*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvme_delete_ctrl(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
