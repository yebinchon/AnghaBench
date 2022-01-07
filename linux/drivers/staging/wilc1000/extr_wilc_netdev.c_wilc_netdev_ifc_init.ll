; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_netdev_ifc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_netdev_ifc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32, i64, i64, %struct.wilc*, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.net_device*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, i32*, %struct.wilc_vif*, i32, %struct.TYPE_3__* }
%struct.wilc = type { i64, %struct.wilc_vif**, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@wilc_netdev_ops = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wilc_vif* @wilc_netdev_ifc_init(%struct.wilc* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wilc_vif*, align 8
  %7 = alloca %struct.wilc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.wilc_vif*, align 8
  %14 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call %struct.net_device* @alloc_etherdev(i32 72)
  store %struct.net_device* %15, %struct.net_device** %12, align 8
  %16 = load %struct.net_device*, %struct.net_device** %12, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.wilc_vif* @ERR_PTR(i32 %20)
  store %struct.wilc_vif* %21, %struct.wilc_vif** %6, align 8
  br label %118

22:                                               ; preds = %5
  %23 = load %struct.net_device*, %struct.net_device** %12, align 8
  %24 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %23)
  store %struct.wilc_vif* %24, %struct.wilc_vif** %13, align 8
  %25 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %26 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %12, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 4
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %12, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strcpy(i32 %32, i8* %33)
  %35 = load %struct.wilc*, %struct.wilc** %7, align 8
  %36 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %37 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %36, i32 0, i32 3
  store %struct.wilc* %35, %struct.wilc** %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %12, align 8
  %39 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %40 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %39, i32 0, i32 5
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  %41 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %42 = load %struct.net_device*, %struct.net_device** %12, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 2
  store %struct.wilc_vif* %41, %struct.wilc_vif** %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %12, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  store i32* @wilc_netdev_ops, i32** %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %12, align 8
  %47 = load %struct.wilc*, %struct.wilc** %7, align 8
  %48 = getelementptr inbounds %struct.wilc, %struct.wilc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @wiphy_dev(i32 %49)
  %51 = call i32 @SET_NETDEV_DEV(%struct.net_device* %46, i32 %50)
  %52 = load %struct.wilc*, %struct.wilc** %7, align 8
  %53 = getelementptr inbounds %struct.wilc, %struct.wilc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %56 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %12, align 8
  %60 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %61 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store %struct.net_device* %59, %struct.net_device** %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %66 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %12, align 8
  %70 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %71 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store %struct.net_device* %69, %struct.net_device** %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %22
  %76 = load %struct.net_device*, %struct.net_device** %12, align 8
  %77 = call i32 @register_netdevice(%struct.net_device* %76)
  store i32 %77, i32* %14, align 4
  br label %81

78:                                               ; preds = %22
  %79 = load %struct.net_device*, %struct.net_device** %12, align 8
  %80 = call i32 @register_netdev(%struct.net_device* %79)
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.net_device*, %struct.net_device** %12, align 8
  %86 = call i32 @free_netdev(%struct.net_device* %85)
  %87 = load i32, i32* @EFAULT, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.wilc_vif* @ERR_PTR(i32 %88)
  store %struct.wilc_vif* %89, %struct.wilc_vif** %6, align 8
  br label %118

90:                                               ; preds = %81
  %91 = load %struct.net_device*, %struct.net_device** %12, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %95 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %97 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %98 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %97, i32 0, i32 3
  %99 = load %struct.wilc*, %struct.wilc** %98, align 8
  %100 = getelementptr inbounds %struct.wilc, %struct.wilc* %99, i32 0, i32 1
  %101 = load %struct.wilc_vif**, %struct.wilc_vif*** %100, align 8
  %102 = load %struct.wilc*, %struct.wilc** %7, align 8
  %103 = getelementptr inbounds %struct.wilc, %struct.wilc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.wilc_vif*, %struct.wilc_vif** %101, i64 %104
  store %struct.wilc_vif* %96, %struct.wilc_vif** %105, align 8
  %106 = load %struct.wilc*, %struct.wilc** %7, align 8
  %107 = getelementptr inbounds %struct.wilc, %struct.wilc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %110 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.wilc*, %struct.wilc** %7, align 8
  %112 = getelementptr inbounds %struct.wilc, %struct.wilc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %116 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  store %struct.wilc_vif* %117, %struct.wilc_vif** %6, align 8
  br label %118

118:                                              ; preds = %90, %84, %18
  %119 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  ret %struct.wilc_vif* %119
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.wilc_vif* @ERR_PTR(i32) #1

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_dev(i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
