; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c_uwb_rc_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_dev_addr = type { i32* }
%struct.uwb_mac_addr = type { i32* }
%struct.uwb_rc_evt_dev_addr_mgmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, i8*, i32)* @uwb_rc_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_addr_set(%struct.uwb_rc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uwb_dev_addr*, align 8
  %11 = alloca %struct.uwb_mac_addr*, align 8
  %12 = alloca %struct.uwb_rc_evt_dev_addr_mgmt, align 4
  %13 = alloca i32*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.uwb_dev_addr*
  store %struct.uwb_dev_addr* %15, %struct.uwb_dev_addr** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.uwb_mac_addr*
  store %struct.uwb_mac_addr* %17, %struct.uwb_mac_addr** %11, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %31 [
    i32 129, label %21
    i32 128, label %25
  ]

21:                                               ; preds = %3
  %22 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %10, align 8
  %23 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %13, align 8
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.uwb_mac_addr*, %struct.uwb_mac_addr** %11, align 8
  %27 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, 2
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %25, %21
  %34 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @uwb_rc_dev_addr_mgmt(%struct.uwb_rc* %34, i32 %35, i32* %36, %struct.uwb_rc_evt_dev_addr_mgmt* %12)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @uwb_rc_dev_addr_mgmt(%struct.uwb_rc*, i32, i32*, %struct.uwb_rc_evt_dev_addr_mgmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
