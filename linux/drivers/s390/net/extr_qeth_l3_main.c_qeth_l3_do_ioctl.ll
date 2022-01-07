; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i32 }
%struct.ifreq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qeth_arp_cache_entry = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IPA_CMD_ASS_ARP_ADD_ENTRY = common dso_local global i32 0, align 4
@IPA_CMD_ASS_ARP_REMOVE_ENTRY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @qeth_l3_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_do_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_card*, align 8
  %9 = alloca %struct.qeth_arp_cache_entry, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  store %struct.qeth_card* %14, %struct.qeth_card** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %82 [
    i32 128, label %16
    i32 130, label %30
    i32 132, label %44
    i32 129, label %44
    i32 131, label %72
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @CAP_NET_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  br label %85

23:                                               ; preds = %16
  %24 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %25 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qeth_l3_arp_set_no_entries(%struct.qeth_card* %24, i32 %28)
  store i32 %29, i32* %11, align 4
  br label %85

30:                                               ; preds = %3
  %31 = load i32, i32* @CAP_NET_ADMIN, align 4
  %32 = call i32 @capable(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %85

37:                                               ; preds = %30
  %38 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %39 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @qeth_l3_arp_query(%struct.qeth_card* %38, i32 %42)
  store i32 %43, i32* %11, align 4
  br label %85

44:                                               ; preds = %3, %3
  %45 = load i32, i32* @CAP_NET_ADMIN, align 4
  %46 = call i32 @capable(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %87

51:                                               ; preds = %44
  %52 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %53 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @copy_from_user(%struct.qeth_arp_cache_entry* %9, i32 %54, i32 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %87

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 132
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @IPA_CMD_ASS_ARP_ADD_ENTRY, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @IPA_CMD_ASS_ARP_REMOVE_ENTRY, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %10, align 4
  %69 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @qeth_l3_arp_modify_entry(%struct.qeth_card* %69, %struct.qeth_arp_cache_entry* %9, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %87

72:                                               ; preds = %3
  %73 = load i32, i32* @CAP_NET_ADMIN, align 4
  %74 = call i32 @capable(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @EPERM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %85

79:                                               ; preds = %72
  %80 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %81 = call i32 @qeth_l3_arp_flush_cache(%struct.qeth_card* %80)
  store i32 %81, i32* %11, align 4
  br label %85

82:                                               ; preds = %3
  %83 = load i32, i32* @EOPNOTSUPP, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %79, %76, %37, %34, %23, %20
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %67, %57, %48
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @qeth_l3_arp_set_no_entries(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_arp_query(%struct.qeth_card*, i32) #1

declare dso_local i32 @copy_from_user(%struct.qeth_arp_cache_entry*, i32, i32) #1

declare dso_local i32 @qeth_l3_arp_modify_entry(%struct.qeth_card*, %struct.qeth_arp_cache_entry*, i32) #1

declare dso_local i32 @qeth_l3_arp_flush_cache(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
