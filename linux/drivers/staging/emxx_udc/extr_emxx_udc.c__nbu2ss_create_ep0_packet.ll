; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_create_ep0_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_create_ep0_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, %struct.nbu2ss_udc*, i32, i32, i64, i8* }

@_nbu2ss_ep0_complete = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*, i8*, i32)* @_nbu2ss_create_ep0_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_create_ep0_packet(%struct.nbu2ss_udc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %9 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 7
  store i8* %7, i8** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %14 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 8
  %17 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %18 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %22 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @_nbu2ss_ep0_complete, align 4
  %26 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %27 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @EINPROGRESS, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %33 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  store i32 %31, i32* %35, align 8
  %36 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %37 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %38 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store %struct.nbu2ss_udc* %36, %struct.nbu2ss_udc** %40, align 8
  %41 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %42 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
