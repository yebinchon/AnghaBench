; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.ifreq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ioce%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_do_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_card*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  store %struct.qeth_card* %13, %struct.qeth_card** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %15 = icmp ne %struct.qeth_card* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %112

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %80 [
    i32 130, label %21
    i32 129, label %28
    i32 132, label %46
    i32 131, label %51
    i32 128, label %73
  ]

21:                                               ; preds = %19
  %22 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %23 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @qeth_snmp_command(%struct.qeth_card* %22, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %103

28:                                               ; preds = %19
  %29 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %30 = call i32 @IS_OSD(%struct.qeth_card* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %34 = call i32 @IS_OSM(%struct.qeth_card* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %38 = call i32 @IS_OSX(%struct.qeth_card* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %32, %28
  %41 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %42 = call i32 @IS_VM_NIC(%struct.qeth_card* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %112

45:                                               ; preds = %40, %36
  store i32 0, i32* %4, align 4
  br label %112

46:                                               ; preds = %19
  %47 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %48 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %47)
  store %struct.mii_ioctl_data* %48, %struct.mii_ioctl_data** %9, align 8
  %49 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %50 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %103

51:                                               ; preds = %19
  %52 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %53 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %52)
  store %struct.mii_ioctl_data* %53, %struct.mii_ioctl_data** %9, align 8
  %54 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %55 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %72

61:                                               ; preds = %51
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %64 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %67 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qeth_mdio_read(%struct.net_device* %62, i32 %65, i32 %68)
  %70 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %71 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %58
  br label %103

73:                                               ; preds = %19
  %74 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %75 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %76 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qeth_query_oat_command(%struct.qeth_card* %74, i32 %78)
  store i32 %79, i32* %10, align 4
  br label %103

80:                                               ; preds = %19
  %81 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %82 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = bitcast {}** %84 to i32 (%struct.net_device*, %struct.ifreq*, i32)**
  %86 = load i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.net_device*, %struct.ifreq*, i32)* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %90 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = bitcast {}** %92 to i32 (%struct.net_device*, %struct.ifreq*, i32)**
  %94 = load i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)** %93, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 %94(%struct.net_device* %95, %struct.ifreq* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  br label %102

99:                                               ; preds = %80
  %100 = load i32, i32* @EOPNOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %99, %88
  br label %103

103:                                              ; preds = %102, %73, %72, %46, %21
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %107, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %45, %44, %16
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @qeth_snmp_command(%struct.qeth_card*, i32) #1

declare dso_local i32 @IS_OSD(%struct.qeth_card*) #1

declare dso_local i32 @IS_OSM(%struct.qeth_card*) #1

declare dso_local i32 @IS_OSX(%struct.qeth_card*) #1

declare dso_local i32 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @qeth_mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @qeth_query_oat_command(%struct.qeth_card*, i32) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
