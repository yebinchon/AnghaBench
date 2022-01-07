; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_wka_ports_force_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_wka_ports_force_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_wka_ports = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_fc_wka_ports_force_offline(%struct.zfcp_fc_wka_ports* %0) #0 {
  %2 = alloca %struct.zfcp_fc_wka_ports*, align 8
  store %struct.zfcp_fc_wka_ports* %0, %struct.zfcp_fc_wka_ports** %2, align 8
  %3 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %2, align 8
  %4 = icmp ne %struct.zfcp_fc_wka_ports* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_fc_wka_ports, %struct.zfcp_fc_wka_ports* %7, i32 0, i32 3
  %9 = call i32 @zfcp_fc_wka_port_force_offline(i32* %8)
  %10 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %2, align 8
  %11 = getelementptr inbounds %struct.zfcp_fc_wka_ports, %struct.zfcp_fc_wka_ports* %10, i32 0, i32 2
  %12 = call i32 @zfcp_fc_wka_port_force_offline(i32* %11)
  %13 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_fc_wka_ports, %struct.zfcp_fc_wka_ports* %13, i32 0, i32 1
  %15 = call i32 @zfcp_fc_wka_port_force_offline(i32* %14)
  %16 = load %struct.zfcp_fc_wka_ports*, %struct.zfcp_fc_wka_ports** %2, align 8
  %17 = getelementptr inbounds %struct.zfcp_fc_wka_ports, %struct.zfcp_fc_wka_ports* %16, i32 0, i32 0
  %18 = call i32 @zfcp_fc_wka_port_force_offline(i32* %17)
  br label %19

19:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @zfcp_fc_wka_port_force_offline(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
