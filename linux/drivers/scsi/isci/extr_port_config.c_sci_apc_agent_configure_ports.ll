; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_apc_agent_configure_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_apc_agent_configure_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.isci_port* }
%struct.isci_port = type { i32, i32 }
%struct.sci_port_configuration_agent = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.isci_phy = type { i64 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*, %struct.sci_port_configuration_agent*, %struct.isci_phy*, i32)* @sci_apc_agent_configure_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_apc_agent_configure_ports(%struct.isci_host* %0, %struct.sci_port_configuration_agent* %1, %struct.isci_phy* %2, i32 %3) #0 {
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.sci_port_configuration_agent*, align 8
  %7 = alloca %struct.isci_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.isci_port*, align 8
  %12 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %5, align 8
  store %struct.sci_port_configuration_agent* %1, %struct.sci_port_configuration_agent** %6, align 8
  store %struct.isci_phy* %2, %struct.isci_phy** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 129, i32* %12, align 4
  %13 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %14 = load %struct.isci_phy*, %struct.isci_phy** %7, align 8
  %15 = call %struct.isci_port* @sci_port_configuration_agent_find_port(%struct.isci_host* %13, %struct.isci_phy* %14)
  store %struct.isci_port* %15, %struct.isci_port** %11, align 8
  %16 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %17 = icmp ne %struct.isci_port* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %20 = load %struct.isci_phy*, %struct.isci_phy** %7, align 8
  %21 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @sci_port_is_valid_phy_assignment(%struct.isci_port* %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 130, i32* %12, align 4
  br label %27

26:                                               ; preds = %18
  store i32 129, i32* %12, align 4
  br label %27

27:                                               ; preds = %26, %25
  br label %106

28:                                               ; preds = %4
  %29 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %30 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.isci_phy*, %struct.isci_phy** %7, align 8
  %33 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %102, %28
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %41 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.isci_phy*, %struct.isci_phy** %7, align 8
  %44 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ule i64 %39, %48
  br i1 %49, label %50, label %105

50:                                               ; preds = %38
  %51 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %52 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %51, i32 0, i32 0
  %53 = load %struct.isci_port*, %struct.isci_port** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %53, i64 %54
  store %struct.isci_port* %55, %struct.isci_port** %11, align 8
  %56 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %57 = load %struct.isci_phy*, %struct.isci_phy** %7, align 8
  %58 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @sci_port_is_valid_phy_assignment(%struct.isci_port* %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %50
  %63 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %64 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.isci_phy*, %struct.isci_phy** %7, align 8
  %67 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = shl i32 1, %69
  %71 = icmp sgt i32 %65, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 129, i32* %12, align 4
  br label %105

73:                                               ; preds = %62
  %74 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %75 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.isci_phy*, %struct.isci_phy** %7, align 8
  %79 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 128
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 130, i32* %12, align 4
  br label %86

86:                                               ; preds = %85, %82
  br label %105

87:                                               ; preds = %73
  %88 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %89 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 128, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %87
  br label %101

94:                                               ; preds = %50
  %95 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %96 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 129, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %94
  br label %101

101:                                              ; preds = %100, %93
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %9, align 8
  br label %38

105:                                              ; preds = %86, %72, %38
  br label %106

106:                                              ; preds = %105, %27
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 128
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 130, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %109, %106
  %114 = load i32, i32* %12, align 4
  switch i32 %114, label %138 [
    i32 130, label %115
    i32 128, label %133
    i32 129, label %137
  ]

115:                                              ; preds = %113
  %116 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  %117 = load %struct.isci_phy*, %struct.isci_phy** %7, align 8
  %118 = call i32 @sci_port_add_phy(%struct.isci_port* %116, %struct.isci_phy* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @SCI_SUCCESS, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %115
  %123 = load %struct.isci_phy*, %struct.isci_phy** %7, align 8
  %124 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = shl i32 1, %126
  %128 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %129 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %122, %115
  br label %139

133:                                              ; preds = %113
  %134 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %6, align 8
  %135 = load i32, i32* @SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION, align 4
  %136 = call i32 @sci_apc_agent_start_timer(%struct.sci_port_configuration_agent* %134, i32 %135)
  br label %139

137:                                              ; preds = %113
  br label %138

138:                                              ; preds = %113, %137
  br label %139

139:                                              ; preds = %138, %133, %132
  ret void
}

declare dso_local %struct.isci_port* @sci_port_configuration_agent_find_port(%struct.isci_host*, %struct.isci_phy*) #1

declare dso_local i64 @sci_port_is_valid_phy_assignment(%struct.isci_port*, i64) #1

declare dso_local i32 @sci_port_add_phy(%struct.isci_port*, %struct.isci_phy*) #1

declare dso_local i32 @sci_apc_agent_start_timer(%struct.sci_port_configuration_agent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
