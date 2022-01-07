; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_pcmcia_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_pcmcia_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.soc_pcmcia_socket = type { %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__, i32*, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_17__, i32, i64, i32*, i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, {}* }

@dead_socket = common dso_local global i32 0, align 4
@soc_common_pcmcia_poll_event = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SOC_PCMCIA_POLL_PERIOD = common dso_local global i64 0, align 8
@iomem_resource = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_common_pcmcia_operations = common dso_local global i32 0, align 4
@SS_CAP_STATIC_MAP = common dso_local global i32 0, align 4
@SS_CAP_PCCARD = common dso_local global i32 0, align 4
@pccard_static_ops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@dev_attr_status = common dso_local global i32 0, align 4
@CPUFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4
@soc_common_pcmcia_cpufreq_nb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soc_pcmcia_add_one(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %5 = load i32, i32* @dead_socket, align 4
  %6 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %7 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %6, i32 0, i32 10
  store i32 %5, i32* %7, align 4
  %8 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %9 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %8, i32 0, i32 6
  %10 = load i32, i32* @soc_common_pcmcia_poll_event, align 4
  %11 = call i32 @timer_setup(%struct.TYPE_14__* %9, i32 %10, i32 0)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* @SOC_PCMCIA_POLL_PERIOD, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %16 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %19 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %18, i32 0, i32 0
  %20 = call i32 @request_resource(%struct.TYPE_15__* @iomem_resource, %struct.TYPE_15__* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %158

24:                                               ; preds = %1
  %25 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %26 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %25, i32 0, i32 0
  %27 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %28 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %27, i32 0, i32 1
  %29 = call i32 @request_resource(%struct.TYPE_15__* %26, %struct.TYPE_15__* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %154

33:                                               ; preds = %24
  %34 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %35 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %34, i32 0, i32 0
  %36 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %37 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %36, i32 0, i32 2
  %38 = call i32 @request_resource(%struct.TYPE_15__* %35, %struct.TYPE_15__* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %150

42:                                               ; preds = %33
  %43 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %44 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %43, i32 0, i32 0
  %45 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %46 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %45, i32 0, i32 3
  %47 = call i32 @request_resource(%struct.TYPE_15__* %44, %struct.TYPE_15__* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %146

51:                                               ; preds = %42
  %52 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %53 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @ioremap(i32 %55, i32 65536)
  %57 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %58 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %57, i32 0, i32 4
  store i32* %56, i32** %58, align 8
  %59 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %60 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %142

66:                                               ; preds = %51
  %67 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %68 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %67, i32 0, i32 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = bitcast {}** %70 to i32 (%struct.soc_pcmcia_socket*)**
  %72 = load i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)** %71, align 8
  %73 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %74 = call i32 %72(%struct.soc_pcmcia_socket* %73)
  %75 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %76 = call i32 @soc_pcmcia_hw_init(%struct.soc_pcmcia_socket* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %137

80:                                               ; preds = %66
  %81 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %82 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 6
  store i32* @soc_common_pcmcia_operations, i32** %83, align 8
  %84 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %85 = load i32, i32* @SS_CAP_PCCARD, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %88 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %91 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 5
  store i32* @pccard_static_ops, i32** %92, align 8
  %93 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %94 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %98 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %101 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = ptrtoint i32* %102 to i64
  %104 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %105 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i64 %103, i64* %106, align 8
  %107 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %108 = call i32 @soc_common_pcmcia_skt_state(%struct.soc_pcmcia_socket* %107)
  %109 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %110 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 8
  %111 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %112 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %111, i32 0, i32 5
  %113 = call i32 @pcmcia_register_socket(%struct.TYPE_16__* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %80
  br label %134

117:                                              ; preds = %80
  %118 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %119 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = call i32 @device_create_file(%struct.TYPE_17__* %120, i32* @dev_attr_status)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %160

127:                                              ; preds = %124
  %128 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %129 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %128, i32 0, i32 6
  %130 = call i32 @del_timer_sync(%struct.TYPE_14__* %129)
  %131 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %132 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %131, i32 0, i32 5
  %133 = call i32 @pcmcia_unregister_socket(%struct.TYPE_16__* %132)
  br label %134

134:                                              ; preds = %127, %116
  %135 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %136 = call i32 @soc_pcmcia_hw_shutdown(%struct.soc_pcmcia_socket* %135)
  br label %137

137:                                              ; preds = %134, %79
  %138 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %139 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @iounmap(i32* %140)
  br label %142

142:                                              ; preds = %137, %63
  %143 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %144 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %143, i32 0, i32 3
  %145 = call i32 @release_resource(%struct.TYPE_15__* %144)
  br label %146

146:                                              ; preds = %142, %50
  %147 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %148 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %147, i32 0, i32 2
  %149 = call i32 @release_resource(%struct.TYPE_15__* %148)
  br label %150

150:                                              ; preds = %146, %41
  %151 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %152 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %151, i32 0, i32 1
  %153 = call i32 @release_resource(%struct.TYPE_15__* %152)
  br label %154

154:                                              ; preds = %150, %32
  %155 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %156 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %155, i32 0, i32 0
  %157 = call i32 @release_resource(%struct.TYPE_15__* %156)
  br label %158

158:                                              ; preds = %154, %23
  %159 = load i32, i32* %4, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %125
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @timer_setup(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @request_resource(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @soc_pcmcia_hw_init(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @soc_common_pcmcia_skt_state(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @pcmcia_register_socket(%struct.TYPE_16__*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_14__*) #1

declare dso_local i32 @pcmcia_unregister_socket(%struct.TYPE_16__*) #1

declare dso_local i32 @soc_pcmcia_hw_shutdown(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
