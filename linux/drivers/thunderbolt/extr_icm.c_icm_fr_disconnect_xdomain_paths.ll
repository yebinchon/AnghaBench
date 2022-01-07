; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_disconnect_xdomain_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_disconnect_xdomain_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_xdomain = type { i32 }

@NHI_MAILBOX_DISCONNECT_PA = common dso_local global i64 0, align 8
@NHI_MAILBOX_DISCONNECT_PB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_xdomain*)* @icm_fr_disconnect_xdomain_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_fr_disconnect_xdomain_paths(%struct.tb* %0, %struct.tb_xdomain* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.tb_xdomain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.tb_xdomain* %1, %struct.tb_xdomain** %4, align 8
  %7 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %8 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @tb_phy_port_from_link(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @NHI_MAILBOX_DISCONNECT_PA, align 8
  store i64 %14, i64* %6, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @NHI_MAILBOX_DISCONNECT_PB, align 8
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.tb*, %struct.tb** %3, align 8
  %19 = getelementptr inbounds %struct.tb, %struct.tb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @nhi_mailbox_cmd(i32 %20, i64 %21, i32 1)
  %23 = call i32 @usleep_range(i32 10, i32 50)
  %24 = load %struct.tb*, %struct.tb** %3, align 8
  %25 = getelementptr inbounds %struct.tb, %struct.tb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @nhi_mailbox_cmd(i32 %26, i64 %27, i32 2)
  ret i32 0
}

declare dso_local i64 @tb_phy_port_from_link(i32) #1

declare dso_local i32 @nhi_mailbox_cmd(i32, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
