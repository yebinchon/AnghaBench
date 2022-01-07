; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.hostif_request = type { %struct.TYPE_4__, i32, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, %struct.hostif_request*)* @init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_request(%struct.ks_wlan_private* %0, %struct.hostif_request* %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca %struct.hostif_request*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store %struct.hostif_request* %1, %struct.hostif_request** %4, align 8
  %5 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %6 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @cpu_to_le16(i32 %8)
  %10 = load %struct.hostif_request*, %struct.hostif_request** %4, align 8
  %11 = getelementptr inbounds %struct.hostif_request, %struct.hostif_request* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %13 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.hostif_request*, %struct.hostif_request** %4, align 8
  %18 = getelementptr inbounds %struct.hostif_request, %struct.hostif_request* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %20 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.hostif_request*, %struct.hostif_request** %4, align 8
  %25 = getelementptr inbounds %struct.hostif_request, %struct.hostif_request* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %27 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hostif_request*, %struct.hostif_request** %4, align 8
  %32 = getelementptr inbounds %struct.hostif_request, %struct.hostif_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %35 = call i32 @ks_wlan_cap(%struct.ks_wlan_private* %34)
  %36 = load %struct.hostif_request*, %struct.hostif_request** %4, align 8
  %37 = getelementptr inbounds %struct.hostif_request, %struct.hostif_request* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hostif_request*, %struct.hostif_request** %4, align 8
  %39 = getelementptr inbounds %struct.hostif_request, %struct.hostif_request* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %44 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %50 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i32* %42, i32* %48, i32 %53)
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ks_wlan_cap(%struct.ks_wlan_private*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
