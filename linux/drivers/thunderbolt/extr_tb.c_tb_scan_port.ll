; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_scan_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_scan_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { %struct.TYPE_5__*, %struct.tb_port*, i32*, %struct.TYPE_6__*, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.tb_cm = type { i32 }
%struct.tb_switch = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"DP adapter HPD set, queuing hotplug\0A\00", align 1
@TB_TYPE_PORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"port already has a remote\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_port*)* @tb_scan_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_scan_port(%struct.tb_port* %0) #0 {
  %2 = alloca %struct.tb_port*, align 8
  %3 = alloca %struct.tb_cm*, align 8
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca %struct.tb_switch*, align 8
  store %struct.tb_port* %0, %struct.tb_port** %2, align 8
  %6 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %7 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tb_cm* @tb_priv(i32 %10)
  store %struct.tb_cm* %11, %struct.tb_cm** %3, align 8
  %12 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %13 = call i64 @tb_is_upstream_port(%struct.tb_port* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %179

16:                                               ; preds = %1
  %17 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %18 = call i64 @tb_port_is_dpout(%struct.tb_port* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %22 = call i32 @tb_dp_port_hpd_is_active(%struct.tb_port* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %26 = call i32 @tb_dp_port_is_enabled(%struct.tb_port* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %30 = call i32 @tb_port_dbg(%struct.tb_port* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %32 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %37 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @tb_route(%struct.TYPE_6__* %38)
  %40 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %41 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @tb_queue_hotplug(i32 %35, i32 %39, i32 %42, i32 0)
  br label %179

44:                                               ; preds = %24, %20, %16
  %45 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %46 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TB_TYPE_PORT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %179

52:                                               ; preds = %44
  %53 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %54 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %59 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %179

63:                                               ; preds = %57, %52
  %64 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %65 = call i64 @tb_wait_for_port(%struct.tb_port* %64, i32 0)
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %179

68:                                               ; preds = %63
  %69 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %70 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %69, i32 0, i32 1
  %71 = load %struct.tb_port*, %struct.tb_port** %70, align 8
  %72 = icmp ne %struct.tb_port* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %75 = call i32 @tb_port_dbg(%struct.tb_port* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %179

76:                                               ; preds = %68
  %77 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %78 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %83 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %87 = call i32 @tb_downstream_route(%struct.tb_port* %86)
  %88 = call %struct.tb_switch* @tb_switch_alloc(i32 %81, i32* %85, i32 %87)
  store %struct.tb_switch* %88, %struct.tb_switch** %5, align 8
  %89 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %90 = call i64 @IS_ERR(%struct.tb_switch* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %76
  %93 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %94 = call i32 @PTR_ERR(%struct.tb_switch* %93)
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %100 = call i32 @PTR_ERR(%struct.tb_switch* %99)
  %101 = load i32, i32* @EADDRNOTAVAIL, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98, %92
  %105 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %106 = call i32 @tb_scan_xdomain(%struct.tb_port* %105)
  br label %107

107:                                              ; preds = %104, %98
  br label %179

108:                                              ; preds = %76
  %109 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %110 = call i64 @tb_switch_configure(%struct.tb_switch* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %114 = call i32 @tb_switch_put(%struct.tb_switch* %113)
  br label %179

115:                                              ; preds = %108
  %116 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %117 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %122 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @tb_xdomain_remove(i32* %123)
  %125 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %126 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %125, i32 0, i32 2
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %120, %115
  %128 = load %struct.tb_cm*, %struct.tb_cm** %3, align 8
  %129 = getelementptr inbounds %struct.tb_cm, %struct.tb_cm* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %134 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %133, i32 0, i32 0
  %135 = call i32 @dev_set_uevent_suppress(i32* %134, i32 1)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %138 = call i64 @tb_switch_add(%struct.tb_switch* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %142 = call i32 @tb_switch_put(%struct.tb_switch* %141)
  br label %179

143:                                              ; preds = %136
  %144 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %145 = call %struct.tb_port* @tb_upstream_port(%struct.tb_switch* %144)
  store %struct.tb_port* %145, %struct.tb_port** %4, align 8
  %146 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %147 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %148 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %147, i32 0, i32 1
  store %struct.tb_port* %146, %struct.tb_port** %148, align 8
  %149 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %150 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %151 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %150, i32 0, i32 1
  store %struct.tb_port* %149, %struct.tb_port** %151, align 8
  %152 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %153 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = icmp ne %struct.TYPE_5__* %154, null
  br i1 %155, label %156, label %176

156:                                              ; preds = %143
  %157 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %158 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = icmp ne %struct.TYPE_5__* %159, null
  br i1 %160, label %161, label %176

161:                                              ; preds = %156
  %162 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %163 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %166 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store %struct.TYPE_5__* %164, %struct.TYPE_5__** %168, align 8
  %169 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %170 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %169, i32 0, i32 0
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %173 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %172, i32 0, i32 0
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  store %struct.TYPE_5__* %171, %struct.TYPE_5__** %175, align 8
  br label %176

176:                                              ; preds = %161, %156, %143
  %177 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %178 = call i32 @tb_scan_switch(%struct.tb_switch* %177)
  br label %179

179:                                              ; preds = %176, %140, %112, %107, %73, %67, %62, %51, %28, %15
  ret void
}

declare dso_local %struct.tb_cm* @tb_priv(i32) #1

declare dso_local i64 @tb_is_upstream_port(%struct.tb_port*) #1

declare dso_local i64 @tb_port_is_dpout(%struct.tb_port*) #1

declare dso_local i32 @tb_dp_port_hpd_is_active(%struct.tb_port*) #1

declare dso_local i32 @tb_dp_port_is_enabled(%struct.tb_port*) #1

declare dso_local i32 @tb_port_dbg(%struct.tb_port*, i8*) #1

declare dso_local i32 @tb_queue_hotplug(i32, i32, i32, i32) #1

declare dso_local i32 @tb_route(%struct.TYPE_6__*) #1

declare dso_local i64 @tb_wait_for_port(%struct.tb_port*, i32) #1

declare dso_local %struct.tb_switch* @tb_switch_alloc(i32, i32*, i32) #1

declare dso_local i32 @tb_downstream_route(%struct.tb_port*) #1

declare dso_local i64 @IS_ERR(%struct.tb_switch*) #1

declare dso_local i32 @PTR_ERR(%struct.tb_switch*) #1

declare dso_local i32 @tb_scan_xdomain(%struct.tb_port*) #1

declare dso_local i64 @tb_switch_configure(%struct.tb_switch*) #1

declare dso_local i32 @tb_switch_put(%struct.tb_switch*) #1

declare dso_local i32 @tb_xdomain_remove(i32*) #1

declare dso_local i32 @dev_set_uevent_suppress(i32*, i32) #1

declare dso_local i64 @tb_switch_add(%struct.tb_switch*) #1

declare dso_local %struct.tb_port* @tb_upstream_port(%struct.tb_switch*) #1

declare dso_local i32 @tb_scan_switch(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
