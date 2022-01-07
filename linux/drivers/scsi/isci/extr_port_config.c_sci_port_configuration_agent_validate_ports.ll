; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_port_configuration_agent_validate_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port_config.c_sci_port_configuration_agent_validate_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32* }
%struct.sci_port_configuration_agent = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sci_sas_address = type { i32 }

@SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*, %struct.sci_port_configuration_agent*)* @sci_port_configuration_agent_validate_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_port_configuration_agent_validate_ports(%struct.isci_host* %0, %struct.sci_port_configuration_agent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca %struct.sci_port_configuration_agent*, align 8
  %6 = alloca %struct.sci_sas_address, align 4
  %7 = alloca %struct.sci_sas_address, align 4
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store %struct.sci_port_configuration_agent* %1, %struct.sci_port_configuration_agent** %5, align 8
  %8 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %9 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %2
  %16 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %17 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %39, label %23

23:                                               ; preds = %15
  %24 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %25 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %33 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 3
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %23, %15, %2
  %40 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %40, i32* %3, align 4
  br label %178

41:                                               ; preds = %31
  %42 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %43 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %41
  %50 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %51 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %59 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %67 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %74, i32* %3, align 4
  br label %178

75:                                               ; preds = %65, %57, %49, %41
  %76 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %77 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %84, i32* %3, align 4
  br label %178

85:                                               ; preds = %75
  %86 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %87 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = call i32 @sci_phy_get_sas_address(i32* %89, %struct.sci_sas_address* %6)
  %91 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %92 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = call i32 @sci_phy_get_sas_address(i32* %94, %struct.sci_sas_address* %7)
  %96 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %7, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @sci_sas_address_compare(i32 %97, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %85
  %103 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %103, i32* %3, align 4
  br label %178

104:                                              ; preds = %85
  %105 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %106 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %104
  %113 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %114 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %140

120:                                              ; preds = %112
  %121 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %122 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = call i32 @sci_phy_get_sas_address(i32* %124, %struct.sci_sas_address* %6)
  %126 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %127 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = call i32 @sci_phy_get_sas_address(i32* %129, %struct.sci_sas_address* %7)
  %131 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %6, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %7, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @sci_sas_address_compare(i32 %132, i32 %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %120
  %138 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %138, i32* %3, align 4
  br label %178

139:                                              ; preds = %120
  br label %140

140:                                              ; preds = %139, %112, %104
  %141 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %142 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 2
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %176

148:                                              ; preds = %140
  %149 = load %struct.sci_port_configuration_agent*, %struct.sci_port_configuration_agent** %5, align 8
  %150 = getelementptr inbounds %struct.sci_port_configuration_agent, %struct.sci_port_configuration_agent* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 3
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %156, label %176

156:                                              ; preds = %148
  %157 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %158 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = call i32 @sci_phy_get_sas_address(i32* %160, %struct.sci_sas_address* %6)
  %162 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %163 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  %166 = call i32 @sci_phy_get_sas_address(i32* %165, %struct.sci_sas_address* %7)
  %167 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %6, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.sci_sas_address, %struct.sci_sas_address* %7, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @sci_sas_address_compare(i32 %168, i32 %170)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %156
  %174 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 4
  store i32 %174, i32* %3, align 4
  br label %178

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175, %148, %140
  %177 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %173, %137, %102, %83, %73, %39
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @sci_phy_get_sas_address(i32*, %struct.sci_sas_address*) #1

declare dso_local i64 @sci_sas_address_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
