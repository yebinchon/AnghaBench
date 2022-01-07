; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_csmi_ioctl_tunnel_comp_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_csmi_ioctl_tunnel_comp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)*, %struct.TYPE_10__, %struct.TYPE_7__*, i32 }
%struct.esas2r_adapter.0 = type opaque
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_csmi_ioctl_tunnel_comp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_csmi_ioctl_tunnel_comp_cb(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %5 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %6 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le16_to_cpu(i32 %10)
  %12 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %13 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %15 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cpu_to_le32(i32 %19)
  %21 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %22 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %20
  store i32 %27, i32* %25, align 4
  %28 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %29 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %28, i32 0, i32 0
  %30 = load i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)*, i32 (%struct.esas2r_adapter.0*, %struct.esas2r_request*)** %29, align 8
  %31 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %32 = bitcast %struct.esas2r_adapter* %31 to %struct.esas2r_adapter.0*
  %33 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %34 = call i32 %30(%struct.esas2r_adapter.0* %32, %struct.esas2r_request* %33)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
