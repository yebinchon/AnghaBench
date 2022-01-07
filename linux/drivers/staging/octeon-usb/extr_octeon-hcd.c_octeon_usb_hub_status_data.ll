; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_port_status = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @octeon_usb_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_usb_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.octeon_hcd*, align 8
  %6 = alloca %struct.cvmx_usb_port_status, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cvmx_usb_port_status, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd* %9)
  store %struct.octeon_hcd* %10, %struct.octeon_hcd** %5, align 8
  %11 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %12 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %16 = call i32 @cvmx_usb_get_status(%struct.octeon_hcd* %15)
  %17 = getelementptr inbounds %struct.cvmx_usb_port_status, %struct.cvmx_usb_port_status* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = bitcast %struct.cvmx_usb_port_status* %6 to i8*
  %19 = bitcast %struct.cvmx_usb_port_status* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = getelementptr inbounds %struct.cvmx_usb_port_status, %struct.cvmx_usb_port_status* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 1
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %27, i8* %29, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cvmx_usb_get_status(%struct.octeon_hcd*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
