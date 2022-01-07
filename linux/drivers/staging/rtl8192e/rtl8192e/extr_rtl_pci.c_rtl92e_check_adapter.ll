; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_pci.c_rtl92e_check_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_pci.c_rtl92e_check_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"Adapter(8192 PCI-E) is found - DeviceID=%x\0A\00", align 1
@NIC_8192E = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Adapter(8192SE) is found - DeviceID=%x\0A\00", align 1
@NIC_8192SE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"UNKNOWN nic type(%4x:%4x)\0A\00", align 1
@NIC_UNKNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"Detect info(%x) and hardware info(%x) not match!\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Please select proper driver before install!!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92e_check_adapter(%struct.pci_dev* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call i64 @rtllib_priv(%struct.net_device* %10)
  %12 = inttoptr i64 %11 to %struct.r8192_priv*
  store %struct.r8192_priv* %12, %struct.r8192_priv** %6, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_read_config_word(%struct.pci_dev* %19, i32 60, i32* %9)
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 33170
  br i1 %29, label %30, label %62

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %48 [
    i32 129, label %32
    i32 128, label %40
  ]

32:                                               ; preds = %30
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_info(i32* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @NIC_8192E, align 8
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %61

40:                                               ; preds = %30
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_info(i32* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @NIC_8192SE, align 8
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %61

48:                                               ; preds = %30
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 2
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_info(i32* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i64, i64* @NIC_UNKNOWN, align 8
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  store i32 0, i32* %3, align 4
  br label %91

61:                                               ; preds = %40, %32
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %62
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 2
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32*, i8*, ...) @dev_info(i32* %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %79, i64 %82)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 2
  %86 = call i32 (i32*, i8*, ...) @dev_info(i32* %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %91

87:                                               ; preds = %62
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = call i32 @_rtl92e_parse_pci_configuration(%struct.pci_dev* %88, %struct.net_device* %89)
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %72, %48
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @_rtl92e_parse_pci_configuration(%struct.pci_dev*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
