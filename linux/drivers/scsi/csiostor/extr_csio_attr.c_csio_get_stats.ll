; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_host_statistics = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.csio_lnode = type { %struct.TYPE_3__, i32, %struct.fc_host_statistics }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64 }
%struct.csio_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.fw_fcoe_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CSIO_WORD_TO_BYTE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_host_statistics* (%struct.Scsi_Host*)* @csio_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_host_statistics* @csio_get_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.fc_host_statistics*, align 8
  %6 = alloca %struct.fw_fcoe_port_stats, align 4
  %7 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = call %struct.csio_lnode* @shost_priv(%struct.Scsi_Host* %8)
  store %struct.csio_lnode* %9, %struct.csio_lnode** %3, align 8
  %10 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %11 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %10)
  store %struct.csio_hw* %11, %struct.csio_hw** %4, align 8
  %12 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %13 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %12, i32 0, i32 2
  store %struct.fc_host_statistics* %13, %struct.fc_host_statistics** %5, align 8
  %14 = call i32 @memset(%struct.fw_fcoe_port_stats* %6, i32 0, i32 60)
  %15 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %16 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %17 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @csio_get_phy_port_stats(%struct.csio_hw* %15, i32 %18, %struct.fw_fcoe_port_stats* %6)
  %20 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be64_to_cpu(i32 %21)
  %23 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be64_to_cpu(i32 %24)
  %26 = add nsw i32 %22, %25
  %27 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be64_to_cpu(i32 %28)
  %30 = add nsw i32 %26, %29
  %31 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be64_to_cpu(i32 %32)
  %34 = add nsw i32 %30, %33
  %35 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %36 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be64_to_cpu(i32 %40)
  %42 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be64_to_cpu(i32 %43)
  %45 = add nsw i32 %41, %44
  %46 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be64_to_cpu(i32 %47)
  %49 = add nsw i32 %45, %48
  %50 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be64_to_cpu(i32 %51)
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* @CSIO_WORD_TO_BYTE, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %57 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be64_to_cpu(i32 %61)
  %63 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be64_to_cpu(i32 %64)
  %66 = add nsw i32 %62, %65
  %67 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be64_to_cpu(i32 %68)
  %70 = add nsw i32 %66, %69
  %71 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %72 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be64_to_cpu(i32 %76)
  %78 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be64_to_cpu(i32 %79)
  %81 = add nsw i32 %77, %80
  %82 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be64_to_cpu(i32 %83)
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* @CSIO_WORD_TO_BYTE, align 4
  %87 = sdiv i32 %85, %86
  %88 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %89 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = getelementptr inbounds %struct.fw_fcoe_port_stats, %struct.fw_fcoe_port_stats* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be64_to_cpu(i32 %93)
  %95 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %96 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %100 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %104 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %110 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %114 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 8
  %119 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %120 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %124 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  %129 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %130 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = ashr i32 %132, 20
  %134 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %135 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %139 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 20
  %143 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %144 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %148 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %152 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @jiffies, align 4
  %154 = call i64 @jiffies_to_msecs(i32 %153)
  %155 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %156 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %154, %158
  store i64 %159, i64* %7, align 8
  %160 = load i64, i64* %7, align 8
  %161 = call i32 @do_div(i64 %160, i32 1000)
  %162 = load i64, i64* %7, align 8
  %163 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  %164 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %163, i32 0, i32 7
  store i64 %162, i64* %164, align 8
  %165 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %5, align 8
  ret %struct.fc_host_statistics* %165
}

declare dso_local %struct.csio_lnode* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @memset(%struct.fw_fcoe_port_stats*, i32, i32) #1

declare dso_local i32 @csio_get_phy_port_stats(%struct.csio_hw*, i32, %struct.fw_fcoe_port_stats*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
