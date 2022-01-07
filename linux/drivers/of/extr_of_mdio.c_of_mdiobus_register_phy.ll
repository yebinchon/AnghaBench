; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_mdiobus_register_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_mdiobus_register_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32*, i32, i32 }
%struct.device_node = type { i32 }
%struct.phy_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.device_node* }

@.str = private unnamed_addr constant [27 x i8] c"ethernet-phy-ieee802.3-c45\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"broken-turn-around\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"reset-assert-us\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"reset-deassert-us\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"registered phy %pOFn at address %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, %struct.device_node*, i64)* @of_mdiobus_register_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_mdiobus_register_phy(%struct.mii_bus* %0, %struct.device_node* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i32 @of_device_is_compatible(%struct.device_node* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32 @of_get_phy_id(%struct.device_node* %17, i64* %11)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call %struct.phy_device* @phy_device_create(%struct.mii_bus* %21, i64 %22, i64 %23, i32 0, i32* null)
  store %struct.phy_device* %24, %struct.phy_device** %8, align 8
  br label %30

25:                                               ; preds = %16, %3
  %26 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.phy_device* @get_phy_device(%struct.mii_bus* %26, i64 %27, i32 %28)
  store %struct.phy_device* %29, %struct.phy_device** %8, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %32 = call i64 @IS_ERR(%struct.phy_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.phy_device* %35)
  store i32 %36, i32* %4, align 4
  br label %122

37:                                               ; preds = %30
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = call i32 @of_irq_get(%struct.device_node* %38, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @EPROBE_DEFER, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %46 = call i32 @phy_device_free(%struct.phy_device* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %122

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %57 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  br label %70

61:                                               ; preds = %48
  %62 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %63 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %61, %51
  %71 = load %struct.device_node*, %struct.device_node** %6, align 8
  %72 = call i64 @of_property_read_bool(%struct.device_node* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 1, %76
  %78 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %79 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %74, %70
  %83 = load %struct.device_node*, %struct.device_node** %6, align 8
  %84 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = call i32 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %86)
  %88 = load %struct.device_node*, %struct.device_node** %6, align 8
  %89 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %90 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = call i32 @of_property_read_u32(%struct.device_node* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %91)
  %93 = load %struct.device_node*, %struct.device_node** %6, align 8
  %94 = call i32 @of_node_get(%struct.device_node* %93)
  %95 = load %struct.device_node*, %struct.device_node** %6, align 8
  %96 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %97 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store %struct.device_node* %95, %struct.device_node** %99, align 8
  %100 = load %struct.device_node*, %struct.device_node** %6, align 8
  %101 = call i32 @of_fwnode_handle(%struct.device_node* %100)
  %102 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %103 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 8
  %106 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %107 = call i32 @phy_device_register(%struct.phy_device* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %82
  %111 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %112 = call i32 @phy_device_free(%struct.phy_device* %111)
  %113 = load %struct.device_node*, %struct.device_node** %6, align 8
  %114 = call i32 @of_node_put(%struct.device_node* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %122

116:                                              ; preds = %82
  %117 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %118 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %117, i32 0, i32 2
  %119 = load %struct.device_node*, %struct.device_node** %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @dev_dbg(i32* %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %119, i64 %120)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %116, %110, %44, %34
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_get_phy_id(%struct.device_node*, i64*) #1

declare dso_local %struct.phy_device* @phy_device_create(%struct.mii_bus*, i64, i64, i32, i32*) #1

declare dso_local %struct.phy_device* @get_phy_device(%struct.mii_bus*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32 @phy_device_free(%struct.phy_device*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i32 @phy_device_register(%struct.phy_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.device_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
