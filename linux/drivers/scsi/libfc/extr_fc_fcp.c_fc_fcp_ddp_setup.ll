; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_ddp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_ddp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.fc_lport.0*, i32, i32, i32)* }
%struct.fc_lport.0 = type opaque

@FC_SRB_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_fcp_ddp_setup(%struct.fc_fcp_pkt* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_lport*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %7 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %6, i32 0, i32 3
  %8 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  store %struct.fc_lport* %8, %struct.fc_lport** %5, align 8
  %9 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %10 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FC_SRB_READ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  %16 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %17 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %22 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (%struct.fc_lport.0*, i32, i32, i32)*, i64 (%struct.fc_lport.0*, i32, i32, i32)** %23, align 8
  %25 = icmp ne i64 (%struct.fc_lport.0*, i32, i32, i32)* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %28 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (%struct.fc_lport.0*, i32, i32, i32)*, i64 (%struct.fc_lport.0*, i32, i32, i32)** %29, align 8
  %31 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %32 = bitcast %struct.fc_lport* %31 to %struct.fc_lport.0*
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %35 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @scsi_sglist(i32 %36)
  %38 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %39 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @scsi_sg_count(i32 %40)
  %42 = call i64 %30(%struct.fc_lport.0* %32, i32 %33, i32 %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %26
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %47 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %26
  br label %49

49:                                               ; preds = %48, %20, %15, %2
  ret void
}

declare dso_local i32 @scsi_sglist(i32) #1

declare dso_local i32 @scsi_sg_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
