; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_displayport_vdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_displayport_vdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.ucsi_dp = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"firmware doesn't support alternate mode overriding\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_TYPEC_DP_SID = common dso_local global i32 0, align 4
@USB_TYPEC_DP_MODE = common dso_local global i32 0, align 4
@CMDT_RSP_NAK = common dso_local global i32 0, align 4
@CMDT_RSP_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_altmode*, i32, i32*, i32)* @ucsi_displayport_vdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_displayport_vdm(%struct.typec_altmode* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.typec_altmode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucsi_dp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.typec_altmode*, align 8
  store %struct.typec_altmode* %0, %struct.typec_altmode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %15 = call %struct.ucsi_dp* @typec_altmode_get_drvdata(%struct.typec_altmode* %14)
  store %struct.ucsi_dp* %15, %struct.ucsi_dp** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @PD_VDO_CMDT(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @PD_VDO_CMD(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %21 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %26 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %4
  %30 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %31 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %36 = call %struct.typec_altmode* @typec_altmode_get_partner(%struct.typec_altmode* %35)
  store %struct.typec_altmode* %36, %struct.typec_altmode** %13, align 8
  %37 = load %struct.typec_altmode*, %struct.typec_altmode** %13, align 8
  %38 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %37, i32 0, i32 0
  %39 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %41 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %136

47:                                               ; preds = %29, %4
  %48 = load i32, i32* %11, align 4
  switch i32 %48, label %129 [
    i32 130, label %49
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* @USB_TYPEC_DP_SID, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @VDO(i32 %50, i32 1, i32 %51)
  %53 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %54 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @USB_TYPEC_DP_MODE, align 4
  %56 = call i32 @VDO_OPOS(i32 %55)
  %57 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %58 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %12, align 4
  switch i32 %61, label %118 [
    i32 128, label %62
    i32 129, label %81
  ]

62:                                               ; preds = %49
  %63 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %64 = call i32 @ucsi_displayport_status_update(%struct.ucsi_dp* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* @CMDT_RSP_NAK, align 4
  %68 = call i32 @VDO_CMDT(i32 %67)
  %69 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %70 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %80

73:                                               ; preds = %62
  %74 = load i32, i32* @CMDT_RSP_ACK, align 4
  %75 = call i32 @VDO_CMDT(i32 %74)
  %76 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %77 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %66
  br label %125

81:                                               ; preds = %49
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %85 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %88 = call i32 @ucsi_displayport_configure(%struct.ucsi_dp* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load i32, i32* @CMDT_RSP_NAK, align 4
  %92 = call i32 @VDO_CMDT(i32 %91)
  %93 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %94 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %117

97:                                               ; preds = %81
  %98 = load i32, i32* @CMDT_RSP_ACK, align 4
  %99 = call i32 @VDO_CMDT(i32 %98)
  %100 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %101 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %105 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %110 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = call i32 @ucsi_altmode_update_active(%struct.TYPE_4__* %111)
  br label %116

113:                                              ; preds = %97
  %114 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %115 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116, %90
  br label %125

118:                                              ; preds = %49
  %119 = load i32, i32* @CMDT_RSP_ACK, align 4
  %120 = call i32 @VDO_CMDT(i32 %119)
  %121 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %122 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %118, %117, %80
  %126 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %127 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %126, i32 0, i32 2
  %128 = call i32 @schedule_work(i32* %127)
  br label %130

129:                                              ; preds = %47
  br label %130

130:                                              ; preds = %129, %125
  %131 = load %struct.ucsi_dp*, %struct.ucsi_dp** %10, align 8
  %132 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %130, %34
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.ucsi_dp* @typec_altmode_get_drvdata(%struct.typec_altmode*) #1

declare dso_local i32 @PD_VDO_CMDT(i32) #1

declare dso_local i32 @PD_VDO_CMD(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.typec_altmode* @typec_altmode_get_partner(%struct.typec_altmode*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @VDO(i32, i32, i32) #1

declare dso_local i32 @VDO_OPOS(i32) #1

declare dso_local i32 @ucsi_displayport_status_update(%struct.ucsi_dp*) #1

declare dso_local i32 @VDO_CMDT(i32) #1

declare dso_local i32 @ucsi_displayport_configure(%struct.ucsi_dp*) #1

declare dso_local i32 @ucsi_altmode_update_active(%struct.TYPE_4__*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
