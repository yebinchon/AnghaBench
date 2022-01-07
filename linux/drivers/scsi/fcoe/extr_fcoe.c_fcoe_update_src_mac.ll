; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_update_src_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_update_src_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fcoe_port = type { i32*, %struct.fcoe_interface* }
%struct.fcoe_interface = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, i32*)* @fcoe_update_src_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_update_src_mac(%struct.fc_lport* %0, i32* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fcoe_port*, align 8
  %6 = alloca %struct.fcoe_interface*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %7)
  store %struct.fcoe_port* %8, %struct.fcoe_port** %5, align 8
  %9 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %10 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %9, i32 0, i32 1
  %11 = load %struct.fcoe_interface*, %struct.fcoe_interface** %10, align 8
  store %struct.fcoe_interface* %11, %struct.fcoe_interface** %6, align 8
  %12 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %13 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @is_zero_ether_addr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.fcoe_interface*, %struct.fcoe_interface** %6, align 8
  %19 = getelementptr inbounds %struct.fcoe_interface, %struct.fcoe_interface* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %22 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @dev_uc_del(i32 %20, i32* %23)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @is_zero_ether_addr(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load %struct.fcoe_interface*, %struct.fcoe_interface** %6, align 8
  %31 = getelementptr inbounds %struct.fcoe_interface, %struct.fcoe_interface* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @dev_uc_add(i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load %struct.fcoe_port*, %struct.fcoe_port** %5, align 8
  %37 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32* %38, i32* %39, i32 %40)
  ret void
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @dev_uc_del(i32, i32*) #1

declare dso_local i32 @dev_uc_add(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
